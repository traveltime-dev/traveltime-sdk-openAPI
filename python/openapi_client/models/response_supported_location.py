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


class ResponseSupportedLocation(object):
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
        'id': 'str',
        'map_name': 'str'
    }

    attribute_map = {
        'id': 'id',
        'map_name': 'map_name'
    }

    def __init__(self, id=None, map_name=None, local_vars_configuration=None):  # noqa: E501
        """ResponseSupportedLocation - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._id = None
        self._map_name = None
        self.discriminator = None

        self.id = id
        self.map_name = map_name

    @property
    def id(self):
        """Gets the id of this ResponseSupportedLocation.  # noqa: E501


        :return: The id of this ResponseSupportedLocation.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this ResponseSupportedLocation.


        :param id: The id of this ResponseSupportedLocation.  # noqa: E501
        :type id: str
        """
        if self.local_vars_configuration.client_side_validation and id is None:  # noqa: E501
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def map_name(self):
        """Gets the map_name of this ResponseSupportedLocation.  # noqa: E501


        :return: The map_name of this ResponseSupportedLocation.  # noqa: E501
        :rtype: str
        """
        return self._map_name

    @map_name.setter
    def map_name(self, map_name):
        """Sets the map_name of this ResponseSupportedLocation.


        :param map_name: The map_name of this ResponseSupportedLocation.  # noqa: E501
        :type map_name: str
        """
        if self.local_vars_configuration.client_side_validation and map_name is None:  # noqa: E501
            raise ValueError("Invalid value for `map_name`, must not be `None`")  # noqa: E501

        self._map_name = map_name

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
        if not isinstance(other, ResponseSupportedLocation):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, ResponseSupportedLocation):
            return True

        return self.to_dict() != other.to_dict()