# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from traveltimeplatform.models.base_model_ import Model
from traveltimeplatform import util


class ResponseTimeMapBoundingBoxes(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, results=None):  # noqa: E501
        """ResponseTimeMapBoundingBoxes - a model defined in OpenAPI

        :param results: The results of this ResponseTimeMapBoundingBoxes.  # noqa: E501
        :type results: List[ResponseTimeMapBoundingBoxesResult]
        """
        self.openapi_types = {
            'results': List[ResponseTimeMapBoundingBoxesResult]
        }

        self.attribute_map = {
            'results': 'results'
        }

        self._results = results

    @classmethod
    def from_dict(cls, dikt) -> 'ResponseTimeMapBoundingBoxes':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The ResponseTimeMapBoundingBoxes of this ResponseTimeMapBoundingBoxes.  # noqa: E501
        :rtype: ResponseTimeMapBoundingBoxes
        """
        return util.deserialize_model(dikt, cls)

    @property
    def results(self):
        """Gets the results of this ResponseTimeMapBoundingBoxes.


        :return: The results of this ResponseTimeMapBoundingBoxes.
        :rtype: List[ResponseTimeMapBoundingBoxesResult]
        """
        return self._results

    @results.setter
    def results(self, results):
        """Sets the results of this ResponseTimeMapBoundingBoxes.


        :param results: The results of this ResponseTimeMapBoundingBoxes.
        :type results: List[ResponseTimeMapBoundingBoxesResult]
        """
        if results is None:
            raise ValueError("Invalid value for `results`, must not be `None`")  # noqa: E501

        self._results = results