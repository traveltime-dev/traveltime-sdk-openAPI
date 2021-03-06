"""
    TravelTime API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 1.2.3
    Contact: support@igeolise.com
    Generated by: https://openapi-generator.tech
"""


import unittest

import openapi_client
from openapi_client.api.default_api import DefaultApi  # noqa: E501


class TestDefaultApi(unittest.TestCase):
    """DefaultApi unit test stubs"""

    def setUp(self):
        self.api = DefaultApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_geocoding_reverse_search(self):
        """Test case for geocoding_reverse_search

        """
        pass

    def test_geocoding_search(self):
        """Test case for geocoding_search

        """
        pass

    def test_map_info(self):
        """Test case for map_info

        """
        pass

    def test_routes(self):
        """Test case for routes

        """
        pass

    def test_supported_locations(self):
        """Test case for supported_locations

        """
        pass

    def test_time_filter(self):
        """Test case for time_filter

        """
        pass

    def test_time_filter_fast(self):
        """Test case for time_filter_fast

        """
        pass

    def test_time_filter_postcode_districts(self):
        """Test case for time_filter_postcode_districts

        """
        pass

    def test_time_filter_postcode_sectors(self):
        """Test case for time_filter_postcode_sectors

        """
        pass

    def test_time_filter_postcodes(self):
        """Test case for time_filter_postcodes

        """
        pass

    def test_time_map(self):
        """Test case for time_map

        """
        pass


if __name__ == '__main__':
    unittest.main()
