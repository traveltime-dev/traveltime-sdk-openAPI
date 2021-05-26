# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class RequestTransportation(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, type=None, disable_border_crossing=None, pt_change_delay=None, walking_time=None, driving_time_to_station=None, cycling_time_to_station=None, parking_time=None, boarding_time=None):  # noqa: E501
        """RequestTransportation - a model defined in OpenAPI

        :param type: The type of this RequestTransportation.  # noqa: E501
        :type type: str
        :param disable_border_crossing: The disable_border_crossing of this RequestTransportation.  # noqa: E501
        :type disable_border_crossing: bool
        :param pt_change_delay: The pt_change_delay of this RequestTransportation.  # noqa: E501
        :type pt_change_delay: int
        :param walking_time: The walking_time of this RequestTransportation.  # noqa: E501
        :type walking_time: int
        :param driving_time_to_station: The driving_time_to_station of this RequestTransportation.  # noqa: E501
        :type driving_time_to_station: int
        :param cycling_time_to_station: The cycling_time_to_station of this RequestTransportation.  # noqa: E501
        :type cycling_time_to_station: int
        :param parking_time: The parking_time of this RequestTransportation.  # noqa: E501
        :type parking_time: int
        :param boarding_time: The boarding_time of this RequestTransportation.  # noqa: E501
        :type boarding_time: int
        """
        self.openapi_types = {
            'type': str,
            'disable_border_crossing': bool,
            'pt_change_delay': int,
            'walking_time': int,
            'driving_time_to_station': int,
            'cycling_time_to_station': int,
            'parking_time': int,
            'boarding_time': int
        }

        self.attribute_map = {
            'type': 'type',
            'disable_border_crossing': 'disable_border_crossing',
            'pt_change_delay': 'pt_change_delay',
            'walking_time': 'walking_time',
            'driving_time_to_station': 'driving_time_to_station',
            'cycling_time_to_station': 'cycling_time_to_station',
            'parking_time': 'parking_time',
            'boarding_time': 'boarding_time'
        }

        self._type = type
        self._disable_border_crossing = disable_border_crossing
        self._pt_change_delay = pt_change_delay
        self._walking_time = walking_time
        self._driving_time_to_station = driving_time_to_station
        self._cycling_time_to_station = cycling_time_to_station
        self._parking_time = parking_time
        self._boarding_time = boarding_time

    @classmethod
    def from_dict(cls, dikt) -> 'RequestTransportation':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The RequestTransportation of this RequestTransportation.  # noqa: E501
        :rtype: RequestTransportation
        """
        return util.deserialize_model(dikt, cls)

    @property
    def type(self):
        """Gets the type of this RequestTransportation.


        :return: The type of this RequestTransportation.
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """Sets the type of this RequestTransportation.


        :param type: The type of this RequestTransportation.
        :type type: str
        """
        allowed_values = ["cycling", "driving", "driving+train", "public_transport", "walking", "coach", "bus", "train", "ferry", "driving+ferry", "cycling+ferry"]  # noqa: E501
        if type not in allowed_values:
            raise ValueError(
                "Invalid value for `type` ({0}), must be one of {1}"
                .format(type, allowed_values)
            )

        self._type = type

    @property
    def disable_border_crossing(self):
        """Gets the disable_border_crossing of this RequestTransportation.


        :return: The disable_border_crossing of this RequestTransportation.
        :rtype: bool
        """
        return self._disable_border_crossing

    @disable_border_crossing.setter
    def disable_border_crossing(self, disable_border_crossing):
        """Sets the disable_border_crossing of this RequestTransportation.


        :param disable_border_crossing: The disable_border_crossing of this RequestTransportation.
        :type disable_border_crossing: bool
        """

        self._disable_border_crossing = disable_border_crossing

    @property
    def pt_change_delay(self):
        """Gets the pt_change_delay of this RequestTransportation.


        :return: The pt_change_delay of this RequestTransportation.
        :rtype: int
        """
        return self._pt_change_delay

    @pt_change_delay.setter
    def pt_change_delay(self, pt_change_delay):
        """Sets the pt_change_delay of this RequestTransportation.


        :param pt_change_delay: The pt_change_delay of this RequestTransportation.
        :type pt_change_delay: int
        """

        self._pt_change_delay = pt_change_delay

    @property
    def walking_time(self):
        """Gets the walking_time of this RequestTransportation.


        :return: The walking_time of this RequestTransportation.
        :rtype: int
        """
        return self._walking_time

    @walking_time.setter
    def walking_time(self, walking_time):
        """Sets the walking_time of this RequestTransportation.


        :param walking_time: The walking_time of this RequestTransportation.
        :type walking_time: int
        """

        self._walking_time = walking_time

    @property
    def driving_time_to_station(self):
        """Gets the driving_time_to_station of this RequestTransportation.


        :return: The driving_time_to_station of this RequestTransportation.
        :rtype: int
        """
        return self._driving_time_to_station

    @driving_time_to_station.setter
    def driving_time_to_station(self, driving_time_to_station):
        """Sets the driving_time_to_station of this RequestTransportation.


        :param driving_time_to_station: The driving_time_to_station of this RequestTransportation.
        :type driving_time_to_station: int
        """

        self._driving_time_to_station = driving_time_to_station

    @property
    def cycling_time_to_station(self):
        """Gets the cycling_time_to_station of this RequestTransportation.


        :return: The cycling_time_to_station of this RequestTransportation.
        :rtype: int
        """
        return self._cycling_time_to_station

    @cycling_time_to_station.setter
    def cycling_time_to_station(self, cycling_time_to_station):
        """Sets the cycling_time_to_station of this RequestTransportation.


        :param cycling_time_to_station: The cycling_time_to_station of this RequestTransportation.
        :type cycling_time_to_station: int
        """

        self._cycling_time_to_station = cycling_time_to_station

    @property
    def parking_time(self):
        """Gets the parking_time of this RequestTransportation.


        :return: The parking_time of this RequestTransportation.
        :rtype: int
        """
        return self._parking_time

    @parking_time.setter
    def parking_time(self, parking_time):
        """Sets the parking_time of this RequestTransportation.


        :param parking_time: The parking_time of this RequestTransportation.
        :type parking_time: int
        """

        self._parking_time = parking_time

    @property
    def boarding_time(self):
        """Gets the boarding_time of this RequestTransportation.


        :return: The boarding_time of this RequestTransportation.
        :rtype: int
        """
        return self._boarding_time

    @boarding_time.setter
    def boarding_time(self, boarding_time):
        """Sets the boarding_time of this RequestTransportation.


        :param boarding_time: The boarding_time of this RequestTransportation.
        :type boarding_time: int
        """

        self._boarding_time = boarding_time
