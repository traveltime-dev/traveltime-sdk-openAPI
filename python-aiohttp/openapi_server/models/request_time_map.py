# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server.models.request_time_map_arrival_search import RequestTimeMapArrivalSearch
from openapi_server.models.request_time_map_departure_search import RequestTimeMapDepartureSearch
from openapi_server.models.request_union_on_intersection import RequestUnionOnIntersection
from openapi_server import util


class RequestTimeMap(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, departure_searches: List[RequestTimeMapDepartureSearch]=None, arrival_searches: List[RequestTimeMapArrivalSearch]=None, unions: List[RequestUnionOnIntersection]=None, intersections: List[RequestUnionOnIntersection]=None):
        """RequestTimeMap - a model defined in OpenAPI

        :param departure_searches: The departure_searches of this RequestTimeMap.
        :param arrival_searches: The arrival_searches of this RequestTimeMap.
        :param unions: The unions of this RequestTimeMap.
        :param intersections: The intersections of this RequestTimeMap.
        """
        self.openapi_types = {
            'departure_searches': List[RequestTimeMapDepartureSearch],
            'arrival_searches': List[RequestTimeMapArrivalSearch],
            'unions': List[RequestUnionOnIntersection],
            'intersections': List[RequestUnionOnIntersection]
        }

        self.attribute_map = {
            'departure_searches': 'departure_searches',
            'arrival_searches': 'arrival_searches',
            'unions': 'unions',
            'intersections': 'intersections'
        }

        self._departure_searches = departure_searches
        self._arrival_searches = arrival_searches
        self._unions = unions
        self._intersections = intersections

    @classmethod
    def from_dict(cls, dikt: dict) -> 'RequestTimeMap':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The RequestTimeMap of this RequestTimeMap.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def departure_searches(self):
        """Gets the departure_searches of this RequestTimeMap.


        :return: The departure_searches of this RequestTimeMap.
        :rtype: List[RequestTimeMapDepartureSearch]
        """
        return self._departure_searches

    @departure_searches.setter
    def departure_searches(self, departure_searches):
        """Sets the departure_searches of this RequestTimeMap.


        :param departure_searches: The departure_searches of this RequestTimeMap.
        :type departure_searches: List[RequestTimeMapDepartureSearch]
        """
        if departure_searches is not None and len(departure_searches) > 10:
            raise ValueError("Invalid value for `departure_searches`, number of items must be less than or equal to `10`")

        self._departure_searches = departure_searches

    @property
    def arrival_searches(self):
        """Gets the arrival_searches of this RequestTimeMap.


        :return: The arrival_searches of this RequestTimeMap.
        :rtype: List[RequestTimeMapArrivalSearch]
        """
        return self._arrival_searches

    @arrival_searches.setter
    def arrival_searches(self, arrival_searches):
        """Sets the arrival_searches of this RequestTimeMap.


        :param arrival_searches: The arrival_searches of this RequestTimeMap.
        :type arrival_searches: List[RequestTimeMapArrivalSearch]
        """
        if arrival_searches is not None and len(arrival_searches) > 10:
            raise ValueError("Invalid value for `arrival_searches`, number of items must be less than or equal to `10`")

        self._arrival_searches = arrival_searches

    @property
    def unions(self):
        """Gets the unions of this RequestTimeMap.


        :return: The unions of this RequestTimeMap.
        :rtype: List[RequestUnionOnIntersection]
        """
        return self._unions

    @unions.setter
    def unions(self, unions):
        """Sets the unions of this RequestTimeMap.


        :param unions: The unions of this RequestTimeMap.
        :type unions: List[RequestUnionOnIntersection]
        """
        if unions is not None and len(unions) > 10:
            raise ValueError("Invalid value for `unions`, number of items must be less than or equal to `10`")

        self._unions = unions

    @property
    def intersections(self):
        """Gets the intersections of this RequestTimeMap.


        :return: The intersections of this RequestTimeMap.
        :rtype: List[RequestUnionOnIntersection]
        """
        return self._intersections

    @intersections.setter
    def intersections(self, intersections):
        """Sets the intersections of this RequestTimeMap.


        :param intersections: The intersections of this RequestTimeMap.
        :type intersections: List[RequestUnionOnIntersection]
        """
        if intersections is not None and len(intersections) > 10:
            raise ValueError("Invalid value for `intersections`, number of items must be less than or equal to `10`")

        self._intersections = intersections
