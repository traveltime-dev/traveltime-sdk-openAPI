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
> ResponseGeocoding geocodingReverseSearch(lat, lng, withinCountry)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    Double lat = 3.4D; // Double | 
    Double lng = 3.4D; // Double | 
    String withinCountry = "withinCountry_example"; // String | 
    try {
      ResponseGeocoding result = apiInstance.geocodingReverseSearch(lat, lng, withinCountry);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#geocodingReverseSearch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**|  |
 **lng** | **Double**|  |
 **withinCountry** | **String**|  | [optional]

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

<a name="geocodingSearch"></a>
# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, focusLat, focusLng, withinCountry)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String query = "query_example"; // String | 
    Double focusLat = 3.4D; // Double | 
    Double focusLng = 3.4D; // Double | 
    String withinCountry = "withinCountry_example"; // String | 
    try {
      ResponseGeocoding result = apiInstance.geocodingSearch(query, focusLat, focusLng, withinCountry);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#geocodingSearch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  |
 **focusLat** | **Double**|  | [optional]
 **focusLng** | **Double**|  | [optional]
 **withinCountry** | **String**|  | [optional]

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

<a name="mapInfo"></a>
# **mapInfo**
> ResponseMapInfo mapInfo()



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    try {
      ResponseMapInfo result = apiInstance.mapInfo();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#mapInfo");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="routes"></a>
# **routes**
> ResponseRoutes routes(requestRoutes)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestRoutes requestRoutes = new RequestRoutes(); // RequestRoutes | 
    try {
      ResponseRoutes result = apiInstance.routes(requestRoutes);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#routes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="supportedLocations"></a>
# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestSupportedLocations requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 
    try {
      ResponseSupportedLocations result = apiInstance.supportedLocations(requestSupportedLocations);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#supportedLocations");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeFilter"></a>
# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeFilter requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 
    try {
      ResponseTimeFilter result = apiInstance.timeFilter(requestTimeFilter);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeFilter");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeFilterFast"></a>
# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeFilterFast requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 
    try {
      ResponseTimeFilterFast result = apiInstance.timeFilterFast(requestTimeFilterFast);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeFilterFast");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeFilterPostcodeDistricts"></a>
# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 
    try {
      ResponseTimeFilterPostcodeDistricts result = apiInstance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeFilterPostcodeDistricts");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeFilterPostcodeSectors"></a>
# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 
    try {
      ResponseTimeFilterPostcodeSectors result = apiInstance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeFilterPostcodeSectors");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeFilterPostcodes"></a>
# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeFilterPostcodes requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 
    try {
      ResponseTimeFilterPostcodes result = apiInstance.timeFilterPostcodes(requestTimeFilterPostcodes);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeFilterPostcodes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

<a name="timeMap"></a>
# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.traveltimeapp.com");
    
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

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    RequestTimeMap requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 
    try {
      ResponseTimeMap result = apiInstance.timeMap(requestTimeMap);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#timeMap");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/) |  -  |
**0** | The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response) |  -  |

