# DefaultAPI

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DefaultAPI_geocodingReverseSearch**](DefaultAPI.md#DefaultAPI_geocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**DefaultAPI_geocodingSearch**](DefaultAPI.md#DefaultAPI_geocodingSearch) | **GET** /v4/geocoding/search | 
[**DefaultAPI_mapInfo**](DefaultAPI.md#DefaultAPI_mapInfo) | **GET** /v4/map-info | 
[**DefaultAPI_routes**](DefaultAPI.md#DefaultAPI_routes) | **POST** /v4/routes | 
[**DefaultAPI_supportedLocations**](DefaultAPI.md#DefaultAPI_supportedLocations) | **POST** /v4/supported-locations | 
[**DefaultAPI_timeFilter**](DefaultAPI.md#DefaultAPI_timeFilter) | **POST** /v4/time-filter | 
[**DefaultAPI_timeFilterFast**](DefaultAPI.md#DefaultAPI_timeFilterFast) | **POST** /v4/time-filter/fast | 
[**DefaultAPI_timeFilterPostcodeDistricts**](DefaultAPI.md#DefaultAPI_timeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**DefaultAPI_timeFilterPostcodeSectors**](DefaultAPI.md#DefaultAPI_timeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**DefaultAPI_timeFilterPostcodes**](DefaultAPI.md#DefaultAPI_timeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**DefaultAPI_timeMap**](DefaultAPI.md#DefaultAPI_timeMap) | **POST** /v4/time-map | 


# **DefaultAPI_geocodingReverseSearch**
```c
response_geocoding_t* DefaultAPI_geocodingReverseSearch(apiClient_t *apiClient, double lat, double lng, char * within.country);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**lat** | **double** |  | 
**lng** | **double** |  | 
**within.country** | **char \*** |  | [optional] 

### Return type

[response_geocoding_t](response_geocoding.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_geocodingSearch**
```c
response_geocoding_t* DefaultAPI_geocodingSearch(apiClient_t *apiClient, char * query, double focus.lat, double focus.lng, char * within.country);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**query** | **char \*** |  | 
**focus.lat** | **double** |  | [optional] 
**focus.lng** | **double** |  | [optional] 
**within.country** | **char \*** |  | [optional] 

### Return type

[response_geocoding_t](response_geocoding.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mapInfo**
```c
response_map_info_t* DefaultAPI_mapInfo(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 

### Return type

[response_map_info_t](response_map_info.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_routes**
```c
response_routes_t* DefaultAPI_routes(apiClient_t *apiClient, request_routes_t * request_routes);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_routes** | **[request_routes_t](request_routes.md) \*** |  | 

### Return type

[response_routes_t](response_routes.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_supportedLocations**
```c
response_supported_locations_t* DefaultAPI_supportedLocations(apiClient_t *apiClient, request_supported_locations_t * request_supported_locations);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_supported_locations** | **[request_supported_locations_t](request_supported_locations.md) \*** |  | 

### Return type

[response_supported_locations_t](response_supported_locations.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeFilter**
```c
response_time_filter_t* DefaultAPI_timeFilter(apiClient_t *apiClient, request_time_filter_t * request_time_filter);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_filter** | **[request_time_filter_t](request_time_filter.md) \*** |  | 

### Return type

[response_time_filter_t](response_time_filter.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeFilterFast**
```c
response_time_filter_fast_t* DefaultAPI_timeFilterFast(apiClient_t *apiClient, request_time_filter_fast_t * request_time_filter_fast);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_filter_fast** | **[request_time_filter_fast_t](request_time_filter_fast.md) \*** |  | 

### Return type

[response_time_filter_fast_t](response_time_filter_fast.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeFilterPostcodeDistricts**
```c
response_time_filter_postcode_districts_t* DefaultAPI_timeFilterPostcodeDistricts(apiClient_t *apiClient, request_time_filter_postcode_districts_t * request_time_filter_postcode_districts);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_filter_postcode_districts** | **[request_time_filter_postcode_districts_t](request_time_filter_postcode_districts.md) \*** |  | 

### Return type

[response_time_filter_postcode_districts_t](response_time_filter_postcode_districts.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeFilterPostcodeSectors**
```c
response_time_filter_postcode_sectors_t* DefaultAPI_timeFilterPostcodeSectors(apiClient_t *apiClient, request_time_filter_postcode_sectors_t * request_time_filter_postcode_sectors);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_filter_postcode_sectors** | **[request_time_filter_postcode_sectors_t](request_time_filter_postcode_sectors.md) \*** |  | 

### Return type

[response_time_filter_postcode_sectors_t](response_time_filter_postcode_sectors.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeFilterPostcodes**
```c
response_time_filter_postcodes_t* DefaultAPI_timeFilterPostcodes(apiClient_t *apiClient, request_time_filter_postcodes_t * request_time_filter_postcodes);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_filter_postcodes** | **[request_time_filter_postcodes_t](request_time_filter_postcodes.md) \*** |  | 

### Return type

[response_time_filter_postcodes_t](response_time_filter_postcodes.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_timeMap**
```c
response_time_map_t* DefaultAPI_timeMap(apiClient_t *apiClient, request_time_map_t * request_time_map);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration | 
**request_time_map** | **[request_time_map_t](request_time_map.md) \*** |  | 

### Return type

[response_time_map_t](response_time_map.md) *


### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

