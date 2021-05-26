# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.request_routes import RequestRoutes
from openapi_server.models.request_supported_locations import RequestSupportedLocations
from openapi_server.models.request_time_filter import RequestTimeFilter
from openapi_server.models.request_time_filter_fast import RequestTimeFilterFast
from openapi_server.models.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts
from openapi_server.models.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors
from openapi_server.models.request_time_filter_postcodes import RequestTimeFilterPostcodes
from openapi_server.models.request_time_map import RequestTimeMap
from openapi_server.models.response_error import ResponseError
from openapi_server.models.response_geocoding import ResponseGeocoding
from openapi_server.models.response_map_info import ResponseMapInfo
from openapi_server.models.response_routes import ResponseRoutes
from openapi_server.models.response_supported_locations import ResponseSupportedLocations
from openapi_server.models.response_time_filter import ResponseTimeFilter
from openapi_server.models.response_time_filter_fast import ResponseTimeFilterFast
from openapi_server.models.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts
from openapi_server.models.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors
from openapi_server.models.response_time_filter_postcodes import ResponseTimeFilterPostcodes
from openapi_server.models.response_time_map import ResponseTimeMap


async def test_geocoding_reverse_search(client):
    """Test case for geocoding_reverse_search

    
    """
    params = [('lat', 3.4),
                    ('lng', 3.4),
                    ('within.country', 'within_country_example')]
    headers = { 
        'Accept': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='GET',
        path='/v4/geocoding/reverse',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_geocoding_search(client):
    """Test case for geocoding_search

    
    """
    params = [('query', 'query_example'),
                    ('focus.lat', 3.4),
                    ('focus.lng', 3.4),
                    ('within.country', 'within_country_example')]
    headers = { 
        'Accept': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='GET',
        path='/v4/geocoding/search',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_map_info(client):
    """Test case for map_info

    
    """
    headers = { 
        'Accept': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='GET',
        path='/v4/map-info',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_routes(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/routes',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_supported_locations(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/supported-locations',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_filter(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-filter',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_filter_fast(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-filter/fast',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_filter_postcode_districts(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-filter/postcode-districts',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_filter_postcode_sectors(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-filter/postcode-sectors',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_filter_postcodes(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-filter/postcodes',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_time_map(client):
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
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKey': 'special-key',
        'ApplicationId': 'special-key',
    }
    response = await client.request(
        method='POST',
        path='/v4/time-map',
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

