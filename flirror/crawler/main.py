import logging
import os

import click
from flask.config import Config

from flirror import FLIRROR_SETTINGS_ENV
from flirror.crawler.crawlers import CrawlerFactory
from flirror.crawler.scheduling import Scheduler
from flirror.database import create_database_and_entities
from flirror.exceptions import CrawlerConfigError


LOGGER = logging.getLogger(__name__)


def configure_logger(verbosity):
    # Import root logger to apply the configuration to all module loggers
    from flirror.crawler import LOGGER

    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging.DEBUG)
    log_formatter = logging.Formatter(
        "%(asctime)s %(levelname)s [%(name)s] %(message)s", datefmt="%Y-%m-%dT%H:%M:%SZ"
    )
    console_handler.setFormatter(log_formatter)

    level = getattr(logging, verbosity.upper())
    environment_level = getattr(
        logging, os.environ.get("FLIRROR_VERBOSITY", verbosity).upper()
    )

    LOGGER.setLevel(min(environment_level, level))
    LOGGER.addHandler(console_handler)


@click.group(invoke_without_command=True)
@click.option(
    "--verbosity",
    help="Set the active log level",
    default="info",
    type=click.Choice(["debug", "info", "warning", "error"]),
)
@click.pass_context
def main(ctx, verbosity):
    configure_logger(verbosity)

    # Load the configurations from file
    config = Config(root_path=".")
    # TODO Add default settings, once we have some
    # config.from_object(default_settings)
    config.from_envvar(FLIRROR_SETTINGS_ENV)

    # TODO Validate config?
    # Store everything in click's context object to be available for subcommands
    ctx.obj = {"config": config}

    if ctx.invoked_subcommand is None:
        ctx.invoke(crawl)


@click.pass_context
def crawl(ctx):
    LOGGER.info("Hello, Flirror!")

    config = ctx.obj["config"]

    # Connect to the sqlite database
    db = create_database_and_entities(
        provider="sqlite", filename=config["DATABASE_FILE"], create_db=True
    )

    # Create the crawler factory to use for initializing new crawlers
    factory = CrawlerFactory()

    # Look up crawlers from config file
    for crawler_id, crawler_config in config.get("MODULES", {}).items():
        crawler_type = crawler_config.pop("type")
        # TODO Error handling for wrong/missing keys
        LOGGER.info(
            "Initializing crawler of type '%s' with id '%s'", crawler_type, crawler_id
        )

        # Initialize the crawler
        try:
            crawler_cls = factory.get_crawler(crawler_type)
        except CrawlerConfigError:
            LOGGER.exception(
                "Could not initialize crawler '%s'. Skipping this crawler.", crawler_id
            )
            continue
        crawler = crawler_cls(crawler_id=crawler_id, database=db, **crawler_config)

        # TODO Make scheduling configurable (but use as default)
        scheduler = Scheduler()
        scheduler.add_job(crawler)

    # Finally, start the scheduler
    scheduler.start()


if __name__ == "__main__":
    main()
