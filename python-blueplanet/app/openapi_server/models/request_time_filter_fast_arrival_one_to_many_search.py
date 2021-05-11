# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model_ import Model
from app.openapi_server.models.request_arrival_time_period import RequestArrivalTimePeriod  # noqa: F401,E501
from app.openapi_server.models.request_time_filter_fast_property import RequestTimeFilterFastProperty  # noqa: F401,E501
from app.openapi_server.models.request_transportation_fast import RequestTransportationFast  # noqa: F401,E501
from openapi_server import util


class RequestTimeFilterFastArrivalOneToManySearch(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, id: str=None, departure_location_id: str=None, arrival_location_ids: List[str]=None, transportation: RequestTransportationFast=None, travel_time: int=None, arrival_time_period: RequestArrivalTimePeriod=None, properties: List[RequestTimeFilterFastProperty]=None):  # noqa: E501
        """RequestTimeFilterFastArrivalOneToManySearch - a model defined in Swagger

        :param id: The id of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type id: str
        :param departure_location_id: The departure_location_id of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type departure_location_id: str
        :param arrival_location_ids: The arrival_location_ids of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type arrival_location_ids: List[str]
        :param transportation: The transportation of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type transportation: RequestTransportationFast
        :param travel_time: The travel_time of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type travel_time: int
        :param arrival_time_period: The arrival_time_period of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type arrival_time_period: RequestArrivalTimePeriod
        :param properties: The properties of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :type properties: List[RequestTimeFilterFastProperty]
        """
        self.swagger_types = {
            'id': str,
            'departure_location_id': str,
            'arrival_location_ids': List[str],
            'transportation': RequestTransportationFast,
            'travel_time': int,
            'arrival_time_period': RequestArrivalTimePeriod,
            'properties': List[RequestTimeFilterFastProperty]
        }

        self.attribute_map = {
            'id': 'id',
            'departure_location_id': 'departure_location_id',
            'arrival_location_ids': 'arrival_location_ids',
            'transportation': 'transportation',
            'travel_time': 'travel_time',
            'arrival_time_period': 'arrival_time_period',
            'properties': 'properties'
        }

        self._id = id
        self._departure_location_id = departure_location_id
        self._arrival_location_ids = arrival_location_ids
        self._transportation = transportation
        self._travel_time = travel_time
        self._arrival_time_period = arrival_time_period
        self._properties = properties

    @classmethod
    def from_dict(cls, dikt) -> 'RequestTimeFilterFastArrivalOneToManySearch':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The RequestTimeFilterFastArrivalOneToManySearch of this RequestTimeFilterFastArrivalOneToManySearch.  # noqa: E501
        :rtype: RequestTimeFilterFastArrivalOneToManySearch
        """
        return util.deserialize_model(dikt, cls)

    @property
    def id(self) -> str:
        """Gets the id of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The id of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this RequestTimeFilterFastArrivalOneToManySearch.


        :param id: The id of this RequestTimeFilterFastArrivalOneToManySearch.
        :type id: str
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def departure_location_id(self) -> str:
        """Gets the departure_location_id of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The departure_location_id of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: str
        """
        return self._departure_location_id

    @departure_location_id.setter
    def departure_location_id(self, departure_location_id: str):
        """Sets the departure_location_id of this RequestTimeFilterFastArrivalOneToManySearch.


        :param departure_location_id: The departure_location_id of this RequestTimeFilterFastArrivalOneToManySearch.
        :type departure_location_id: str
        """
        if departure_location_id is None:
            raise ValueError("Invalid value for `departure_location_id`, must not be `None`")  # noqa: E501

        self._departure_location_id = departure_location_id

    @property
    def arrival_location_ids(self) -> List[str]:
        """Gets the arrival_location_ids of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The arrival_location_ids of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: List[str]
        """
        return self._arrival_location_ids

    @arrival_location_ids.setter
    def arrival_location_ids(self, arrival_location_ids: List[str]):
        """Sets the arrival_location_ids of this RequestTimeFilterFastArrivalOneToManySearch.


        :param arrival_location_ids: The arrival_location_ids of this RequestTimeFilterFastArrivalOneToManySearch.
        :type arrival_location_ids: List[str]
        """
        if arrival_location_ids is None:
            raise ValueError("Invalid value for `arrival_location_ids`, must not be `None`")  # noqa: E501
        if arrival_location_ids is not None and len(arrival_location_ids) > 100000:
            raise ValueError("Invalid value for `arrival_location_ids`, number of items must be less than or equal to `100000`")  # noqa: E501
        if arrival_location_ids is not None and len(arrival_location_ids) < 1:
            raise ValueError("Invalid value for `arrival_location_ids`, number of items must be greater than or equal to `1`")  # noqa: E501

        self._arrival_location_ids = arrival_location_ids

    @property
    def transportation(self) -> RequestTransportationFast:
        """Gets the transportation of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The transportation of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: RequestTransportationFast
        """
        return self._transportation

    @transportation.setter
    def transportation(self, transportation: RequestTransportationFast):
        """Sets the transportation of this RequestTimeFilterFastArrivalOneToManySearch.


        :param transportation: The transportation of this RequestTimeFilterFastArrivalOneToManySearch.
        :type transportation: RequestTransportationFast
        """
        if transportation is None:
            raise ValueError("Invalid value for `transportation`, must not be `None`")  # noqa: E501

        self._transportation = transportation

    @property
    def travel_time(self) -> int:
        """Gets the travel_time of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The travel_time of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: int
        """
        return self._travel_time

    @travel_time.setter
    def travel_time(self, travel_time: int):
        """Sets the travel_time of this RequestTimeFilterFastArrivalOneToManySearch.


        :param travel_time: The travel_time of this RequestTimeFilterFastArrivalOneToManySearch.
        :type travel_time: int
        """
        if travel_time is None:
            raise ValueError("Invalid value for `travel_time`, must not be `None`")  # noqa: E501
        if travel_time is not None and travel_time > 14400:  # noqa: E501
            raise ValueError("Invalid value for `travel_time`, must be a value less than or equal to `14400`")  # noqa: E501
        if travel_time is not None and travel_time < 60:  # noqa: E501
            raise ValueError("Invalid value for `travel_time`, must be a value greater than or equal to `60`")  # noqa: E501

        self._travel_time = travel_time

    @property
    def arrival_time_period(self) -> RequestArrivalTimePeriod:
        """Gets the arrival_time_period of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The arrival_time_period of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: RequestArrivalTimePeriod
        """
        return self._arrival_time_period

    @arrival_time_period.setter
    def arrival_time_period(self, arrival_time_period: RequestArrivalTimePeriod):
        """Sets the arrival_time_period of this RequestTimeFilterFastArrivalOneToManySearch.


        :param arrival_time_period: The arrival_time_period of this RequestTimeFilterFastArrivalOneToManySearch.
        :type arrival_time_period: RequestArrivalTimePeriod
        """
        if arrival_time_period is None:
            raise ValueError("Invalid value for `arrival_time_period`, must not be `None`")  # noqa: E501

        self._arrival_time_period = arrival_time_period

    @property
    def properties(self) -> List[RequestTimeFilterFastProperty]:
        """Gets the properties of this RequestTimeFilterFastArrivalOneToManySearch.


        :return: The properties of this RequestTimeFilterFastArrivalOneToManySearch.
        :rtype: List[RequestTimeFilterFastProperty]
        """
        return self._properties

    @properties.setter
    def properties(self, properties: List[RequestTimeFilterFastProperty]):
        """Sets the properties of this RequestTimeFilterFastArrivalOneToManySearch.


        :param properties: The properties of this RequestTimeFilterFastArrivalOneToManySearch.
        :type properties: List[RequestTimeFilterFastProperty]
        """
        if properties is None:
            raise ValueError("Invalid value for `properties`, must not be `None`")  # noqa: E501

        self._properties = properties
