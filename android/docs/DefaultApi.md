# DefaultApi

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

> ResponseGeocoding geocodingReverseSearch(lat, lng, withinCountry)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Double lat = null; // Double | 
Double lng = null; // Double | 
String withinCountry = null; // String | 
try {
    ResponseGeocoding result = apiInstance.geocodingReverseSearch(lat, lng, withinCountry);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#geocodingReverseSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**|  | [default to null]
 **lng** | **Double**|  | [default to null]
 **withinCountry** | **String**|  | [optional] [default to null]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geocodingSearch

> ResponseGeocoding geocodingSearch(query, focusLat, focusLng, withinCountry)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = null; // String | 
Double focusLat = null; // Double | 
Double focusLng = null; // Double | 
String withinCountry = null; // String | 
try {
    ResponseGeocoding result = apiInstance.geocodingSearch(query, focusLat, focusLng, withinCountry);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#geocodingSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [default to null]
 **focusLat** | **Double**|  | [optional] [default to null]
 **focusLng** | **Double**|  | [optional] [default to null]
 **withinCountry** | **String**|  | [optional] [default to null]

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

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ResponseMapInfo result = apiInstance.mapInfo();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mapInfo");
    e.printStackTrace();
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


## routes

> ResponseRoutes routes(requestRoutes)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestRoutes requestRoutes = new RequestRoutes(); // RequestRoutes | 
try {
    ResponseRoutes result = apiInstance.routes(requestRoutes);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#routes");
    e.printStackTrace();
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


## supportedLocations

> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestSupportedLocations requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 
try {
    ResponseSupportedLocations result = apiInstance.supportedLocations(requestSupportedLocations);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#supportedLocations");
    e.printStackTrace();
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


## timeFilter

> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeFilter requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 
try {
    ResponseTimeFilter result = apiInstance.timeFilter(requestTimeFilter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeFilter");
    e.printStackTrace();
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


## timeFilterFast

> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeFilterFast requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 
try {
    ResponseTimeFilterFast result = apiInstance.timeFilterFast(requestTimeFilterFast);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeFilterFast");
    e.printStackTrace();
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


## timeFilterPostcodeDistricts

> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 
try {
    ResponseTimeFilterPostcodeDistricts result = apiInstance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeFilterPostcodeDistricts");
    e.printStackTrace();
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


## timeFilterPostcodeSectors

> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 
try {
    ResponseTimeFilterPostcodeSectors result = apiInstance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeFilterPostcodeSectors");
    e.printStackTrace();
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


## timeFilterPostcodes

> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeFilterPostcodes requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 
try {
    ResponseTimeFilterPostcodes result = apiInstance.timeFilterPostcodes(requestTimeFilterPostcodes);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeFilterPostcodes");
    e.printStackTrace();
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


## timeMap

> ResponseTimeMap timeMap(requestTimeMap)



### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
RequestTimeMap requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 
try {
    ResponseTimeMap result = apiInstance.timeMap(requestTimeMap);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#timeMap");
    e.printStackTrace();
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

