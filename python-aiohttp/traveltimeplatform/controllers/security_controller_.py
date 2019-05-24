from typing import List


def info_from_ApiKey(api_key: str, required_scopes: None) -> dict:
    """
    Check and retrieve authentication information from api_key.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.
    Should return None if api_key is invalid or does not allow access to called API.
    """
    return {'uid': 'user_id'}


def info_from_ApplicationId(api_key: str, required_scopes: None) -> dict:
    """
    Check and retrieve authentication information from api_key.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.
    Should return None if api_key is invalid or does not allow access to called API.
    """
    return {'uid': 'user_id'}


