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
> ResponseGeocoding geocodingReverseSearch(lat, lng, withinPeriodcountry)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**|  | [default to null]
 **lng** | **Double**|  | [default to null]
 **withinPeriodcountry** | **String**|  | [optional] [default to null]

### Return type

[**ResponseGeocoding**](..//Models/ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="geocodingSearch"></a>
# **geocodingSearch**
> ResponseGeocoding geocodingSearch(query, focusPeriodlat, focusPeriodlng, withinPeriodcountry)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [default to null]
 **focusPeriodlat** | **Double**|  | [optional] [default to null]
 **focusPeriodlng** | **Double**|  | [optional] [default to null]
 **withinPeriodcountry** | **String**|  | [optional] [default to null]

### Return type

[**ResponseGeocoding**](..//Models/ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="mapInfo"></a>
# **mapInfo**
> ResponseMapInfo mapInfo()



### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseMapInfo**](..//Models/ResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="routes"></a>
# **routes**
> ResponseRoutes routes(requestRoutes)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**RequestRoutes**](..//Models/RequestRoutes.md)|  |

### Return type

[**ResponseRoutes**](..//Models/ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="supportedLocations"></a>
# **supportedLocations**
> ResponseSupportedLocations supportedLocations(requestSupportedLocations)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**RequestSupportedLocations**](..//Models/RequestSupportedLocations.md)|  |

### Return type

[**ResponseSupportedLocations**](..//Models/ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeFilter"></a>
# **timeFilter**
> ResponseTimeFilter timeFilter(requestTimeFilter)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**RequestTimeFilter**](..//Models/RequestTimeFilter.md)|  |

### Return type

[**ResponseTimeFilter**](..//Models/ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeFilterFast"></a>
# **timeFilterFast**
> ResponseTimeFilterFast timeFilterFast(requestTimeFilterFast)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**RequestTimeFilterFast**](..//Models/RequestTimeFilterFast.md)|  |

### Return type

[**ResponseTimeFilterFast**](..//Models/ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeFilterPostcodeDistricts"></a>
# **timeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](..//Models/RequestTimeFilterPostcodeDistricts.md)|  |

### Return type

[**ResponseTimeFilterPostcodeDistricts**](..//Models/ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeFilterPostcodeSectors"></a>
# **timeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](..//Models/RequestTimeFilterPostcodeSectors.md)|  |

### Return type

[**ResponseTimeFilterPostcodeSectors**](..//Models/ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeFilterPostcodes"></a>
# **timeFilterPostcodes**
> ResponseTimeFilterPostcodes timeFilterPostcodes(requestTimeFilterPostcodes)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](..//Models/RequestTimeFilterPostcodes.md)|  |

### Return type

[**ResponseTimeFilterPostcodes**](..//Models/ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="timeMap"></a>
# **timeMap**
> ResponseTimeMap timeMap(requestTimeMap)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**RequestTimeMap**](..//Models/RequestTimeMap.md)|  |

### Return type

[**ResponseTimeMap**](..//Models/ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

