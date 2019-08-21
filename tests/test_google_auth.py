import time

import requests_mock
from freezegun import freeze_time

from flirror.crawler.google_auth import GoogleOAuth
from flirror.database import get_object_by_key


@freeze_time("2019-08-21 00:00:00")
def test_refresh_access_token(mock_google_env, mock_database):
    goauth = GoogleOAuth(scopes=[])
    with requests_mock.mock() as m:
        m.post(
            goauth.GOOGLE_OAUTH_POLL_URL,
            json={
                "access_token": "some_access_token",
                "expires_in": 3600,
                "scope": "https://www.googleapis.com/auth/calendar.readonly",
                "token_type": "Bearer",
            },
        )

        access_token = goauth.refresh_access_token("refresh_token")

        assert access_token == "some_access_token"
        # Ensure that the request parameters were build correctly
        # TODO (felix): Could we also validate the request's data attribute
        # directly, rather than the concatenated text?
        assert m.last_request.text == (
            "client_id=test_client_id"
            "&client_secret=test_client_secret"
            "&refresh_token=refresh_token"
            "&grant_type=refresh_token"
        )

        # Ensure that the token was stored in the database with the correct
        # expiration time relative to now
        stored_token = get_object_by_key("google_oauth_token")
        assert stored_token == {
            "access_token": "some_access_token",
            "expires_in": time.time() + 3600,
            "refresh_token": "refresh_token",
            "scope": "https://www.googleapis.com/auth/calendar.readonly",
            "token_type": "Bearer",
        }
