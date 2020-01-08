import logging
import time
from datetime import datetime

from schedule import Scheduler

from flirror.exceptions import CrawlerDataError
from flirror.utils import parse_interval_string


INTERVAL_METHODS = {"s": "seconds", "m": "minutes", "h": "hours"}

LOGGER = logging.getLogger(__name__)


class SafeScheduler(Scheduler):
    """
    An implementation of Scheduler that catches jobs that fail, logs their
    exception tracebacks as errors, optionally reschedules the jobs for their
    next run time, and keeps going.
    Use this to run jobs that may or may not crash without worrying about
    whether other jobs will run or if they'll crash the entire script.

    Taken from: https://gist.github.com/mplewis/8483f1c24f2d6259aef6
    on suggestion of https://schedule.readthedocs.io/en/stable/faq.html#what-if-my-task-throws-an-exception

    In addition, it provides some method to create jobs based on a crawler configuration.
    """

    def __init__(self, reschedule_on_failure=True):
        """
        If reschedule_on_failure is True, jobs will be rescheduled for their
        next run as if they had completed successfully. If False, they'll run
        on the next run_pending() tick.
        """
        self.reschedule_on_failure = reschedule_on_failure
        super().__init__()

    def _run_job(self, job):
        # TODO (felix): Use threads for parallel execution?
        # https://schedule.readthedocs.io/en/stable/faq.html#how-to-execute-jobs-in-parallel
        try:
            # TODO (felix): Implement an exponential backoff, that lowers the frequency
            # in which the job is executed in case if failed until it's successful again.
            super()._run_job(job)
        except Exception:
            LOGGER.exception("Job execution failed")
            job.last_run = datetime.now()
            job._schedule_next_run()

    def add_job(self, crawler):
        # Get interval from crawler config, parse it and call appropriate methods
        # in the schedule module

        interval, unit = parse_interval_string(crawler.interval)
        LOGGER.info(
            "Adding job for crawler '%s' with interval '%s'",
            crawler.id,
            crawler.interval,
        )
        unit_method = INTERVAL_METHODS.get(unit)
        if unit_method is None:
            LOGGER.error(
                "Invalid interval '%s'. Could not find appropriate scheduling "
                "method.",
                crawler.interval,
            )
            return

        self._add_job(interval, unit_method, crawler.crawl)

    def _add_job(self, interval, unit_method_name, job_to_execute):
        job = self.every(interval)
        # Add the job to the schedule
        getattr(job, unit_method_name).do(job_to_execute)

    def start(self):
        LOGGER.info("Starting scheduler")
        while True:
            try:
                self.run_pending()
            except CrawlerDataError as e:
                LOGGER.error(e)
            finally:
                time.sleep(1)
