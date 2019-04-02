# TravelTimePlatformApi.DefaultApi

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


<a name="geocodingReverseSearch"></a>
# **geocodingReverseSearch**
> ResponseGeocoding geocodingReverseSearch(focusLat, focusLng, opts)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var focusLat = 3.4; // Number | 
var focusLng = 3.4; // Number | 
var opts = {
  'withinCountry': "withinCountry_example" // String | 
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.geocodingReverseSearch(focusLat, focusLng, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focusLat** | **Number**|  | 
 **focusLng** | **Number**|  | 
 **withinCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="geocodingSearch"></a>
# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, opts)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var query = "query_example"; // String | 
var opts = {
  'withinCountry': "withinCountry_example", // String | 
  'focusLat': 3.4, // Number | 
  'focusLng': 3.4 // Number | 
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.geocodingSearch(query, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **withinCountry** | **String**|  | [optional] 
 **focusLat** | **Number**|  | [optional] 
 **focusLng** | **Number**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="mapInfo"></a>
# **mapInfo**
> ResponseMapInfo mapInfo()



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.mapInfo(callback);
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

<a name="routes"></a>
# **routes**
> ResponseRoutes routes(requestRoutes)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestRoutes = new TravelTimePlatformApi.RequestRoutes(); // RequestRoutes | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.routes(requestRoutes, callback);
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

<a name="supportedLocations"></a>
# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestSupportedLocations = new TravelTimePlatformApi.RequestSupportedLocations(); // RequestSupportedLocations | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.supportedLocations(requestSupportedLocations, callback);
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

<a name="timeFilter"></a>
# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeFilter = new TravelTimePlatformApi.RequestTimeFilter(); // RequestTimeFilter | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeFilter(requestTimeFilter, callback);
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

<a name="timeFilterFast"></a>
# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeFilterFast = new TravelTimePlatformApi.RequestTimeFilterFast(); // RequestTimeFilterFast | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeFilterFast(requestTimeFilterFast, callback);
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

<a name="timeFilterPostcodeDistricts"></a>
# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeFilterPostcodeDistricts = new TravelTimePlatformApi.RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, callback);
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

<a name="timeFilterPostcodeSectors"></a>
# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeFilterPostcodeSectors = new TravelTimePlatformApi.RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, callback);
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

<a name="timeFilterPostcodes"></a>
# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeFilterPostcodes = new TravelTimePlatformApi.RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeFilterPostcodes(requestTimeFilterPostcodes, callback);
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

<a name="timeMap"></a>
# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Example
```javascript
var TravelTimePlatformApi = require('travel_time_platform_api');
var defaultClient = TravelTimePlatformApi.ApiClient.instance;
// Configure API key authorization: ApiKey
var ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
var ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

var apiInstance = new TravelTimePlatformApi.DefaultApi();
var requestTimeMap = new TravelTimePlatformApi.RequestTimeMap(); // RequestTimeMap | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.timeMap(requestTimeMap, callback);
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

