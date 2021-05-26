# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from app.openapi_server.models.request_routes import RequestRoutes  # noqa: E501
from app.openapi_server.models.request_supported_locations import RequestSupportedLocations  # noqa: E501
from app.openapi_server.models.request_time_filter import RequestTimeFilter  # noqa: E501
from app.openapi_server.models.request_time_filter_fast import RequestTimeFilterFast  # noqa: E501
from app.openapi_server.models.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts  # noqa: E501
from app.openapi_server.models.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors  # noqa: E501
from app.openapi_server.models.request_time_filter_postcodes import RequestTimeFilterPostcodes  # noqa: E501
from app.openapi_server.models.request_time_map import RequestTimeMap  # noqa: E501
from app.openapi_server.models.response_error import ResponseError  # noqa: E501
from app.openapi_server.models.response_geocoding import ResponseGeocoding  # noqa: E501
from app.openapi_server.models.response_map_info import ResponseMapInfo  # noqa: E501
from app.openapi_server.models.response_routes import ResponseRoutes  # noqa: E501
from app.openapi_server.models.response_supported_locations import ResponseSupportedLocations  # noqa: E501
from app.openapi_server.models.response_time_filter import ResponseTimeFilter  # noqa: E501
from app.openapi_server.models.response_time_filter_fast import ResponseTimeFilterFast  # noqa: E501
from app.openapi_server.models.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts  # noqa: E501
from app.openapi_server.models.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors  # noqa: E501
from app.openapi_server.models.response_time_filter_postcodes import ResponseTimeFilterPostcodes  # noqa: E501
from app.openapi_server.models.response_time_map import ResponseTimeMap  # noqa: E501
from openapi_server.test import BaseTestCase


class TestDefaultController(BaseTestCase):
    """DefaultController integration test stubs"""

    def test_geocoding_reverse_search(self):
        """Test case for geocoding_reverse_search

        
        """
        query_string = [('lat', 3.4),
                        ('lng', 3.4),
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
                        ('focus_lat', 3.4),
                        ('focus_lng', 3.4),
                        ('within_country', 'within_country_example')]
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
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "departure_searches" : [ {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "locations" : [ {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  }, {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  } ]
}
        response = self.client.open(
            '/v4/routes',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_supported_locations(self):
        """Test case for supported_locations

        
        """
        body = {
  "locations" : [ {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  }, {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  } ]
}
        response = self.client.open(
            '/v4/supported-locations',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter(self):
        """Test case for time_filter

        
        """
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
    "arrival_location_id" : "arrival_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "departure_searches" : [ {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
    "departure_location_id" : "departure_location_id",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "locations" : [ {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  }, {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  } ]
}
        response = self.client.open(
            '/v4/time-filter',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_fast(self):
        """Test case for time_filter_fast

        
        """
        body = {
  "arrival_searches" : {
    "many_to_one" : [ {
      "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
      "arrival_location_id" : "arrival_location_id",
      "id" : "id",
      "travel_time" : 1208,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
      "arrival_location_id" : "arrival_location_id",
      "id" : "id",
      "travel_time" : 1208,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
      "arrival_location_id" : "arrival_location_id",
      "id" : "id",
      "travel_time" : 1208,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
      "arrival_location_id" : "arrival_location_id",
      "id" : "id",
      "travel_time" : 1208,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "departure_location_ids" : [ "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids", "departure_location_ids" ],
      "arrival_location_id" : "arrival_location_id",
      "id" : "id",
      "travel_time" : 1208,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    } ],
    "one_to_many" : [ {
      "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
      "departure_location_id" : "departure_location_id",
      "id" : "id",
      "travel_time" : 8703,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
      "departure_location_id" : "departure_location_id",
      "id" : "id",
      "travel_time" : 8703,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
      "departure_location_id" : "departure_location_id",
      "id" : "id",
      "travel_time" : 8703,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
      "departure_location_id" : "departure_location_id",
      "id" : "id",
      "travel_time" : 8703,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    }, {
      "arrival_location_ids" : [ "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids", "arrival_location_ids" ],
      "departure_location_id" : "departure_location_id",
      "id" : "id",
      "travel_time" : 8703,
      "properties" : [ null, null ],
      "transportation" : {
        "type" : "public_transport"
      }
    } ]
  },
  "locations" : [ {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  }, {
    "id" : "id",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    }
  } ]
}
        response = self.client.open(
            '/v4/time-filter/fast',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcode_districts(self):
        """Test case for time_filter_postcode_districts

        
        """
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "departure_searches" : [ {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ]
}
        response = self.client.open(
            '/v4/time-filter/postcode-districts',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcode_sectors(self):
        """Test case for time_filter_postcode_sectors

        
        """
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 2161,
    "reachable_postcodes_threshold" : 5.962133916683182,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "departure_searches" : [ {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "reachable_postcodes_threshold" : 6.027456183070403,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ]
}
        response = self.client.open(
            '/v4/time-filter/postcode-sectors',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_filter_postcodes(self):
        """Test case for time_filter_postcodes

        
        """
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 8703,
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "departure_searches" : [ {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 40182,
      "max_results" : 3,
      "enabled" : true
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ]
}
        response = self.client.open(
            '/v4/time-filter/postcodes',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_time_map(self):
        """Test case for time_map

        
        """
        body = {
  "arrival_searches" : [ {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 2161,
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 2161,
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 2161,
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 2161,
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "arrival_time" : "2000-01-23T04:56:07.000+00:00",
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 2161,
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "unions" : [ {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  } ],
  "departure_searches" : [ {
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  }, {
    "range" : {
      "width" : 26039,
      "enabled" : true
    },
    "level_of_detail" : {
      "level" : "lowest",
      "scale_type" : "simple"
    },
    "id" : "id",
    "travel_time" : 1208,
    "departure_time" : "2000-01-23T04:56:07.000+00:00",
    "coords" : {
      "lng" : 9.301444243932576,
      "lat" : 7.061401241503109
    },
    "properties" : [ null, null ],
    "transportation" : {
      "pt_change_delay" : 0,
      "boarding_time" : 2,
      "driving_time_to_station" : 1,
      "disable_border_crossing" : true,
      "cycling_time_to_station" : 5,
      "type" : "cycling",
      "walking_time" : 6,
      "parking_time" : 5
    }
  } ],
  "intersections" : [ {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  }, {
    "id" : "id",
    "search_ids" : [ "search_ids", "search_ids" ]
  } ]
}
        response = self.client.open(
            '/v4/time-map',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
