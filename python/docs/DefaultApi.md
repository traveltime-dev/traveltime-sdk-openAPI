# openapi_client.DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocoding_reverse_search**](DefaultApi.md#geocoding_reverse_search) | **GET** /v4/geocoding/reverse | 
[**geocoding_search**](DefaultApi.md#geocoding_search) | **GET** /v4/geocoding/search | 
[**map_info**](DefaultApi.md#map_info) | **GET** /v4/map-info | 
[**routes**](DefaultApi.md#routes) | **POST** /v4/routes | 
[**supported_locations**](DefaultApi.md#supported_locations) | **POST** /v4/supported-locations | 
[**time_filter**](DefaultApi.md#time_filter) | **POST** /v4/time-filter | 
[**time_filter_fast**](DefaultApi.md#time_filter_fast) | **POST** /v4/time-filter/fast | 
[**time_filter_postcode_districts**](DefaultApi.md#time_filter_postcode_districts) | **POST** /v4/time-filter/postcode-districts | 
[**time_filter_postcode_sectors**](DefaultApi.md#time_filter_postcode_sectors) | **POST** /v4/time-filter/postcode-sectors | 
[**time_filter_postcodes**](DefaultApi.md#time_filter_postcodes) | **POST** /v4/time-filter/postcodes | 
[**time_map**](DefaultApi.md#time_map) | **POST** /v4/time-map | 


# **geocoding_reverse_search**
> ResponseGeocoding geocoding_reverse_search(lat, lng)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_geocoding import ResponseGeocoding
from openapi_client.model.response_error import ResponseError
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    lat = 3.14 # float | 
    lng = 3.14 # float | 
    within_country = "within.country_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.geocoding_reverse_search(lat, lng)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->geocoding_reverse_search: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.geocoding_reverse_search(lat, lng, within_country=within_country)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->geocoding_reverse_search: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **float**|  |
 **lng** | **float**|  |
 **within_country** | **str**|  | [optional]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocoding_search**
> ResponseGeocoding geocoding_search(query)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_geocoding import ResponseGeocoding
from openapi_client.model.response_error import ResponseError
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    query = "query_example" # str | 
    focus_lat = 3.14 # float |  (optional)
    focus_lng = 3.14 # float |  (optional)
    within_country = "within.country_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.geocoding_search(query)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->geocoding_search: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.geocoding_search(query, focus_lat=focus_lat, focus_lng=focus_lng, within_country=within_country)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->geocoding_search: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**|  |
 **focus_lat** | **float**|  | [optional]
 **focus_lng** | **float**|  | [optional]
 **within_country** | **str**|  | [optional]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_info**
> ResponseMapInfo map_info()



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_map_info import ResponseMapInfo
from openapi_client.model.response_error import ResponseError
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.map_info()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->map_info: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseMapInfo**](ResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
> ResponseRoutes routes(request_routes)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.request_routes import RequestRoutes
from openapi_client.model.response_error import ResponseError
from openapi_client.model.response_routes import ResponseRoutes
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_routes = RequestRoutes(
        locations=[
            RequestLocation(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
            ),
        ],
        departure_searches=[
            RequestRoutesDepartureSearch(
                id="id_example",
                departure_location_id="departure_location_id_example",
                arrival_location_ids=[
                    "arrival_location_ids_example",
                ],
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestRoutesProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
        arrival_searches=[
            RequestRoutesArrivalSearch(
                id="id_example",
                departure_location_ids=[
                    "departure_location_ids_example",
                ],
                arrival_location_id="arrival_location_id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestRoutesProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
    ) # RequestRoutes | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.routes(request_routes)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->routes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_routes** | [**RequestRoutes**](RequestRoutes.md)|  |

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supported_locations**
> ResponseSupportedLocations supported_locations(request_supported_locations)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.request_supported_locations import RequestSupportedLocations
from openapi_client.model.response_error import ResponseError
from openapi_client.model.response_supported_locations import ResponseSupportedLocations
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_supported_locations = RequestSupportedLocations(
        locations=[
            RequestLocation(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
            ),
        ],
    ) # RequestSupportedLocations | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.supported_locations(request_supported_locations)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->supported_locations: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_supported_locations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  |

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter**
> ResponseTimeFilter time_filter(request_time_filter)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.request_time_filter import RequestTimeFilter
from openapi_client.model.response_error import ResponseError
from openapi_client.model.response_time_filter import ResponseTimeFilter
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_filter = RequestTimeFilter(
        locations=[
            RequestLocation(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
            ),
        ],
        departure_searches=[
            RequestTimeFilterDepartureSearch(
                id="id_example",
                departure_location_id="departure_location_id_example",
                arrival_location_ids=[
                    "arrival_location_ids_example",
                ],
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeFilterProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
        arrival_searches=[
            RequestTimeFilterArrivalSearch(
                id="id_example",
                departure_location_ids=[
                    "departure_location_ids_example",
                ],
                arrival_location_id="arrival_location_id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeFilterProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
    ) # RequestTimeFilter | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_filter(request_time_filter)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_filter: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  |

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_fast**
> ResponseTimeFilterFast time_filter_fast(request_time_filter_fast)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_error import ResponseError
from openapi_client.model.request_time_filter_fast import RequestTimeFilterFast
from openapi_client.model.response_time_filter_fast import ResponseTimeFilterFast
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_filter_fast = RequestTimeFilterFast(
        locations=[
            RequestLocation(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
            ),
        ],
        arrival_searches=RequestTimeFilterFastArrivalSearches(
            many_to_one=[
                RequestTimeFilterFastArrivalManyToOneSearch(
                    id="id_example",
                    arrival_location_id="arrival_location_id_example",
                    departure_location_ids=[
                        "departure_location_ids_example",
                    ],
                    transportation=RequestTransportationFast(
                        type="public_transport",
                    ),
                    travel_time=RequestTravelTime(60),
                    arrival_time_period=RequestArrivalTimePeriod("weekday_morning"),
                    properties=[
                        RequestTimeFilterFastProperty("travel_time"),
                    ],
                ),
            ],
            one_to_many=[
                RequestTimeFilterFastArrivalOneToManySearch(
                    id="id_example",
                    departure_location_id="departure_location_id_example",
                    arrival_location_ids=[
                        "arrival_location_ids_example",
                    ],
                    transportation=RequestTransportationFast(
                        type="public_transport",
                    ),
                    travel_time=RequestTravelTime(60),
                    arrival_time_period=RequestArrivalTimePeriod("weekday_morning"),
                    properties=[
                        RequestTimeFilterFastProperty("travel_time"),
                    ],
                ),
            ],
        ),
    ) # RequestTimeFilterFast | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_filter_fast(request_time_filter_fast)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_filter_fast: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_fast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  |

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_districts**
> ResponseTimeFilterPostcodeDistricts time_filter_postcode_districts(request_time_filter_postcode_districts)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_error import ResponseError
from openapi_client.model.response_time_filter_postcode_districts import ResponseTimeFilterPostcodeDistricts
from openapi_client.model.request_time_filter_postcode_districts import RequestTimeFilterPostcodeDistricts
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_filter_postcode_districts = RequestTimeFilterPostcodeDistricts(
        departure_searches=[
            RequestTimeFilterPostcodeDistrictsDepartureSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                reachable_postcodes_threshold=3.14,
                properties=[
                    RequestTimeFilterPostcodeDistrictsProperty("travel_time_reachable"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
        arrival_searches=[
            RequestTimeFilterPostcodeDistrictsArrivalSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                reachable_postcodes_threshold=3.14,
                properties=[
                    RequestTimeFilterPostcodeDistrictsProperty("travel_time_reachable"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
    ) # RequestTimeFilterPostcodeDistricts | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_filter_postcode_districts(request_time_filter_postcode_districts)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcode_districts: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_districts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  |

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_sectors**
> ResponseTimeFilterPostcodeSectors time_filter_postcode_sectors(request_time_filter_postcode_sectors)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_error import ResponseError
from openapi_client.model.request_time_filter_postcode_sectors import RequestTimeFilterPostcodeSectors
from openapi_client.model.response_time_filter_postcode_sectors import ResponseTimeFilterPostcodeSectors
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_filter_postcode_sectors = RequestTimeFilterPostcodeSectors(
        departure_searches=[
            RequestTimeFilterPostcodeSectorsDepartureSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                reachable_postcodes_threshold=3.14,
                properties=[
                    RequestTimeFilterPostcodeSectorsProperty("travel_time_reachable"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
        arrival_searches=[
            RequestTimeFilterPostcodeSectorsArrivalSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                reachable_postcodes_threshold=3.14,
                properties=[
                    RequestTimeFilterPostcodeSectorsProperty("travel_time_reachable"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
    ) # RequestTimeFilterPostcodeSectors | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_filter_postcode_sectors(request_time_filter_postcode_sectors)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcode_sectors: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_sectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  |

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcodes**
> ResponseTimeFilterPostcodes time_filter_postcodes(request_time_filter_postcodes)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_error import ResponseError
from openapi_client.model.request_time_filter_postcodes import RequestTimeFilterPostcodes
from openapi_client.model.response_time_filter_postcodes import ResponseTimeFilterPostcodes
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_filter_postcodes = RequestTimeFilterPostcodes(
        departure_searches=[
            RequestTimeFilterPostcodesDepartureSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeFilterPostcodesProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
        arrival_searches=[
            RequestTimeFilterPostcodesArrivalSearch(
                id="id_example",
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeFilterPostcodesProperty("travel_time"),
                ],
                range=RequestRangeFull(
                    enabled=True,
                    max_results=1,
                    width=RequestRangeWidth(1),
                ),
            ),
        ],
    ) # RequestTimeFilterPostcodes | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_filter_postcodes(request_time_filter_postcodes)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcodes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  |

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_map**
> ResponseTimeMap time_map(request_time_map)



### Example

* Api Key Authentication (ApiKey):
* Api Key Authentication (ApplicationId):
```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.response_time_map import ResponseTimeMap
from openapi_client.model.response_error import ResponseError
from openapi_client.model.request_time_map import RequestTimeMap
from pprint import pprint
# Defining the host is optional and defaults to https://api.traveltimeapp.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration.api_key['ApplicationId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    request_time_map = RequestTimeMap(
        departure_searches=[
            RequestTimeMapDepartureSearch(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                departure_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeMapProperty("is_only_walking"),
                ],
                range=RequestRangeNoMaxResults(
                    enabled=True,
                    width=RequestRangeWidth(1),
                ),
                level_of_detail=RequestLevelOfDetail(
                    scale_type="simple",
                    level="lowest",
                ),
            ),
        ],
        arrival_searches=[
            RequestTimeMapArrivalSearch(
                id="id_example",
                coords=Coords(
                    lat=3.14,
                    lng=3.14,
                ),
                transportation=RequestTransportation(
                    type="cycling",
                    disable_border_crossing=True,
                    pt_change_delay=1,
                    walking_time=1,
                    driving_time_to_station=1,
                    cycling_time_to_station=1,
                    parking_time=1,
                    boarding_time=1,
                ),
                travel_time=RequestTravelTime(60),
                arrival_time=dateutil_parser('1970-01-01T00:00:00.00Z'),
                properties=[
                    RequestTimeMapProperty("is_only_walking"),
                ],
                range=RequestRangeNoMaxResults(
                    enabled=True,
                    width=RequestRangeWidth(1),
                ),
                level_of_detail=RequestLevelOfDetail(
                    scale_type="simple",
                    level="lowest",
                ),
            ),
        ],
        unions=[
            RequestUnionOnIntersection(
                id="id_example",
                search_ids=[
                    "search_ids_example",
                ],
            ),
        ],
        intersections=[
            RequestUnionOnIntersection(
                id="id_example",
                search_ids=[
                    "search_ids_example",
                ],
            ),
        ],
    ) # RequestTimeMap | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.time_map(request_time_map)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->time_map: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_map** | [**RequestTimeMap**](RequestTimeMap.md)|  |

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

