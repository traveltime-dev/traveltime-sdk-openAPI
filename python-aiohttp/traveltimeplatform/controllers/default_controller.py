from typing import List, Dict
from aiohttp import web

from traveltimeplatform.models.request_routes import RequestRoutes
from traveltimeplatform.models.request_supported_locations import RequestSupportedLocations
from traveltimeplatform.models.request_time_filter import RequestTimeFilter
from traveltimeplatform.models.request_time_filter_fast import RequestTimeFilterFast
from traveltimeplatform.models.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts
from traveltimeplatform.models.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors
from traveltimeplatform.models.request_time_filter_postcodes import RequestTimeFilterPostcodes
from traveltimeplatform.models.request_time_map import RequestTimeMap
from traveltimeplatform.models.response_error import ResponseError
from traveltimeplatform.models.response_geocoding import ResponseGeocoding
from traveltimeplatform.models.response_map_info import ResponseMapInfo
from traveltimeplatform.models.response_routes import ResponseRoutes
from traveltimeplatform.models.response_supported_locations import ResponseSupportedLocations
from traveltimeplatform.models.response_time_filter import ResponseTimeFilter
from traveltimeplatform.models.response_time_filter_fast import ResponseTimeFilterFast
from traveltimeplatform.models.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts
from traveltimeplatform.models.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors
from traveltimeplatform.models.response_time_filter_postcodes import ResponseTimeFilterPostcodes
from traveltimeplatform.models.response_time_map import ResponseTimeMap
from traveltimeplatform import util


async def geocoding_reverse_search(request: web.Request, focus_lat, focus_lng, within_country=None) -> web.Response:
    """geocoding_reverse_search

    

    :param focus_lat: 
    :type focus_lat: float
    :param focus_lng: 
    :type focus_lng: float
    :param within_country: 
    :type within_country: str

    """
    return web.Response(status=200)


async def geocoding_search(request: web.Request, query, within_country=None, focus_lat=None, focus_lng=None) -> web.Response:
    """geocoding_search

    

    :param query: 
    :type query: str
    :param within_country: 
    :type within_country: str
    :param focus_lat: 
    :type focus_lat: float
    :param focus_lng: 
    :type focus_lng: float

    """
    return web.Response(status=200)


async def map_info(request: web.Request, ) -> web.Response:
    """map_info

    


    """
    return web.Response(status=200)


async def routes(request: web.Request, body) -> web.Response:
    """routes

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestRoutes.from_dict(body)
    return web.Response(status=200)


async def supported_locations(request: web.Request, body) -> web.Response:
    """supported_locations

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestSupportedLocations.from_dict(body)
    return web.Response(status=200)


async def time_filter(request: web.Request, body) -> web.Response:
    """time_filter

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeFilter.from_dict(body)
    return web.Response(status=200)


async def time_filter_fast(request: web.Request, body) -> web.Response:
    """time_filter_fast

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeFilterFast.from_dict(body)
    return web.Response(status=200)


async def time_filter_postcode_districts(request: web.Request, body) -> web.Response:
    """time_filter_postcode_districts

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeFilterPostcodeDistricts.from_dict(body)
    return web.Response(status=200)


async def time_filter_postcode_sectors(request: web.Request, body) -> web.Response:
    """time_filter_postcode_sectors

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeFilterPostcodeSectors.from_dict(body)
    return web.Response(status=200)


async def time_filter_postcodes(request: web.Request, body) -> web.Response:
    """time_filter_postcodes

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeFilterPostcodes.from_dict(body)
    return web.Response(status=200)


async def time_map(request: web.Request, body) -> web.Response:
    """time_map

    

    :param body: 
    :type body: dict | bytes

    """
    body = RequestTimeMap.from_dict(body)
    return web.Response(status=200)
