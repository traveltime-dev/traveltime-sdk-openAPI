# DefaultAPI

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch**](DefaultAPI.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
[**geocodingSearch**](DefaultAPI.md#geocodingsearch) | **GET** /v4/geocoding/search | 
[**mapInfo**](DefaultAPI.md#mapinfo) | **GET** /v4/map-info | 
[**routes**](DefaultAPI.md#routes) | **POST** /v4/routes | 
[**supportedLocations**](DefaultAPI.md#supportedlocations) | **POST** /v4/supported-locations | 
[**timeFilter**](DefaultAPI.md#timefilter) | **POST** /v4/time-filter | 
[**timeFilterFast**](DefaultAPI.md#timefilterfast) | **POST** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts**](DefaultAPI.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors**](DefaultAPI.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes**](DefaultAPI.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
[**timeMap**](DefaultAPI.md#timemap) | **POST** /v4/time-map | 


# **geocodingReverseSearch**
```swift
    open class func geocodingReverseSearch(lat: Double, lng: Double, withinCountry: String? = nil, completion: @escaping (_ data: ResponseGeocoding?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let lat = 987 // Double | 
let lng = 987 // Double | 
let withinCountry = "withinCountry_example" // String |  (optional)

DefaultAPI.geocodingReverseSearch(lat: lat, lng: lng, withinCountry: withinCountry) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double** |  | 
 **lng** | **Double** |  | 
 **withinCountry** | **String** |  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodingSearch**
```swift
    open class func geocodingSearch(query: String, focusLat: Double? = nil, focusLng: Double? = nil, withinCountry: String? = nil, completion: @escaping (_ data: ResponseGeocoding?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | 
let focusLat = 987 // Double |  (optional)
let focusLng = 987 // Double |  (optional)
let withinCountry = "withinCountry_example" // String |  (optional)

DefaultAPI.geocodingSearch(query: query, focusLat: focusLat, focusLng: focusLng, withinCountry: withinCountry) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** |  | 
 **focusLat** | **Double** |  | [optional] 
 **focusLng** | **Double** |  | [optional] 
 **withinCountry** | **String** |  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapInfo**
```swift
    open class func mapInfo(completion: @escaping (_ data: ResponseMapInfo?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mapInfo() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
```swift
    open class func routes(requestRoutes: RequestRoutes, completion: @escaping (_ data: ResponseRoutes?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestRoutes = RequestRoutes(locations: [RequestLocation(id: "id_example", coords: Coords(lat: 123, lng: 123))], departureSearches: [RequestRoutesDepartureSearch(id: "id_example", departureLocationId: "departureLocationId_example", arrivalLocationIds: ["arrivalLocationIds_example"], transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), departureTime: Date(), properties: [RequestRoutesProperty()], range: RequestRangeFull(enabled: false, maxResults: 123, width: 123))], arrivalSearches: [RequestRoutesArrivalSearch(id: "id_example", departureLocationIds: ["departureLocationIds_example"], arrivalLocationId: "arrivalLocationId_example", transportation: nil, arrivalTime: Date(), properties: [nil], range: nil)]) // RequestRoutes | 

DefaultAPI.routes(requestRoutes: requestRoutes) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**RequestRoutes**](RequestRoutes.md) |  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supportedLocations**
```swift
    open class func supportedLocations(requestSupportedLocations: RequestSupportedLocations, completion: @escaping (_ data: ResponseSupportedLocations?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestSupportedLocations = RequestSupportedLocations(locations: [RequestLocation(id: "id_example", coords: Coords(lat: 123, lng: 123))]) // RequestSupportedLocations | 

DefaultAPI.supportedLocations(requestSupportedLocations: requestSupportedLocations) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**RequestSupportedLocations**](RequestSupportedLocations.md) |  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilter**
```swift
    open class func timeFilter(requestTimeFilter: RequestTimeFilter, completion: @escaping (_ data: ResponseTimeFilter?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeFilter = RequestTimeFilter(locations: [RequestLocation(id: "id_example", coords: Coords(lat: 123, lng: 123))], departureSearches: [RequestTimeFilterDepartureSearch(id: "id_example", departureLocationId: "departureLocationId_example", arrivalLocationIds: ["arrivalLocationIds_example"], transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), travelTime: 123, departureTime: Date(), properties: [RequestTimeFilterProperty()], range: RequestRangeFull(enabled: false, maxResults: 123, width: 123))], arrivalSearches: [RequestTimeFilterArrivalSearch(id: "id_example", departureLocationIds: ["departureLocationIds_example"], arrivalLocationId: "arrivalLocationId_example", transportation: nil, travelTime: 123, arrivalTime: Date(), properties: [nil], range: nil)]) // RequestTimeFilter | 

DefaultAPI.timeFilter(requestTimeFilter: requestTimeFilter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**RequestTimeFilter**](RequestTimeFilter.md) |  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterFast**
```swift
    open class func timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, completion: @escaping (_ data: ResponseTimeFilterFast?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeFilterFast = RequestTimeFilterFast(locations: [RequestLocation(id: "id_example", coords: Coords(lat: 123, lng: 123))], arrivalSearches: RequestTimeFilterFastArrivalSearches(manyToOne: [RequestTimeFilterFastArrivalManyToOneSearch(id: "id_example", arrivalLocationId: "arrivalLocationId_example", departureLocationIds: ["departureLocationIds_example"], transportation: RequestTransportationFast(type: "type_example"), travelTime: 123, arrivalTimePeriod: RequestArrivalTimePeriod(), properties: [RequestTimeFilterFastProperty()])], oneToMany: [RequestTimeFilterFastArrivalOneToManySearch(id: "id_example", departureLocationId: "departureLocationId_example", arrivalLocationIds: ["arrivalLocationIds_example"], transportation: nil, travelTime: 123, arrivalTimePeriod: nil, properties: [nil])])) // RequestTimeFilterFast | 

DefaultAPI.timeFilterFast(requestTimeFilterFast: requestTimeFilterFast) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md) |  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeDistricts**
```swift
    open class func timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, completion: @escaping (_ data: ResponseTimeFilterPostcodeDistricts?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeFilterPostcodeDistricts = RequestTimeFilterPostcodeDistricts(departureSearches: [RequestTimeFilterPostcodeDistrictsDepartureSearch(id: "id_example", transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), travelTime: 123, departureTime: Date(), reachablePostcodesThreshold: 123, properties: [RequestTimeFilterPostcodeDistrictsProperty()], range: RequestRangeFull(enabled: false, maxResults: 123, width: 123))], arrivalSearches: [RequestTimeFilterPostcodeDistrictsArrivalSearch(id: "id_example", transportation: nil, travelTime: 123, arrivalTime: Date(), reachablePostcodesThreshold: 123, properties: [nil], range: nil)]) // RequestTimeFilterPostcodeDistricts | 

DefaultAPI.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: requestTimeFilterPostcodeDistricts) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md) |  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeSectors**
```swift
    open class func timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, completion: @escaping (_ data: ResponseTimeFilterPostcodeSectors?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeFilterPostcodeSectors = RequestTimeFilterPostcodeSectors(departureSearches: [RequestTimeFilterPostcodeSectorsDepartureSearch(id: "id_example", transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), travelTime: 123, departureTime: Date(), reachablePostcodesThreshold: 123, properties: [RequestTimeFilterPostcodeSectorsProperty()], range: RequestRangeFull(enabled: false, maxResults: 123, width: 123))], arrivalSearches: [RequestTimeFilterPostcodeSectorsArrivalSearch(id: "id_example", transportation: nil, travelTime: 123, arrivalTime: Date(), reachablePostcodesThreshold: 123, properties: [nil], range: nil)]) // RequestTimeFilterPostcodeSectors | 

DefaultAPI.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: requestTimeFilterPostcodeSectors) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md) |  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodes**
```swift
    open class func timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, completion: @escaping (_ data: ResponseTimeFilterPostcodes?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeFilterPostcodes = RequestTimeFilterPostcodes(departureSearches: [RequestTimeFilterPostcodesDepartureSearch(id: "id_example", transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), travelTime: 123, departureTime: Date(), properties: [RequestTimeFilterPostcodesProperty()], range: RequestRangeFull(enabled: false, maxResults: 123, width: 123))], arrivalSearches: [RequestTimeFilterPostcodesArrivalSearch(id: "id_example", transportation: nil, travelTime: 123, arrivalTime: Date(), properties: [nil], range: nil)]) // RequestTimeFilterPostcodes | 

DefaultAPI.timeFilterPostcodes(requestTimeFilterPostcodes: requestTimeFilterPostcodes) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md) |  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeMap**
```swift
    open class func timeMap(requestTimeMap: RequestTimeMap, completion: @escaping (_ data: ResponseTimeMap?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestTimeMap = RequestTimeMap(departureSearches: [RequestTimeMapDepartureSearch(id: "id_example", coords: Coords(lat: 123, lng: 123), transportation: RequestTransportation(type: "type_example", disableBorderCrossing: false, ptChangeDelay: 123, walkingTime: 123, drivingTimeToStation: 123, cyclingTimeToStation: 123, parkingTime: 123, boardingTime: 123), travelTime: 123, departureTime: Date(), properties: [RequestTimeMapProperty()], range: RequestRangeNoMaxResults(enabled: false, width: 123), levelOfDetail: RequestLevelOfDetail(scaleType: "scaleType_example", level: "level_example"))], arrivalSearches: [RequestTimeMapArrivalSearch(id: "id_example", coords: nil, transportation: nil, travelTime: 123, arrivalTime: Date(), properties: [nil], range: nil, levelOfDetail: nil)], unions: [RequestUnionOnIntersection(id: "id_example", searchIds: ["searchIds_example"])], intersections: [nil]) // RequestTimeMap | 

DefaultAPI.timeMap(requestTimeMap: requestTimeMap) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**RequestTimeMap**](RequestTimeMap.md) |  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

