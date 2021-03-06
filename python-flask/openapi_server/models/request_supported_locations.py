# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.request_location import RequestLocation
from openapi_server import util

from openapi_server.models.request_location import RequestLocation  # noqa: E501

class RequestSupportedLocations(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, locations=None):  # noqa: E501
        """RequestSupportedLocations - a model defined in OpenAPI

        :param locations: The locations of this RequestSupportedLocations.  # noqa: E501
        :type locations: List[RequestLocation]
        """
        self.openapi_types = {
            'locations': List[RequestLocation]
        }

        self.attribute_map = {
            'locations': 'locations'
        }

        self._locations = locations

    @classmethod
    def from_dict(cls, dikt) -> 'RequestSupportedLocations':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The RequestSupportedLocations of this RequestSupportedLocations.  # noqa: E501
        :rtype: RequestSupportedLocations
        """
        return util.deserialize_model(dikt, cls)

    @property
    def locations(self):
        """Gets the locations of this RequestSupportedLocations.


        :return: The locations of this RequestSupportedLocations.
        :rtype: List[RequestLocation]
        """
        return self._locations

    @locations.setter
    def locations(self, locations):
        """Sets the locations of this RequestSupportedLocations.


        :param locations: The locations of this RequestSupportedLocations.
        :type locations: List[RequestLocation]
        """
        if locations is None:
            raise ValueError("Invalid value for `locations`, must not be `None`")  # noqa: E501
        if locations is not None and len(locations) < 1:
            raise ValueError("Invalid value for `locations`, number of items must be greater than or equal to `1`")  # noqa: E501

        self._locations = locations
