# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch**](DefaultApi.md#geocodingreversesearch) | **get** /v4/geocoding/reverse | 
[**geocodingSearch**](DefaultApi.md#geocodingsearch) | **get** /v4/geocoding/search | 
[**mapInfo**](DefaultApi.md#mapinfo) | **get** /v4/map-info | 
[**routes**](DefaultApi.md#routes) | **post** /v4/routes | 
[**supportedLocations**](DefaultApi.md#supportedlocations) | **post** /v4/supported-locations | 
[**timeFilter**](DefaultApi.md#timefilter) | **post** /v4/time-filter | 
[**timeFilterFast**](DefaultApi.md#timefilterfast) | **post** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts**](DefaultApi.md#timefilterpostcodedistricts) | **post** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors**](DefaultApi.md#timefilterpostcodesectors) | **post** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes**](DefaultApi.md#timefilterpostcodes) | **post** /v4/time-filter/postcodes | 
[**timeMap**](DefaultApi.md#timemap) | **post** /v4/time-map | 


# **geocodingReverseSearch**
> ResponseGeocoding geocodingReverseSearch(lat, lng, withinPeriodCountry)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var lat = 1.2; // double | 
var lng = 1.2; // double | 
var withinPeriodCountry = withinPeriodCountry_example; // String | 

try { 
    var result = api_instance.geocodingReverseSearch(lat, lng, withinPeriodCountry);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->geocodingReverseSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**|  | 
 **lng** | **double**|  | 
 **withinPeriodCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, focusPeriodLat, focusPeriodLng, withinPeriodCountry)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var query = query_example; // String | 
var focusPeriodLat = 1.2; // double | 
var focusPeriodLng = 1.2; // double | 
var withinPeriodCountry = withinPeriodCountry_example; // String | 

try { 
    var result = api_instance.geocodingSearch(query, focusPeriodLat, focusPeriodLng, withinPeriodCountry);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->geocodingSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **focusPeriodLat** | **double**|  | [optional] 
 **focusPeriodLng** | **double**|  | [optional] 
 **withinPeriodCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapInfo**
> ResponseMapInfo mapInfo()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();

try { 
    var result = api_instance.mapInfo();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mapInfo: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
> ResponseRoutes routes(requestRoutes)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestRoutes = new RequestRoutes(); // RequestRoutes | 

try { 
    var result = api_instance.routes(requestRoutes);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->routes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**RequestRoutes**](RequestRoutes.md)|  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 

try { 
    var result = api_instance.supportedLocations(requestSupportedLocations);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->supportedLocations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 

try { 
    var result = api_instance.timeFilter(requestTimeFilter);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 

try { 
    var result = api_instance.timeFilterFast(requestTimeFilterFast);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeFilterFast: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 

try { 
    var result = api_instance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeFilterPostcodeDistricts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 

try { 
    var result = api_instance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeFilterPostcodeSectors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 

try { 
    var result = api_instance.timeFilterPostcodes(requestTimeFilterPostcodes);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeFilterPostcodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ApplicationId
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApplicationId').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 

try { 
    var result = api_instance.timeMap(requestTimeMap);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->timeMap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**RequestTimeMap**](RequestTimeMap.md)|  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

