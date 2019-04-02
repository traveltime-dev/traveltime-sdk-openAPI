# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from traveltimeplatform.models.request_routes import RequestRoutes  # noqa: E501
from traveltimeplatform.models.request_supported_locations import RequestSupportedLocations  # noqa: E501
from traveltimeplatform.models.request_time_filter import RequestTimeFilter  # noqa: E501
from traveltimeplatform.models.request_time_filter_fast import RequestTimeFilterFast  # noqa: E501
from traveltimeplatform.models.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts  # noqa: E501
from traveltimeplatform.models.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors  # noqa: E501
from traveltimeplatform.models.request_time_filter_postcodes import RequestTimeFilterPostcodes  # noqa: E501
from traveltimeplatform.models.request_time_map import RequestTimeMap  # noqa: E501
from traveltimeplatform.models.response_error import ResponseError  # noqa: E501
from traveltimeplatform.models.response_geocoding import ResponseGeocoding  # noqa: E501
from traveltimeplatform.models.response_map_info import ResponseMapInfo  # noqa: E501
from traveltimeplatform.models.response_routes import ResponseRoutes  # noqa: E501
from traveltimeplatform.models.response_supported_locations import ResponseSupportedLocations  # noqa: E501
from traveltimeplatform.models.response_time_filter import ResponseTimeFilter  # noqa: E501
from traveltimeplatform.models.response_time_filter_fast import ResponseTimeFilterFast  # noqa: E501
from traveltimeplatform.models.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts  # noqa: E501
from traveltimeplatform.models.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors  # noqa: E501
from traveltimeplatform.models.response_time_filter_postcodes import ResponseTimeFilterPostcodes  # noqa: E501
from traveltimeplatform.models.response_time_map import ResponseTimeMap  # noqa: E501
from traveltimeplatform.test import BaseTestCase


class TestDefaultController(BaseTestCase):
    """DefaultController integration test stubs"""

    def test_geocoding_reverse_search(self):
        """Test case for geocoding_reverse_search

        
        """
        query_string = [('focus_lat', 3.4),
                        ('focus_lng', 3.4),
                        ('within_country', 'within_country_example')]
        response = self.client.open(
            '/v4/geocoding/reverse',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_geocoding_search(self):
        """Test case for geocoding_search

        
        """
        query_string = [('query', 'query_example'),
                        ('within_country', 'within_country_example'),
                        ('focus_lat', 3.4),
                        ('focus_lng', 3.4)]
        response = self.client.open(
            '/v4/geocoding/search',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_map_info(self):
        """Test case for map_info

        
        """
        response = self.client.open(
            '/v4/map-info',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_routes(self):
        """Test case for routes

        
        """
        request_routes = RequestRoutes()
        response = self.client.open(
            '/v4/routes',
            method='POST',
            data=json.dumps(request_routes),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_supported_locations(self):
        """Test case for supported_locations

        
        """
        request_supported_locations = RequestSupportedLocations()
        response = self.client.open(
            '/v4/supported-locations',
            method='POST',
            data=json.dumps(request_supported_locations),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter(self):
        """Test case for time_filter

        
        """
        request_time_filter = RequestTimeFilter()
        response = self.client.open(
            '/v4/time-filter',
            method='POST',
            data=json.dumps(request_time_filter),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_fast(self):
        """Test case for time_filter_fast

        
        """
        request_time_filter_fast = RequestTimeFilterFast()
        response = self.client.open(
            '/v4/time-filter/fast',
            method='POST',
            data=json.dumps(request_time_filter_fast),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcode_districts(self):
        """Test case for time_filter_postcode_districts

        
        """
        request_time_filter_postcode_districts = RequestTimeFilterPostcodeDistricts()
        response = self.client.open(
            '/v4/time-filter/postcode-districts',
            method='POST',
            data=json.dumps(request_time_filter_postcode_districts),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcode_sectors(self):
        """Test case for time_filter_postcode_sectors

        
        """
        request_time_filter_postcode_sectors = RequestTimeFilterPostcodeSectors()
        response = self.client.open(
            '/v4/time-filter/postcode-sectors',
            method='POST',
            data=json.dumps(request_time_filter_postcode_sectors),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcodes(self):
        """Test case for time_filter_postcodes

        
        """
        request_time_filter_postcodes = RequestTimeFilterPostcodes()
        response = self.client.open(
            '/v4/time-filter/postcodes',
            method='POST',
            data=json.dumps(request_time_filter_postcodes),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_map(self):
        """Test case for time_map

        
        """
        request_time_map = RequestTimeMap()
        response = self.client.open(
            '/v4/time-map',
            method='POST',
            data=json.dumps(request_time_map),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
