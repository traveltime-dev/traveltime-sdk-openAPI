# DEFAULT_API

All URIs are relative to *https://api.traveltimeapp.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**geocoding_reverse_search**](DEFAULT_API.md#geocoding_reverse_search) | **Get** /v4/geocoding/reverse | 
[**geocoding_search**](DEFAULT_API.md#geocoding_search) | **Get** /v4/geocoding/search | 
[**map_info**](DEFAULT_API.md#map_info) | **Get** /v4/map-info | 
[**routes**](DEFAULT_API.md#routes) | **Post** /v4/routes | 
[**supported_locations**](DEFAULT_API.md#supported_locations) | **Post** /v4/supported-locations | 
[**time_filter**](DEFAULT_API.md#time_filter) | **Post** /v4/time-filter | 
[**time_filter_fast**](DEFAULT_API.md#time_filter_fast) | **Post** /v4/time-filter/fast | 
[**time_filter_postcode_districts**](DEFAULT_API.md#time_filter_postcode_districts) | **Post** /v4/time-filter/postcode-districts | 
[**time_filter_postcode_sectors**](DEFAULT_API.md#time_filter_postcode_sectors) | **Post** /v4/time-filter/postcode-sectors | 
[**time_filter_postcodes**](DEFAULT_API.md#time_filter_postcodes) | **Post** /v4/time-filter/postcodes | 
[**time_map**](DEFAULT_API.md#time_map) | **Post** /v4/time-map | 


# **geocoding_reverse_search**
> geocoding_reverse_search (lat: REAL_64 ; lng: REAL_64 ; within_country:  detachable STRING_32 ): detachable RESPONSE_GEOCODING
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **REAL_64**|  | [default to null]
 **lng** | **REAL_64**|  | [default to null]
 **within_country** | **STRING_32**|  | [optional] [default to null]

### Return type

[**RESPONSE_GEOCODING**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocoding_search**
> geocoding_search (query: STRING_32 ; focus_lat:  detachable REAL_64 ; focus_lng:  detachable REAL_64 ; within_country:  detachable STRING_32 ): detachable RESPONSE_GEOCODING
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **STRING_32**|  | [default to null]
 **focus_lat** | **REAL_64**|  | [optional] [default to null]
 **focus_lng** | **REAL_64**|  | [optional] [default to null]
 **within_country** | **STRING_32**|  | [optional] [default to null]

### Return type

[**RESPONSE_GEOCODING**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_info**
> map_info : detachable RESPONSE_MAP_INFO
	




### Parameters
This endpoint does not need any parameter.

### Return type

[**RESPONSE_MAP_INFO**](ResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
> routes (request_routes: REQUEST_ROUTES ): detachable RESPONSE_ROUTES
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_routes** | [**REQUEST_ROUTES**](REQUEST_ROUTES.md)|  | 

### Return type

[**RESPONSE_ROUTES**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supported_locations**
> supported_locations (request_supported_locations: REQUEST_SUPPORTED_LOCATIONS ): detachable RESPONSE_SUPPORTED_LOCATIONS
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_supported_locations** | [**REQUEST_SUPPORTED_LOCATIONS**](REQUEST_SUPPORTED_LOCATIONS.md)|  | 

### Return type

[**RESPONSE_SUPPORTED_LOCATIONS**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter**
> time_filter (request_time_filter: REQUEST_TIME_FILTER ): detachable RESPONSE_TIME_FILTER
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter** | [**REQUEST_TIME_FILTER**](REQUEST_TIME_FILTER.md)|  | 

### Return type

[**RESPONSE_TIME_FILTER**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_fast**
> time_filter_fast (request_time_filter_fast: REQUEST_TIME_FILTER_FAST ): detachable RESPONSE_TIME_FILTER_FAST
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_fast** | [**REQUEST_TIME_FILTER_FAST**](REQUEST_TIME_FILTER_FAST.md)|  | 

### Return type

[**RESPONSE_TIME_FILTER_FAST**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_districts**
> time_filter_postcode_districts (request_time_filter_postcode_districts: REQUEST_TIME_FILTER_POSTCODE_DISTRICTS ): detachable RESPONSE_TIME_FILTER_POSTCODE_DISTRICTS
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_districts** | [**REQUEST_TIME_FILTER_POSTCODE_DISTRICTS**](REQUEST_TIME_FILTER_POSTCODE_DISTRICTS.md)|  | 

### Return type

[**RESPONSE_TIME_FILTER_POSTCODE_DISTRICTS**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_sectors**
> time_filter_postcode_sectors (request_time_filter_postcode_sectors: REQUEST_TIME_FILTER_POSTCODE_SECTORS ): detachable RESPONSE_TIME_FILTER_POSTCODE_SECTORS
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_sectors** | [**REQUEST_TIME_FILTER_POSTCODE_SECTORS**](REQUEST_TIME_FILTER_POSTCODE_SECTORS.md)|  | 

### Return type

[**RESPONSE_TIME_FILTER_POSTCODE_SECTORS**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcodes**
> time_filter_postcodes (request_time_filter_postcodes: REQUEST_TIME_FILTER_POSTCODES ): detachable RESPONSE_TIME_FILTER_POSTCODES
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcodes** | [**REQUEST_TIME_FILTER_POSTCODES**](REQUEST_TIME_FILTER_POSTCODES.md)|  | 

### Return type

[**RESPONSE_TIME_FILTER_POSTCODES**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_map**
> time_map (request_time_map: REQUEST_TIME_MAP ): detachable RESPONSE_TIME_MAP
	




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_map** | [**REQUEST_TIME_MAP**](REQUEST_TIME_MAP.md)|  | 

### Return type

[**RESPONSE_TIME_MAP**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

