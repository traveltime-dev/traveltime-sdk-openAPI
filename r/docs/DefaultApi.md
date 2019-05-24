# DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GeocodingReverseSearch**](DefaultApi.md#GeocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**GeocodingSearch**](DefaultApi.md#GeocodingSearch) | **GET** /v4/geocoding/search | 
[**MapInfo**](DefaultApi.md#MapInfo) | **GET** /v4/map-info | 
[**Routes**](DefaultApi.md#Routes) | **POST** /v4/routes | 
[**SupportedLocations**](DefaultApi.md#SupportedLocations) | **POST** /v4/supported-locations | 
[**TimeFilter**](DefaultApi.md#TimeFilter) | **POST** /v4/time-filter | 
[**TimeFilterFast**](DefaultApi.md#TimeFilterFast) | **POST** /v4/time-filter/fast | 
[**TimeFilterPostcodeDistricts**](DefaultApi.md#TimeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**TimeFilterPostcodeSectors**](DefaultApi.md#TimeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**TimeFilterPostcodes**](DefaultApi.md#TimeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**TimeMap**](DefaultApi.md#TimeMap) | **POST** /v4/time-map | 


# **GeocodingReverseSearch**
> ResponseGeocoding GeocodingReverseSearch(focus.lat, focus.lng, within.country=var.within.country)



### Example
```R
library(traveltimeplatform)

var.focus.lat <- 3.4 # numeric | 
var.focus.lng <- 3.4 # numeric | 
var.within.country <- 'within.country_example' # character | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GeocodingReverseSearch(var.focus.lat, var.focus.lng, within.country=var.within.country)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focus.lat** | **numeric**|  | 
 **focus.lng** | **numeric**|  | 
 **within.country** | **character**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GeocodingSearch**
> ResponseGeocoding GeocodingSearch(query, within.country=var.within.country, focus.lat=var.focus.lat, focus.lng=var.focus.lng)



### Example
```R
library(traveltimeplatform)

var.query <- 'query_example' # character | 
var.within.country <- 'within.country_example' # character | 
var.focus.lat <- 3.4 # numeric | 
var.focus.lng <- 3.4 # numeric | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GeocodingSearch(var.query, within.country=var.within.country, focus.lat=var.focus.lat, focus.lng=var.focus.lng)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**|  | 
 **within.country** | **character**|  | [optional] 
 **focus.lat** | **numeric**|  | [optional] 
 **focus.lng** | **numeric**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **MapInfo**
> ResponseMapInfo MapInfo()



### Example
```R
library(traveltimeplatform)


api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$MapInfo()
dput(result)
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



# **Routes**
> ResponseRoutes Routes(request.routes)



### Example
```R
library(traveltimeplatform)

var.request.routes <- RequestRoutes$new(list(RequestLocation$new("id_example", Coords$new(123, 123))), list(RequestRoutesDepartureSearch$new("id_example", "departure_location_id_example", list("arrival_location_ids_example"), RequestTransportation$new("type_example", 123, 123, 123, 123, 123), "departure_time_example", list(RequestRoutesProperty$new()), RequestRangeFull$new("enabled_example", 123, 123))), list(RequestRoutesArrivalSearch$new("id_example", list("departure_location_ids_example"), "arrival_location_id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), "arrival_time_example", list(RequestRoutesProperty$new()), RequestRangeFull$new("enabled_example", 123, 123)))) # RequestRoutes | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Routes(var.request.routes)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.routes** | [**RequestRoutes**](RequestRoutes.md)|  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **SupportedLocations**
> ResponseSupportedLocations SupportedLocations(request.supported.locations)



### Example
```R
library(traveltimeplatform)

var.request.supported.locations <- RequestSupportedLocations$new(list(RequestLocation$new("id_example", Coords$new(123, 123)))) # RequestSupportedLocations | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SupportedLocations(var.request.supported.locations)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.supported.locations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeFilter**
> ResponseTimeFilter TimeFilter(request.time.filter)



### Example
```R
library(traveltimeplatform)

var.request.time.filter <- RequestTimeFilter$new(list(RequestLocation$new("id_example", Coords$new(123, 123))), list(RequestTimeFilterDepartureSearch$new("id_example", "departure_location_id_example", list("arrival_location_ids_example"), RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "departure_time_example", list(RequestTimeFilterProperty$new()), RequestRangeFull$new("enabled_example", 123, 123))), list(RequestTimeFilterArrivalSearch$new("id_example", list("departure_location_ids_example"), "arrival_location_id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "arrival_time_example", list(RequestTimeFilterProperty$new()), RequestRangeFull$new("enabled_example", 123, 123)))) # RequestTimeFilter | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeFilter(var.request.time.filter)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.filter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeFilterFast**
> ResponseTimeFilterFast TimeFilterFast(request.time.filter.fast)



### Example
```R
library(traveltimeplatform)

var.request.time.filter.fast <- RequestTimeFilterFast$new(list(RequestLocation$new("id_example", Coords$new(123, 123))), RequestTimeFilterFastArrivalSearches$new(list(RequestTimeFilterFastArrivalManyToOneSearch$new("id_example", "arrival_location_id_example", list("departure_location_ids_example"), RequestTransportationFast$new("type_example"), 123, RequestArrivalTimePeriod$new(), list(RequestTimeFilterFastProperty$new()))), list(RequestTimeFilterFastArrivalOneToManySearch$new("id_example", "departure_location_id_example", list("arrival_location_ids_example"), RequestTransportationFast$new("type_example"), 123, RequestArrivalTimePeriod$new(), list(RequestTimeFilterFastProperty$new()))))) # RequestTimeFilterFast | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeFilterFast(var.request.time.filter.fast)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.filter.fast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts(request.time.filter.postcode.districts)



### Example
```R
library(traveltimeplatform)

var.request.time.filter.postcode.districts <- RequestTimeFilterPostcodeDistricts$new(list(RequestTimeFilterPostcodeDistrictsDepartureSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "departure_time_example", 123, list(RequestTimeFilterPostcodeDistrictsProperty$new()), RequestRangeFull$new("enabled_example", 123, 123))), list(RequestTimeFilterPostcodeDistrictsArrivalSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "arrival_time_example", 123, list(RequestTimeFilterPostcodeDistrictsProperty$new()), RequestRangeFull$new("enabled_example", 123, 123)))) # RequestTimeFilterPostcodeDistricts | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeFilterPostcodeDistricts(var.request.time.filter.postcode.districts)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.filter.postcode.districts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors(request.time.filter.postcode.sectors)



### Example
```R
library(traveltimeplatform)

var.request.time.filter.postcode.sectors <- RequestTimeFilterPostcodeSectors$new(list(RequestTimeFilterPostcodeSectorsDepartureSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "departure_time_example", 123, list(RequestTimeFilterPostcodeSectorsProperty$new()), RequestRangeFull$new("enabled_example", 123, 123))), list(RequestTimeFilterPostcodeSectorsArrivalSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "arrival_time_example", 123, list(RequestTimeFilterPostcodeSectorsProperty$new()), RequestRangeFull$new("enabled_example", 123, 123)))) # RequestTimeFilterPostcodeSectors | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeFilterPostcodeSectors(var.request.time.filter.postcode.sectors)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.filter.postcode.sectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeFilterPostcodes**
> ResponseTimeFilterPostcodes TimeFilterPostcodes(request.time.filter.postcodes)



### Example
```R
library(traveltimeplatform)

var.request.time.filter.postcodes <- RequestTimeFilterPostcodes$new(list(RequestTimeFilterPostcodesDepartureSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "departure_time_example", list(RequestTimeFilterPostcodesProperty$new()), RequestRangeFull$new("enabled_example", 123, 123))), list(RequestTimeFilterPostcodesArrivalSearch$new("id_example", RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "arrival_time_example", list(RequestTimeFilterPostcodesProperty$new()), RequestRangeFull$new("enabled_example", 123, 123)))) # RequestTimeFilterPostcodes | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeFilterPostcodes(var.request.time.filter.postcodes)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.filter.postcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **TimeMap**
> ResponseTimeMap TimeMap(request.time.map)



### Example
```R
library(traveltimeplatform)

var.request.time.map <- RequestTimeMap$new(list(RequestTimeMapDepartureSearch$new("id_example", Coords$new(123, 123), RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "departure_time_example", list(RequestTimeMapProperty$new()), RequestRangeNoMaxResults$new("enabled_example", 123))), list(RequestTimeMapArrivalSearch$new("id_example", Coords$new(123, 123), RequestTransportation$new("type_example", 123, 123, 123, 123, 123), 123, "arrival_time_example", list(RequestTimeMapProperty$new()), RequestRangeNoMaxResults$new("enabled_example", 123))), list(RequestUnionOnIntersection$new("id_example", list("search_ids_example"))), list(RequestUnionOnIntersection$new("id_example", list("search_ids_example")))) # RequestTimeMap | 

api.instance <- DefaultApi$new()
# Configure API key authorization: ApiKey
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApplicationId
api.instance$apiClient$apiKeys['X-Application-Id'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TimeMap(var.request.time.map)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.time.map** | [**RequestTimeMap**](RequestTimeMap.md)|  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json



