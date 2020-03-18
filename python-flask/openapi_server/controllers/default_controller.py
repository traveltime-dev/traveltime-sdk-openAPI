import connexion
import six

from openapi_server.models.request_routes import RequestRoutes  # noqa: E501
from openapi_server.models.request_supported_locations import RequestSupportedLocations  # noqa: E501
from openapi_server.models.request_time_filter import RequestTimeFilter  # noqa: E501
from openapi_server.models.request_time_filter_fast import RequestTimeFilterFast  # noqa: E501
from openapi_server.models.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts  # noqa: E501
from openapi_server.models.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors  # noqa: E501
from openapi_server.models.request_time_filter_postcodes import RequestTimeFilterPostcodes  # noqa: E501
from openapi_server.models.request_time_map import RequestTimeMap  # noqa: E501
from openapi_server.models.response_error import ResponseError  # noqa: E501
from openapi_server.models.response_geocoding import ResponseGeocoding  # noqa: E501
from openapi_server.models.response_map_info import ResponseMapInfo  # noqa: E501
from openapi_server.models.response_routes import ResponseRoutes  # noqa: E501
from openapi_server.models.response_supported_locations import ResponseSupportedLocations  # noqa: E501
from openapi_server.models.response_time_filter import ResponseTimeFilter  # noqa: E501
from openapi_server.models.response_time_filter_fast import ResponseTimeFilterFast  # noqa: E501
from openapi_server.models.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts  # noqa: E501
from openapi_server.models.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors  # noqa: E501
from openapi_server.models.response_time_filter_postcodes import ResponseTimeFilterPostcodes  # noqa: E501
from openapi_server.models.response_time_map import ResponseTimeMap  # noqa: E501
from openapi_server import util


def geocoding_reverse_search(lat, lng, within_country=None):  # noqa: E501
    """geocoding_reverse_search

     # noqa: E501

    :param lat: 
    :type lat: float
    :param lng: 
    :type lng: float
    :param within_country: 
    :type within_country: str

    :rtype: ResponseGeocoding
    """
    return 'do some magic!'


def geocoding_search(query, focus_lat=None, focus_lng=None, within_country=None):  # noqa: E501
    """geocoding_search

     # noqa: E501

    :param query: 
    :type query: str
    :param focus_lat: 
    :type focus_lat: float
    :param focus_lng: 
    :type focus_lng: float
    :param within_country: 
    :type within_country: str

    :rtype: ResponseGeocoding
    """
    return 'do some magic!'


def map_info():  # noqa: E501
    """map_info

     # noqa: E501


    :rtype: ResponseMapInfo
    """
    return 'do some magic!'


def routes(request_routes):  # noqa: E501
    """routes

     # noqa: E501

    :param request_routes: 
    :type request_routes: dict | bytes

    :rtype: ResponseRoutes
    """
    if connexion.request.is_json:
        request_routes = RequestRoutes.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def supported_locations(request_supported_locations):  # noqa: E501
    """supported_locations

     # noqa: E501

    :param request_supported_locations: 
    :type request_supported_locations: dict | bytes

    :rtype: ResponseSupportedLocations
    """
    if connexion.request.is_json:
        request_supported_locations = RequestSupportedLocations.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_filter(request_time_filter):  # noqa: E501
    """time_filter

     # noqa: E501

    :param request_time_filter: 
    :type request_time_filter: dict | bytes

    :rtype: ResponseTimeFilter
    """
    if connexion.request.is_json:
        request_time_filter = RequestTimeFilter.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_filter_fast(request_time_filter_fast):  # noqa: E501
    """time_filter_fast

     # noqa: E501

    :param request_time_filter_fast: 
    :type request_time_filter_fast: dict | bytes

    :rtype: ResponseTimeFilterFast
    """
    if connexion.request.is_json:
        request_time_filter_fast = RequestTimeFilterFast.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_filter_postcode_districts(request_time_filter_postcode_districts):  # noqa: E501
    """time_filter_postcode_districts

     # noqa: E501

    :param request_time_filter_postcode_districts: 
    :type request_time_filter_postcode_districts: dict | bytes

    :rtype: ResponseTimeFilterPostcodeDistricts
    """
    if connexion.request.is_json:
        request_time_filter_postcode_districts = RequestTimeFilterPostcodeDistricts.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_filter_postcode_sectors(request_time_filter_postcode_sectors):  # noqa: E501
    """time_filter_postcode_sectors

     # noqa: E501

    :param request_time_filter_postcode_sectors: 
    :type request_time_filter_postcode_sectors: dict | bytes

    :rtype: ResponseTimeFilterPostcodeSectors
    """
    if connexion.request.is_json:
        request_time_filter_postcode_sectors = RequestTimeFilterPostcodeSectors.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_filter_postcodes(request_time_filter_postcodes):  # noqa: E501
    """time_filter_postcodes

     # noqa: E501

    :param request_time_filter_postcodes: 
    :type request_time_filter_postcodes: dict | bytes

    :rtype: ResponseTimeFilterPostcodes
    """
    if connexion.request.is_json:
        request_time_filter_postcodes = RequestTimeFilterPostcodes.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def time_map(request_time_map):  # noqa: E501
    """time_map

     # noqa: E501

    :param request_time_map: 
    :type request_time_map: dict | bytes

    :rtype: ResponseTimeMap
    """
    if connexion.request.is_json:
        request_time_map = RequestTimeMap.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'
