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
> ResponseGeocoding geocodingReverseSearch(lat, lng, withinPeriodCountry)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val lat : kotlin.Double = 1.2 // kotlin.Double | 
val lng : kotlin.Double = 1.2 // kotlin.Double | 
val withinPeriodCountry : kotlin.String = withinPeriodCountry_example // kotlin.String | 
try {
    val result : ResponseGeocoding = apiInstance.geocodingReverseSearch(lat, lng, withinPeriodCountry)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#geocodingReverseSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#geocodingReverseSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **kotlin.Double**|  |
 **lng** | **kotlin.Double**|  |
 **withinPeriodCountry** | **kotlin.String**|  | [optional]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="geocodingSearch"></a>
# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, focusPeriodLat, focusPeriodLng, withinPeriodCountry)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val query : kotlin.String = query_example // kotlin.String | 
val focusPeriodLat : kotlin.Double = 1.2 // kotlin.Double | 
val focusPeriodLng : kotlin.Double = 1.2 // kotlin.Double | 
val withinPeriodCountry : kotlin.String = withinPeriodCountry_example // kotlin.String | 
try {
    val result : ResponseGeocoding = apiInstance.geocodingSearch(query, focusPeriodLat, focusPeriodLng, withinPeriodCountry)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#geocodingSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#geocodingSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**|  |
 **focusPeriodLat** | **kotlin.Double**|  | [optional]
 **focusPeriodLng** | **kotlin.Double**|  | [optional]
 **withinPeriodCountry** | **kotlin.String**|  | [optional]

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="mapInfo"></a>
# **mapInfo**
> ResponseMapInfo mapInfo()



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ResponseMapInfo = apiInstance.mapInfo()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mapInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mapInfo")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseMapInfo**](ResponseMapInfo.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="routes"></a>
# **routes**
> ResponseRoutes routes(requestRoutes)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestRoutes : RequestRoutes =  // RequestRoutes | 
try {
    val result : ResponseRoutes = apiInstance.routes(requestRoutes)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#routes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#routes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**RequestRoutes**](RequestRoutes.md)|  |

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="supportedLocations"></a>
# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestSupportedLocations : RequestSupportedLocations =  // RequestSupportedLocations | 
try {
    val result : ResponseSupportedLocations = apiInstance.supportedLocations(requestSupportedLocations)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#supportedLocations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#supportedLocations")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  |

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeFilter"></a>
# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeFilter : RequestTimeFilter =  // RequestTimeFilter | 
try {
    val result : ResponseTimeFilter = apiInstance.timeFilter(requestTimeFilter)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeFilter")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeFilter")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  |

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeFilterFast"></a>
# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeFilterFast : RequestTimeFilterFast =  // RequestTimeFilterFast | 
try {
    val result : ResponseTimeFilterFast = apiInstance.timeFilterFast(requestTimeFilterFast)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeFilterFast")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeFilterFast")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  |

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeFilterPostcodeDistricts"></a>
# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeFilterPostcodeDistricts : RequestTimeFilterPostcodeDistricts =  // RequestTimeFilterPostcodeDistricts | 
try {
    val result : ResponseTimeFilterPostcodeDistricts = apiInstance.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeFilterPostcodeDistricts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeFilterPostcodeDistricts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  |

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeFilterPostcodeSectors"></a>
# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeFilterPostcodeSectors : RequestTimeFilterPostcodeSectors =  // RequestTimeFilterPostcodeSectors | 
try {
    val result : ResponseTimeFilterPostcodeSectors = apiInstance.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeFilterPostcodeSectors")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeFilterPostcodeSectors")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  |

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeFilterPostcodes"></a>
# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeFilterPostcodes : RequestTimeFilterPostcodes =  // RequestTimeFilterPostcodes | 
try {
    val result : ResponseTimeFilterPostcodes = apiInstance.timeFilterPostcodes(requestTimeFilterPostcodes)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeFilterPostcodes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeFilterPostcodes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  |

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="timeMap"></a>
# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
val requestTimeMap : RequestTimeMap =  // RequestTimeMap | 
try {
    val result : ResponseTimeMap = apiInstance.timeMap(requestTimeMap)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#timeMap")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#timeMap")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**RequestTimeMap**](RequestTimeMap.md)|  |

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-Api-Key"] = ""
    ApiClient.apiKeyPrefix["X-Api-Key"] = ""
Configure ApplicationId:
    ApiClient.apiKey["X-Application-Id"] = ""
    ApiClient.apiKeyPrefix["X-Application-Id"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

