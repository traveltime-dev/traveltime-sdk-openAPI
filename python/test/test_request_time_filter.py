"""
    TravelTime API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 1.2.3
    Contact: support@igeolise.com
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import openapi_client
from openapi_client.model.request_location import RequestLocation
from openapi_client.model.request_time_filter_arrival_search import RequestTimeFilterArrivalSearch
from openapi_client.model.request_time_filter_departure_search import RequestTimeFilterDepartureSearch
globals()['RequestLocation'] = RequestLocation
globals()['RequestTimeFilterArrivalSearch'] = RequestTimeFilterArrivalSearch
globals()['RequestTimeFilterDepartureSearch'] = RequestTimeFilterDepartureSearch
from openapi_client.model.request_time_filter import RequestTimeFilter


class TestRequestTimeFilter(unittest.TestCase):
    """RequestTimeFilter unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testRequestTimeFilter(self):
        """Test RequestTimeFilter"""
        # FIXME: construct object with mandatory attributes with example values
        # model = RequestTimeFilter()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
