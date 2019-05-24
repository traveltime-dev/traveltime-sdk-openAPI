# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.traveltimeplatform.models.base_model_ import Model
from app.traveltimeplatform.models.response_fare_ticket import ResponseFareTicket  # noqa: F401,E501
from app.traveltimeplatform.models.response_fares_breakdown_item import ResponseFaresBreakdownItem  # noqa: F401,E501
from traveltimeplatform import util


class ResponseFares(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, breakdown: List[ResponseFaresBreakdownItem]=None, tickets_total: List[ResponseFareTicket]=None):  # noqa: E501
        """ResponseFares - a model defined in Swagger

        :param breakdown: The breakdown of this ResponseFares.  # noqa: E501
        :type breakdown: List[ResponseFaresBreakdownItem]
        :param tickets_total: The tickets_total of this ResponseFares.  # noqa: E501
        :type tickets_total: List[ResponseFareTicket]
        """
        self.swagger_types = {
            'breakdown': List[ResponseFaresBreakdownItem],
            'tickets_total': List[ResponseFareTicket]
        }

        self.attribute_map = {
            'breakdown': 'breakdown',
            'tickets_total': 'tickets_total'
        }

        self._breakdown = breakdown
        self._tickets_total = tickets_total

    @classmethod
    def from_dict(cls, dikt) -> 'ResponseFares':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The ResponseFares of this ResponseFares.  # noqa: E501
        :rtype: ResponseFares
        """
        return util.deserialize_model(dikt, cls)

    @property
    def breakdown(self) -> List[ResponseFaresBreakdownItem]:
        """Gets the breakdown of this ResponseFares.


        :return: The breakdown of this ResponseFares.
        :rtype: List[ResponseFaresBreakdownItem]
        """
        return self._breakdown

    @breakdown.setter
    def breakdown(self, breakdown: List[ResponseFaresBreakdownItem]):
        """Sets the breakdown of this ResponseFares.


        :param breakdown: The breakdown of this ResponseFares.
        :type breakdown: List[ResponseFaresBreakdownItem]
        """
        if breakdown is None:
            raise ValueError("Invalid value for `breakdown`, must not be `None`")  # noqa: E501

        self._breakdown = breakdown

    @property
    def tickets_total(self) -> List[ResponseFareTicket]:
        """Gets the tickets_total of this ResponseFares.


        :return: The tickets_total of this ResponseFares.
        :rtype: List[ResponseFareTicket]
        """
        return self._tickets_total

    @tickets_total.setter
    def tickets_total(self, tickets_total: List[ResponseFareTicket]):
        """Sets the tickets_total of this ResponseFares.


        :param tickets_total: The tickets_total of this ResponseFares.
        :type tickets_total: List[ResponseFareTicket]
        """
        if tickets_total is None:
            raise ValueError("Invalid value for `tickets_total`, must not be `None`")  # noqa: E501

        self._tickets_total = tickets_total