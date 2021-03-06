# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server import util


class Coords(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, lat: float=None, lng: float=None):
        """Coords - a model defined in OpenAPI

        :param lat: The lat of this Coords.
        :param lng: The lng of this Coords.
        """
        self.openapi_types = {
            'lat': float,
            'lng': float
        }

        self.attribute_map = {
            'lat': 'lat',
            'lng': 'lng'
        }

        self._lat = lat
        self._lng = lng

    @classmethod
    def from_dict(cls, dikt: dict) -> 'Coords':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The Coords of this Coords.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def lat(self):
        """Gets the lat of this Coords.


        :return: The lat of this Coords.
        :rtype: float
        """
        return self._lat

    @lat.setter
    def lat(self, lat):
        """Sets the lat of this Coords.


        :param lat: The lat of this Coords.
        :type lat: float
        """
        if lat is None:
            raise ValueError("Invalid value for `lat`, must not be `None`")

        self._lat = lat

    @property
    def lng(self):
        """Gets the lng of this Coords.


        :return: The lng of this Coords.
        :rtype: float
        """
        return self._lng

    @lng.setter
    def lng(self, lng):
        """Sets the lng of this Coords.


        :param lng: The lng of this Coords.
        :type lng: float
        """
        if lng is None:
            raise ValueError("Invalid value for `lng`, must not be `None`")

        self._lng = lng
