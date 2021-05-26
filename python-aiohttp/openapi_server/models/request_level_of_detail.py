# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server import util


class RequestLevelOfDetail(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, scale_type: str=None, level: str=None):
        """RequestLevelOfDetail - a model defined in OpenAPI

        :param scale_type: The scale_type of this RequestLevelOfDetail.
        :param level: The level of this RequestLevelOfDetail.
        """
        self.openapi_types = {
            'scale_type': str,
            'level': str
        }

        self.attribute_map = {
            'scale_type': 'scale_type',
            'level': 'level'
        }

        self._scale_type = scale_type
        self._level = level

    @classmethod
    def from_dict(cls, dikt: dict) -> 'RequestLevelOfDetail':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The RequestLevelOfDetail of this RequestLevelOfDetail.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def scale_type(self):
        """Gets the scale_type of this RequestLevelOfDetail.


        :return: The scale_type of this RequestLevelOfDetail.
        :rtype: str
        """
        return self._scale_type

    @scale_type.setter
    def scale_type(self, scale_type):
        """Sets the scale_type of this RequestLevelOfDetail.


        :param scale_type: The scale_type of this RequestLevelOfDetail.
        :type scale_type: str
        """
        allowed_values = ["simple"]  # noqa: E501
        if scale_type not in allowed_values:
            raise ValueError(
                "Invalid value for `scale_type` ({0}), must be one of {1}"
                .format(scale_type, allowed_values)
            )

        self._scale_type = scale_type

    @property
    def level(self):
        """Gets the level of this RequestLevelOfDetail.


        :return: The level of this RequestLevelOfDetail.
        :rtype: str
        """
        return self._level

    @level.setter
    def level(self, level):
        """Sets the level of this RequestLevelOfDetail.


        :param level: The level of this RequestLevelOfDetail.
        :type level: str
        """
        allowed_values = ["lowest", "low", "medium", "high", "highest"]  # noqa: E501
        if level not in allowed_values:
            raise ValueError(
                "Invalid value for `level` ({0}), must be one of {1}"
                .format(level, allowed_values)
            )

        self._level = level
