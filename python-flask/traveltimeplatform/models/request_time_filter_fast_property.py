# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from traveltimeplatform.models.base_model_ import Model
from traveltimeplatform import util


class RequestTimeFilterFastProperty(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    """
    allowed enum values
    """
    TRAVEL_TIME = "travel_time"
    FARES = "fares"

    def __init__(self):  # noqa: E501
        """RequestTimeFilterFastProperty - a model defined in OpenAPI

        """
        self.openapi_types = {
        }

        self.attribute_map = {
        }

    @classmethod
    def from_dict(cls, dikt) -> 'RequestTimeFilterFastProperty':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The RequestTimeFilterFastProperty of this RequestTimeFilterFastProperty.  # noqa: E501
        :rtype: RequestTimeFilterFastProperty
        """
        return util.deserialize_model(dikt, cls)