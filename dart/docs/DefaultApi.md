# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch**](DefaultApi.md#geocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**geocodingSearch**](DefaultApi.md#geocodingSearch) | **GET** /v4/geocoding/search | 
[**mapInfo**](DefaultApi.md#mapInfo) | **GET** /v4/map-info | 
[**routes**](DefaultApi.md#routes) | **POST** /v4/routes | 
[**supportedLocations**](DefaultApi.md#supportedLocations) | **POST** /v4/supported-locations | 
[**timeFilter**](DefaultApi.md#timeFilter) | **POST** /v4/time-filter | 
[**timeFilterFast**](DefaultApi.md#timeFilterFast) | **POST** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts**](DefaultApi.md#timeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors**](DefaultApi.md#timeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes**](DefaultApi.md#timeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**timeMap**](DefaultApi.md#timeMap) | **POST** /v4/time-map | 


# **geocodingReverseSearch**
> ResponseGeocoding geocodingReverseSearch(focusLat, focusLng, withinCountry)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var focusLat = 1.2; // double | 
var focusLng = 1.2; // double | 
var withinCountry = withinCountry_example; // String | 

try { 
    var result = api_instance.geocodingReverseSearch(focusLat, focusLng, withinCountry);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->geocodingReverseSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focusLat** | **double**|  | [default to null]
 **focusLng** | **double**|  | [default to null]
 **withinCountry** | **String**|  | [optional] [default to null]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, withinCountry, focusLat, focusLng)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var query = query_example; // String | 
var withinCountry = withinCountry_example; // String | 
var focusLat = 1.2; // double | 
var focusLng = 1.2; // double | 

try { 
    var result = api_instance.geocodingSearch(query, withinCountry, focusLat, focusLng);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->geocodingSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [default to null]
 **withinCountry** | **String**|  | [optional] [default to null]
 **focusLat** | **double**|  | [optional] [default to null]
 **focusLng** | **double**|  | [optional] [default to null]

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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();

try { 
    var result = api_instance.mapInfo();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->mapInfo: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestRoutes = new RequestRoutes(); // RequestRoutes | 

try { 
    var result = api_instance.routes(requestRoutes);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->routes: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 

try { 
    var result = api_instance.supportedLocations(requestSupportedLocations);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->supportedLocations: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 

try { 
    var result = api_instance.timeFilter(requestTimeFilter);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeFilter: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 

try { 
    var result = api_instance.timeFilterFast(requestTimeFilterFast);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeFilterFast: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 

try { 
    var result = api_instance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeFilterPostcodeDistricts: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 

try { 
    var result = api_instance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeFilterPostcodeSectors: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 

try { 
    var result = api_instance.timeFilterPostcodes(requestTimeFilterPostcodes);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeFilterPostcodes: $e\n");
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
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 

try { 
    var result = api_instance.timeMap(requestTimeMap);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->timeMap: $e\n");
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

