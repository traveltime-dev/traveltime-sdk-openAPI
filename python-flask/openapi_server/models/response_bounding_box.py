# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.response_box import ResponseBox
from openapi_server import util

from openapi_server.models.response_box import ResponseBox  # noqa: E501

class ResponseBoundingBox(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, envelope=None, boxes=None):  # noqa: E501
        """ResponseBoundingBox - a model defined in OpenAPI

        :param envelope: The envelope of this ResponseBoundingBox.  # noqa: E501
        :type envelope: ResponseBox
        :param boxes: The boxes of this ResponseBoundingBox.  # noqa: E501
        :type boxes: List[ResponseBox]
        """
        self.openapi_types = {
            'envelope': ResponseBox,
            'boxes': List[ResponseBox]
        }

        self.attribute_map = {
            'envelope': 'envelope',
            'boxes': 'boxes'
        }

        self._envelope = envelope
        self._boxes = boxes

    @classmethod
    def from_dict(cls, dikt) -> 'ResponseBoundingBox':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The ResponseBoundingBox of this ResponseBoundingBox.  # noqa: E501
        :rtype: ResponseBoundingBox
        """
        return util.deserialize_model(dikt, cls)

    @property
    def envelope(self):
        """Gets the envelope of this ResponseBoundingBox.


        :return: The envelope of this ResponseBoundingBox.
        :rtype: ResponseBox
        """
        return self._envelope

    @envelope.setter
    def envelope(self, envelope):
        """Sets the envelope of this ResponseBoundingBox.


        :param envelope: The envelope of this ResponseBoundingBox.
        :type envelope: ResponseBox
        """
        if envelope is None:
            raise ValueError("Invalid value for `envelope`, must not be `None`")  # noqa: E501

        self._envelope = envelope

    @property
    def boxes(self):
        """Gets the boxes of this ResponseBoundingBox.


        :return: The boxes of this ResponseBoundingBox.
        :rtype: List[ResponseBox]
        """
        return self._boxes

    @boxes.setter
    def boxes(self, boxes):
        """Sets the boxes of this ResponseBoundingBox.


        :param boxes: The boxes of this ResponseBoundingBox.
        :type boxes: List[ResponseBox]
        """
        if boxes is None:
            raise ValueError("Invalid value for `boxes`, must not be `None`")  # noqa: E501

        self._boxes = boxes
