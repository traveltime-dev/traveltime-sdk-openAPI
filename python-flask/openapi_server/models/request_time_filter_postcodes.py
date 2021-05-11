# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.request_time_filter_postcodes_arrival_search import RequestTimeFilterPostcodesArrivalSearch
from openapi_server.models.request_time_filter_postcodes_departure_search import RequestTimeFilterPostcodesDepartureSearch
from openapi_server import util

from openapi_server.models.request_time_filter_postcodes_arrival_search import RequestTimeFilterPostcodesArrivalSearch  # noqa: E501
from openapi_server.models.request_time_filter_postcodes_departure_search import RequestTimeFilterPostcodesDepartureSearch  # noqa: E501

class RequestTimeFilterPostcodes(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, departure_searches=None, arrival_searches=None):  # noqa: E501
        """RequestTimeFilterPostcodes - a model defined in OpenAPI

        :param departure_searches: The departure_searches of this RequestTimeFilterPostcodes.  # noqa: E501
        :type departure_searches: List[RequestTimeFilterPostcodesDepartureSearch]
        :param arrival_searches: The arrival_searches of this RequestTimeFilterPostcodes.  # noqa: E501
        :type arrival_searches: List[RequestTimeFilterPostcodesArrivalSearch]
        """
        self.openapi_types = {
            'departure_searches': List[RequestTimeFilterPostcodesDepartureSearch],
            'arrival_searches': List[RequestTimeFilterPostcodesArrivalSearch]
        }

        self.attribute_map = {
            'departure_searches': 'departure_searches',
            'arrival_searches': 'arrival_searches'
        }

        self._departure_searches = departure_searches
        self._arrival_searches = arrival_searches

    @classmethod
    def from_dict(cls, dikt) -> 'RequestTimeFilterPostcodes':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The RequestTimeFilterPostcodes of this RequestTimeFilterPostcodes.  # noqa: E501
        :rtype: RequestTimeFilterPostcodes
        """
        return util.deserialize_model(dikt, cls)

    @property
    def departure_searches(self):
        """Gets the departure_searches of this RequestTimeFilterPostcodes.


        :return: The departure_searches of this RequestTimeFilterPostcodes.
        :rtype: List[RequestTimeFilterPostcodesDepartureSearch]
        """
        return self._departure_searches

    @departure_searches.setter
    def departure_searches(self, departure_searches):
        """Sets the departure_searches of this RequestTimeFilterPostcodes.


        :param departure_searches: The departure_searches of this RequestTimeFilterPostcodes.
        :type departure_searches: List[RequestTimeFilterPostcodesDepartureSearch]
        """
        if departure_searches is not None and len(departure_searches) > 10:
            raise ValueError("Invalid value for `departure_searches`, number of items must be less than or equal to `10`")  # noqa: E501

        self._departure_searches = departure_searches

    @property
    def arrival_searches(self):
        """Gets the arrival_searches of this RequestTimeFilterPostcodes.


        :return: The arrival_searches of this RequestTimeFilterPostcodes.
        :rtype: List[RequestTimeFilterPostcodesArrivalSearch]
        """
        return self._arrival_searches

    @arrival_searches.setter
    def arrival_searches(self, arrival_searches):
        """Sets the arrival_searches of this RequestTimeFilterPostcodes.


        :param arrival_searches: The arrival_searches of this RequestTimeFilterPostcodes.
        :type arrival_searches: List[RequestTimeFilterPostcodesArrivalSearch]
        """
        if arrival_searches is not None and len(arrival_searches) > 10:
            raise ValueError("Invalid value for `arrival_searches`, number of items must be less than or equal to `10`")  # noqa: E501

        self._arrival_searches = arrival_searches
