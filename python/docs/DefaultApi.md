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
> ResponseGeocoding geocoding_reverse_search(lat, lng, within_country=within_country)



### Example

* Api Key Authentication (ApiKey):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    lat = 3.4 # float | 
lng = 3.4 # float | 
within_country = 'within_country_example' # str |  (optional)

    try:
        api_response = api_instance.geocoding_reverse_search(lat, lng, within_country=within_country)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->geocoding_reverse_search: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    lat = 3.4 # float | 
lng = 3.4 # float | 
within_country = 'within_country_example' # str |  (optional)

    try:
        api_response = api_instance.geocoding_reverse_search(lat, lng, within_country=within_country)
        pprint(api_response)
    except ApiException as e:
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
> ResponseGeocoding geocoding_search(query, focus_lat=focus_lat, focus_lng=focus_lng, within_country=within_country)



### Example

* Api Key Authentication (ApiKey):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    query = 'query_example' # str | 
focus_lat = 3.4 # float |  (optional)
focus_lng = 3.4 # float |  (optional)
within_country = 'within_country_example' # str |  (optional)

    try:
        api_response = api_instance.geocoding_search(query, focus_lat=focus_lat, focus_lng=focus_lng, within_country=within_country)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->geocoding_search: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    query = 'query_example' # str | 
focus_lat = 3.4 # float |  (optional)
focus_lng = 3.4 # float |  (optional)
within_country = 'within_country_example' # str |  (optional)

    try:
        api_response = api_instance.geocoding_search(query, focus_lat=focus_lat, focus_lng=focus_lng, within_country=within_country)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    
    try:
        api_response = api_instance.map_info()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->map_info: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    
    try:
        api_response = api_instance.map_info()
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_routes = openapi_client.RequestRoutes() # RequestRoutes | 

    try:
        api_response = api_instance.routes(request_routes)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->routes: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_routes = openapi_client.RequestRoutes() # RequestRoutes | 

    try:
        api_response = api_instance.routes(request_routes)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_supported_locations = openapi_client.RequestSupportedLocations() # RequestSupportedLocations | 

    try:
        api_response = api_instance.supported_locations(request_supported_locations)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->supported_locations: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_supported_locations = openapi_client.RequestSupportedLocations() # RequestSupportedLocations | 

    try:
        api_response = api_instance.supported_locations(request_supported_locations)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter = openapi_client.RequestTimeFilter() # RequestTimeFilter | 

    try:
        api_response = api_instance.time_filter(request_time_filter)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_filter: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter = openapi_client.RequestTimeFilter() # RequestTimeFilter | 

    try:
        api_response = api_instance.time_filter(request_time_filter)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_fast = openapi_client.RequestTimeFilterFast() # RequestTimeFilterFast | 

    try:
        api_response = api_instance.time_filter_fast(request_time_filter_fast)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_filter_fast: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_fast = openapi_client.RequestTimeFilterFast() # RequestTimeFilterFast | 

    try:
        api_response = api_instance.time_filter_fast(request_time_filter_fast)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcode_districts = openapi_client.RequestTimeFilterPostcodeDistricts() # RequestTimeFilterPostcodeDistricts | 

    try:
        api_response = api_instance.time_filter_postcode_districts(request_time_filter_postcode_districts)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcode_districts: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcode_districts = openapi_client.RequestTimeFilterPostcodeDistricts() # RequestTimeFilterPostcodeDistricts | 

    try:
        api_response = api_instance.time_filter_postcode_districts(request_time_filter_postcode_districts)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcode_sectors = openapi_client.RequestTimeFilterPostcodeSectors() # RequestTimeFilterPostcodeSectors | 

    try:
        api_response = api_instance.time_filter_postcode_sectors(request_time_filter_postcode_sectors)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcode_sectors: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcode_sectors = openapi_client.RequestTimeFilterPostcodeSectors() # RequestTimeFilterPostcodeSectors | 

    try:
        api_response = api_instance.time_filter_postcode_sectors(request_time_filter_postcode_sectors)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcodes = openapi_client.RequestTimeFilterPostcodes() # RequestTimeFilterPostcodes | 

    try:
        api_response = api_instance.time_filter_postcodes(request_time_filter_postcodes)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_filter_postcodes: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_filter_postcodes = openapi_client.RequestTimeFilterPostcodes() # RequestTimeFilterPostcodes | 

    try:
        api_response = api_instance.time_filter_postcodes(request_time_filter_postcodes)
        pprint(api_response)
    except ApiException as e:
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
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_map = openapi_client.RequestTimeMap() # RequestTimeMap | 

    try:
        api_response = api_instance.time_map(request_time_map)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->time_map: %s\n" % e)
```

* Api Key Authentication (ApplicationId):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApiKey': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Configure API key authorization: ApplicationId
configuration = openapi_client.Configuration(
    host = "https://api.traveltimeapp.com",
    api_key = {
        'ApplicationId': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApplicationId'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    request_time_map = openapi_client.RequestTimeMap() # RequestTimeMap | 

    try:
        api_response = api_instance.time_map(request_time_map)
        pprint(api_response)
    except ApiException as e:
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

