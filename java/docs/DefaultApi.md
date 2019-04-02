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


<a name="geocodingReverseSearch"></a>
# **geocodingReverseSearch**
> ResponseGeocoding geocodingReverseSearch(focusLat, focusLng, withinCountry)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

DefaultApi apiInstance = new DefaultApi();
Double focusLat = 3.4D; // Double | 
Double focusLng = 3.4D; // Double | 
String withinCountry = "withinCountry_example"; // String | 
try {
    ResponseGeocoding result = apiInstance.geocodingReverseSearch(focusLat, focusLng, withinCountry);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#geocodingReverseSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focusLat** | **Double**|  |
 **focusLng** | **Double**|  |
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
> ResponseGeocoding geocodingSearch(query, withinCountry, focusLat, focusLng)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

DefaultApi apiInstance = new DefaultApi();
String query = "query_example"; // String | 
String withinCountry = "withinCountry_example"; // String | 
Double focusLat = 3.4D; // Double | 
Double focusLng = 3.4D; // Double | 
try {
    ResponseGeocoding result = apiInstance.geocodingSearch(query, withinCountry, focusLat, focusLng);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#geocodingSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  |
 **withinCountry** | **String**|  | [optional]
 **focusLat** | **Double**|  | [optional]
 **focusLng** | **Double**|  | [optional]

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
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="routes"></a>
# **routes**
> ResponseRoutes routes(requestRoutes)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="supportedLocations"></a>
# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeFilter"></a>
# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeFilterFast"></a>
# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeFilterPostcodeDistricts"></a>
# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeFilterPostcodeSectors"></a>
# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeFilterPostcodes"></a>
# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

<a name="timeMap"></a>
# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import org.openapitools.client.ApiException;
//import org.openapitools.client.Configuration;
//import org.openapitools.client.auth.*;
//import org.openapitools.client.api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: ApiKey
ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
ApiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.setApiKeyPrefix("Token");

// Configure API key authorization: ApplicationId
ApiKeyAuth ApplicationId = (ApiKeyAuth) defaultClient.getAuthentication("ApplicationId");
ApplicationId.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApplicationId.setApiKeyPrefix("Token");

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

