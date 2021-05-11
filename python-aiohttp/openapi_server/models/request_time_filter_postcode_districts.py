# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server.models.request_time_filter_postcode_districts_arrival_search import RequestTimeFilterPostcodeDistrictsArrivalSearch
from openapi_server.models.request_time_filter_postcode_districts_departure_search import RequestTimeFilterPostcodeDistrictsDepartureSearch
from openapi_server import util


class RequestTimeFilterPostcodeDistricts(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, departure_searches: List[RequestTimeFilterPostcodeDistrictsDepartureSearch]=None, arrival_searches: List[RequestTimeFilterPostcodeDistrictsArrivalSearch]=None):
        """RequestTimeFilterPostcodeDistricts - a model defined in OpenAPI

        :param departure_searches: The departure_searches of this RequestTimeFilterPostcodeDistricts.
        :param arrival_searches: The arrival_searches of this RequestTimeFilterPostcodeDistricts.
        """
        self.openapi_types = {
            'departure_searches': List[RequestTimeFilterPostcodeDistrictsDepartureSearch],
            'arrival_searches': List[RequestTimeFilterPostcodeDistrictsArrivalSearch]
        }

        self.attribute_map = {
            'departure_searches': 'departure_searches',
            'arrival_searches': 'arrival_searches'
        }

        self._departure_searches = departure_searches
        self._arrival_searches = arrival_searches

    @classmethod
    def from_dict(cls, dikt: dict) -> 'RequestTimeFilterPostcodeDistricts':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The RequestTimeFilterPostcodeDistricts of this RequestTimeFilterPostcodeDistricts.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def departure_searches(self):
        """Gets the departure_searches of this RequestTimeFilterPostcodeDistricts.


        :return: The departure_searches of this RequestTimeFilterPostcodeDistricts.
        :rtype: List[RequestTimeFilterPostcodeDistrictsDepartureSearch]
        """
        return self._departure_searches

    @departure_searches.setter
    def departure_searches(self, departure_searches):
        """Sets the departure_searches of this RequestTimeFilterPostcodeDistricts.


        :param departure_searches: The departure_searches of this RequestTimeFilterPostcodeDistricts.
        :type departure_searches: List[RequestTimeFilterPostcodeDistrictsDepartureSearch]
        """
        if departure_searches is not None and len(departure_searches) > 10:
            raise ValueError("Invalid value for `departure_searches`, number of items must be less than or equal to `10`")

        self._departure_searches = departure_searches

    @property
    def arrival_searches(self):
        """Gets the arrival_searches of this RequestTimeFilterPostcodeDistricts.


        :return: The arrival_searches of this RequestTimeFilterPostcodeDistricts.
        :rtype: List[RequestTimeFilterPostcodeDistrictsArrivalSearch]
        """
        return self._arrival_searches

    @arrival_searches.setter
    def arrival_searches(self, arrival_searches):
        """Sets the arrival_searches of this RequestTimeFilterPostcodeDistricts.


        :param arrival_searches: The arrival_searches of this RequestTimeFilterPostcodeDistricts.
        :type arrival_searches: List[RequestTimeFilterPostcodeDistrictsArrivalSearch]
        """
        if arrival_searches is not None and len(arrival_searches) > 10:
            raise ValueError("Invalid value for `arrival_searches`, number of items must be less than or equal to `10`")

        self._arrival_searches = arrival_searches
