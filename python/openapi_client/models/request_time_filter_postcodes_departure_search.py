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


class RequestTimeFilterPostcodesDepartureSearch(object):
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
        'transportation': 'RequestTransportation',
        'travel_time': 'int',
        'departure_time': 'datetime',
        'properties': 'list[RequestTimeFilterPostcodesProperty]',
        'range': 'RequestRangeFull'
    }

    attribute_map = {
        'id': 'id',
        'transportation': 'transportation',
        'travel_time': 'travel_time',
        'departure_time': 'departure_time',
        'properties': 'properties',
        'range': 'range'
    }

    def __init__(self, id=None, transportation=None, travel_time=None, departure_time=None, properties=None, range=None, local_vars_configuration=None):  # noqa: E501
        """RequestTimeFilterPostcodesDepartureSearch - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._id = None
        self._transportation = None
        self._travel_time = None
        self._departure_time = None
        self._properties = None
        self._range = None
        self.discriminator = None

        self.id = id
        self.transportation = transportation
        self.travel_time = travel_time
        self.departure_time = departure_time
        self.properties = properties
        if range is not None:
            self.range = range

    @property
    def id(self):
        """Gets the id of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The id of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this RequestTimeFilterPostcodesDepartureSearch.


        :param id: The id of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type id: str
        """
        if self.local_vars_configuration.client_side_validation and id is None:  # noqa: E501
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def transportation(self):
        """Gets the transportation of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The transportation of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: RequestTransportation
        """
        return self._transportation

    @transportation.setter
    def transportation(self, transportation):
        """Sets the transportation of this RequestTimeFilterPostcodesDepartureSearch.


        :param transportation: The transportation of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type transportation: RequestTransportation
        """
        if self.local_vars_configuration.client_side_validation and transportation is None:  # noqa: E501
            raise ValueError("Invalid value for `transportation`, must not be `None`")  # noqa: E501

        self._transportation = transportation

    @property
    def travel_time(self):
        """Gets the travel_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The travel_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: int
        """
        return self._travel_time

    @travel_time.setter
    def travel_time(self, travel_time):
        """Sets the travel_time of this RequestTimeFilterPostcodesDepartureSearch.


        :param travel_time: The travel_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type travel_time: int
        """
        if self.local_vars_configuration.client_side_validation and travel_time is None:  # noqa: E501
            raise ValueError("Invalid value for `travel_time`, must not be `None`")  # noqa: E501
        if (self.local_vars_configuration.client_side_validation and
                travel_time is not None and travel_time > 14400):  # noqa: E501
            raise ValueError("Invalid value for `travel_time`, must be a value less than or equal to `14400`")  # noqa: E501
        if (self.local_vars_configuration.client_side_validation and
                travel_time is not None and travel_time < 60):  # noqa: E501
            raise ValueError("Invalid value for `travel_time`, must be a value greater than or equal to `60`")  # noqa: E501

        self._travel_time = travel_time

    @property
    def departure_time(self):
        """Gets the departure_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The departure_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: datetime
        """
        return self._departure_time

    @departure_time.setter
    def departure_time(self, departure_time):
        """Sets the departure_time of this RequestTimeFilterPostcodesDepartureSearch.


        :param departure_time: The departure_time of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type departure_time: datetime
        """
        if self.local_vars_configuration.client_side_validation and departure_time is None:  # noqa: E501
            raise ValueError("Invalid value for `departure_time`, must not be `None`")  # noqa: E501

        self._departure_time = departure_time

    @property
    def properties(self):
        """Gets the properties of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The properties of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: list[RequestTimeFilterPostcodesProperty]
        """
        return self._properties

    @properties.setter
    def properties(self, properties):
        """Sets the properties of this RequestTimeFilterPostcodesDepartureSearch.


        :param properties: The properties of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type properties: list[RequestTimeFilterPostcodesProperty]
        """
        if self.local_vars_configuration.client_side_validation and properties is None:  # noqa: E501
            raise ValueError("Invalid value for `properties`, must not be `None`")  # noqa: E501

        self._properties = properties

    @property
    def range(self):
        """Gets the range of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501


        :return: The range of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :rtype: RequestRangeFull
        """
        return self._range

    @range.setter
    def range(self, range):
        """Sets the range of this RequestTimeFilterPostcodesDepartureSearch.


        :param range: The range of this RequestTimeFilterPostcodesDepartureSearch.  # noqa: E501
        :type range: RequestRangeFull
        """

        self._range = range

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
        if not isinstance(other, RequestTimeFilterPostcodesDepartureSearch):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, RequestTimeFilterPostcodesDepartureSearch):
            return True

        return self.to_dict() != other.to_dict()