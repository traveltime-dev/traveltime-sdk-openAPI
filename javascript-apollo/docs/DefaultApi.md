# TravelTimeApi.DefaultApi

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



## geocodingReverseSearch

> ResponseGeocoding geocodingReverseSearch(lat, lng, opts)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let lat = 3.4; // Number | 
let lng = 3.4; // Number | 
let opts = {
  'withinCountry': "withinCountry_example" // String | 
};
apiInstance.geocodingReverseSearch(lat, lng, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Number**|  | 
 **lng** | **Number**|  | 
 **withinCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geocodingSearch

> ResponseGeocoding geocodingSearch(query, opts)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let query = "query_example"; // String | 
let opts = {
  'focusLat': 3.4, // Number | 
  'focusLng': 3.4, // Number | 
  'withinCountry': "withinCountry_example" // String | 
};
apiInstance.geocodingSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **focusLat** | **Number**|  | [optional] 
 **focusLng** | **Number**|  | [optional] 
 **withinCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mapInfo

> ResponseMapInfo mapInfo()



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
apiInstance.mapInfo((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## routes

> ResponseRoutes routes(requestRoutes)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestRoutes = new TravelTimeApi.RequestRoutes(); // RequestRoutes | 
apiInstance.routes(requestRoutes, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## supportedLocations

> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestSupportedLocations = new TravelTimeApi.RequestSupportedLocations(); // RequestSupportedLocations | 
apiInstance.supportedLocations(requestSupportedLocations, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeFilter

> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeFilter = new TravelTimeApi.RequestTimeFilter(); // RequestTimeFilter | 
apiInstance.timeFilter(requestTimeFilter, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeFilterFast

> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeFilterFast = new TravelTimeApi.RequestTimeFilterFast(); // RequestTimeFilterFast | 
apiInstance.timeFilterFast(requestTimeFilterFast, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeFilterPostcodeDistricts

> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeFilterPostcodeDistricts = new TravelTimeApi.RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 
apiInstance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeFilterPostcodeSectors

> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeFilterPostcodeSectors = new TravelTimeApi.RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 
apiInstance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeFilterPostcodes

> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeFilterPostcodes = new TravelTimeApi.RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 
apiInstance.timeFilterPostcodes(requestTimeFilterPostcodes, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## timeMap

> ResponseTimeMap timeMap(requestTimeMap)



### Example

```javascript
import TravelTimeApi from 'travel_time_api';
let defaultClient = TravelTimeApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: ApplicationId
let ApplicationId = defaultClient.authentications['ApplicationId'];
ApplicationId.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.apiKeyPrefix = 'Token';

let apiInstance = new TravelTimeApi.DefaultApi();
let requestTimeMap = new TravelTimeApi.RequestTimeMap(); // RequestTimeMap | 
apiInstance.timeMap(requestTimeMap, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

