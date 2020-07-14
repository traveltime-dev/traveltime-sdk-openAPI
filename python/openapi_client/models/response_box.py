# coding: utf-8

"""
    TravelTime API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 1.2.1
    Contact: support@igeolise.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six

from openapi_client.configuration import Configuration


class ResponseBox(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'min_lat': 'float',
        'max_lat': 'float',
        'min_lng': 'float',
        'max_lng': 'float'
    }

    attribute_map = {
        'min_lat': 'min_lat',
        'max_lat': 'max_lat',
        'min_lng': 'min_lng',
        'max_lng': 'max_lng'
    }

    def __init__(self, min_lat=None, max_lat=None, min_lng=None, max_lng=None, local_vars_configuration=None):  # noqa: E501
        """ResponseBox - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._min_lat = None
        self._max_lat = None
        self._min_lng = None
        self._max_lng = None
        self.discriminator = None

        self.min_lat = min_lat
        self.max_lat = max_lat
        self.min_lng = min_lng
        self.max_lng = max_lng

    @property
    def min_lat(self):
        """Gets the min_lat of this ResponseBox.  # noqa: E501


        :return: The min_lat of this ResponseBox.  # noqa: E501
        :rtype: float
        """
        return self._min_lat

    @min_lat.setter
    def min_lat(self, min_lat):
        """Sets the min_lat of this ResponseBox.


        :param min_lat: The min_lat of this ResponseBox.  # noqa: E501
        :type min_lat: float
        """
        if self.local_vars_configuration.client_side_validation and min_lat is None:  # noqa: E501
            raise ValueError("Invalid value for `min_lat`, must not be `None`")  # noqa: E501

        self._min_lat = min_lat

    @property
    def max_lat(self):
        """Gets the max_lat of this ResponseBox.  # noqa: E501


        :return: The max_lat of this ResponseBox.  # noqa: E501
        :rtype: float
        """
        return self._max_lat

    @max_lat.setter
    def max_lat(self, max_lat):
        """Sets the max_lat of this ResponseBox.


        :param max_lat: The max_lat of this ResponseBox.  # noqa: E501
        :type max_lat: float
        """
        if self.local_vars_configuration.client_side_validation and max_lat is None:  # noqa: E501
            raise ValueError("Invalid value for `max_lat`, must not be `None`")  # noqa: E501

        self._max_lat = max_lat

    @property
    def min_lng(self):
        """Gets the min_lng of this ResponseBox.  # noqa: E501


        :return: The min_lng of this ResponseBox.  # noqa: E501
        :rtype: float
        """
        return self._min_lng

    @min_lng.setter
    def min_lng(self, min_lng):
        """Sets the min_lng of this ResponseBox.


        :param min_lng: The min_lng of this ResponseBox.  # noqa: E501
        :type min_lng: float
        """
        if self.local_vars_configuration.client_side_validation and min_lng is None:  # noqa: E501
            raise ValueError("Invalid value for `min_lng`, must not be `None`")  # noqa: E501

        self._min_lng = min_lng

    @property
    def max_lng(self):
        """Gets the max_lng of this ResponseBox.  # noqa: E501


        :return: The max_lng of this ResponseBox.  # noqa: E501
        :rtype: float
        """
        return self._max_lng

    @max_lng.setter
    def max_lng(self, max_lng):
        """Sets the max_lng of this ResponseBox.


        :param max_lng: The max_lng of this ResponseBox.  # noqa: E501
        :type max_lng: float
        """
        if self.local_vars_configuration.client_side_validation and max_lng is None:  # noqa: E501
            raise ValueError("Invalid value for `max_lng`, must not be `None`")  # noqa: E501

        self._max_lng = max_lng

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, ResponseBox):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, ResponseBox):
            return True

        return self.to_dict() != other.to_dict()