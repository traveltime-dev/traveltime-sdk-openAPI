# \DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GeocodingReverseSearch**](DefaultApi.md#GeocodingReverseSearch) | **Get** /v4/geocoding/reverse | 
[**GeocodingSearch**](DefaultApi.md#GeocodingSearch) | **Get** /v4/geocoding/search | 
[**MapInfo**](DefaultApi.md#MapInfo) | **Get** /v4/map-info | 
[**Routes**](DefaultApi.md#Routes) | **Post** /v4/routes | 
[**SupportedLocations**](DefaultApi.md#SupportedLocations) | **Post** /v4/supported-locations | 
[**TimeFilter**](DefaultApi.md#TimeFilter) | **Post** /v4/time-filter | 
[**TimeFilterFast**](DefaultApi.md#TimeFilterFast) | **Post** /v4/time-filter/fast | 
[**TimeFilterPostcodeDistricts**](DefaultApi.md#TimeFilterPostcodeDistricts) | **Post** /v4/time-filter/postcode-districts | 
[**TimeFilterPostcodeSectors**](DefaultApi.md#TimeFilterPostcodeSectors) | **Post** /v4/time-filter/postcode-sectors | 
[**TimeFilterPostcodes**](DefaultApi.md#TimeFilterPostcodes) | **Post** /v4/time-filter/postcodes | 
[**TimeMap**](DefaultApi.md#TimeMap) | **Post** /v4/time-map | 



## GeocodingReverseSearch

> ResponseGeocoding GeocodingReverseSearch(ctx).Lat(lat).Lng(lng).WithinCountry(withinCountry).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    lat := 987 // float64 | 
    lng := 987 // float64 | 
    withinCountry := "withinCountry_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.GeocodingReverseSearch(context.Background(), lat, lng).WithinCountry(withinCountry).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.GeocodingReverseSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GeocodingReverseSearch`: ResponseGeocoding
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.GeocodingReverseSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGeocodingReverseSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **float64** |  | 
 **lng** | **float64** |  | 
 **withinCountry** | **string** |  | 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GeocodingSearch

> ResponseGeocoding GeocodingSearch(ctx).Query(query).FocusLat(focusLat).FocusLng(focusLng).WithinCountry(withinCountry).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "query_example" // string | 
    focusLat := 987 // float64 |  (optional)
    focusLng := 987 // float64 |  (optional)
    withinCountry := "withinCountry_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.GeocodingSearch(context.Background(), query).FocusLat(focusLat).FocusLng(focusLng).WithinCountry(withinCountry).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.GeocodingSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GeocodingSearch`: ResponseGeocoding
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.GeocodingSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGeocodingSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** |  | 
 **focusLat** | **float64** |  | 
 **focusLng** | **float64** |  | 
 **withinCountry** | **string** |  | 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MapInfo

> ResponseMapInfo MapInfo(ctx).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.MapInfo(context.Background(), ).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.MapInfo``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `MapInfo`: ResponseMapInfo
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.MapInfo`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiMapInfoRequest struct via the builder pattern


### Return type

[**ResponseMapInfo**](ResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Routes

> ResponseRoutes Routes(ctx).RequestRoutes(requestRoutes).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestRoutes := openapiclient.RequestRoutes{Locations: []RequestLocation{openapiclient.RequestLocation{Id: "Id_example", Coords: openapiclient.Coords{Lat: 123, Lng: 123}}), DepartureSearches: []RequestRoutesDepartureSearch{openapiclient.RequestRoutesDepartureSearch{Id: "Id_example", DepartureLocationId: "DepartureLocationId_example", ArrivalLocationIds: []string{"ArrivalLocationIds_example"), Transportation: openapiclient.RequestTransportation{Type: "Type_example", PtChangeDelay: 123, WalkingTime: 123, DrivingTimeToStation: 123, ParkingTime: 123, BoardingTime: 123}, DepartureTime: "TODO", Properties: []RequestRoutesProperty{openapiclient.RequestRoutesProperty{}), Range: openapiclient.RequestRangeFull{Enabled: false, MaxResults: 123, Width: 123}}), ArrivalSearches: []RequestRoutesArrivalSearch{openapiclient.RequestRoutesArrivalSearch{Id: "Id_example", DepartureLocationIds: []string{"DepartureLocationIds_example"), ArrivalLocationId: "ArrivalLocationId_example", Transportation: openapiclient.RequestTransportation{Type: "Type_example", PtChangeDelay: 123, WalkingTime: 123, DrivingTimeToStation: 123, ParkingTime: 123, BoardingTime: 123}, ArrivalTime: "TODO", Properties: []RequestRoutesProperty{openapiclient.RequestRoutesProperty{}), Range: openapiclient.RequestRangeFull{Enabled: false, MaxResults: 123, Width: 123}})} // RequestRoutes | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.Routes(context.Background(), requestRoutes).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.Routes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `Routes`: ResponseRoutes
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.Routes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRoutesRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SupportedLocations

> ResponseSupportedLocations SupportedLocations(ctx).RequestSupportedLocations(requestSupportedLocations).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestSupportedLocations := openapiclient.RequestSupportedLocations{Locations: []RequestLocation{openapiclient.RequestLocation{Id: "Id_example", Coords: openapiclient.Coords{Lat: 123, Lng: 123}})} // RequestSupportedLocations | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.SupportedLocations(context.Background(), requestSupportedLocations).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.SupportedLocations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SupportedLocations`: ResponseSupportedLocations
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.SupportedLocations`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSupportedLocationsRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeFilter

> ResponseTimeFilter TimeFilter(ctx).RequestTimeFilter(requestTimeFilter).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeFilter := openapiclient.RequestTimeFilter{Locations: []RequestLocation{), DepartureSearches: []RequestTimeFilterDepartureSearch{openapiclient.RequestTimeFilterDepartureSearch{Id: "Id_example", DepartureLocationId: "DepartureLocationId_example", ArrivalLocationIds: []string{"ArrivalLocationIds_example"), Transportation: , TravelTime: 123, DepartureTime: "TODO", Properties: []RequestTimeFilterProperty{openapiclient.RequestTimeFilterProperty{}), Range: }), ArrivalSearches: []RequestTimeFilterArrivalSearch{openapiclient.RequestTimeFilterArrivalSearch{Id: "Id_example", DepartureLocationIds: []string{"DepartureLocationIds_example"), ArrivalLocationId: "ArrivalLocationId_example", Transportation: , TravelTime: 123, ArrivalTime: "TODO", Properties: []RequestTimeFilterProperty{openapiclient.RequestTimeFilterProperty{}), Range: })} // RequestTimeFilter | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeFilter(context.Background(), requestTimeFilter).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeFilter``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeFilter`: ResponseTimeFilter
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeFilter`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeFilterRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeFilterFast

> ResponseTimeFilterFast TimeFilterFast(ctx).RequestTimeFilterFast(requestTimeFilterFast).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeFilterFast := openapiclient.RequestTimeFilterFast{Locations: []RequestLocation{), ArrivalSearches: openapiclient.RequestTimeFilterFastArrivalSearches{ManyToOne: []RequestTimeFilterFastArrivalManyToOneSearch{openapiclient.RequestTimeFilterFastArrivalManyToOneSearch{Id: "Id_example", ArrivalLocationId: "ArrivalLocationId_example", DepartureLocationIds: []string{"DepartureLocationIds_example"), Transportation: openapiclient.RequestTransportationFast{Type: "Type_example"}, TravelTime: 123, ArrivalTimePeriod: openapiclient.RequestArrivalTimePeriod{}, Properties: []RequestTimeFilterFastProperty{openapiclient.RequestTimeFilterFastProperty{})}), OneToMany: []RequestTimeFilterFastArrivalOneToManySearch{openapiclient.RequestTimeFilterFastArrivalOneToManySearch{Id: "Id_example", DepartureLocationId: "DepartureLocationId_example", ArrivalLocationIds: []string{"ArrivalLocationIds_example"), Transportation: openapiclient.RequestTransportationFast{Type: "Type_example"}, TravelTime: 123, ArrivalTimePeriod: openapiclient.RequestArrivalTimePeriod{}, Properties: []RequestTimeFilterFastProperty{openapiclient.RequestTimeFilterFastProperty{})})}} // RequestTimeFilterFast | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeFilterFast(context.Background(), requestTimeFilterFast).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeFilterFast``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeFilterFast`: ResponseTimeFilterFast
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeFilterFast`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeFilterFastRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeFilterPostcodeDistricts

> ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts(ctx).RequestTimeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeFilterPostcodeDistricts := openapiclient.RequestTimeFilterPostcodeDistricts{DepartureSearches: []RequestTimeFilterPostcodeDistrictsDepartureSearch{openapiclient.RequestTimeFilterPostcodeDistrictsDepartureSearch{Id: "Id_example", Transportation: , TravelTime: 123, DepartureTime: "TODO", ReachablePostcodesThreshold: 123, Properties: []RequestTimeFilterPostcodeDistrictsProperty{openapiclient.RequestTimeFilterPostcodeDistrictsProperty{}), Range: }), ArrivalSearches: []RequestTimeFilterPostcodeDistrictsArrivalSearch{openapiclient.RequestTimeFilterPostcodeDistrictsArrivalSearch{Id: "Id_example", Transportation: , TravelTime: 123, ArrivalTime: "TODO", ReachablePostcodesThreshold: 123, Properties: []RequestTimeFilterPostcodeDistrictsProperty{openapiclient.RequestTimeFilterPostcodeDistrictsProperty{}), Range: })} // RequestTimeFilterPostcodeDistricts | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeFilterPostcodeDistricts(context.Background(), requestTimeFilterPostcodeDistricts).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeFilterPostcodeDistricts``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeFilterPostcodeDistricts`: ResponseTimeFilterPostcodeDistricts
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeFilterPostcodeDistricts`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeFilterPostcodeDistrictsRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeFilterPostcodeSectors

> ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors(ctx).RequestTimeFilterPostcodeSectors(requestTimeFilterPostcodeSectors).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeFilterPostcodeSectors := openapiclient.RequestTimeFilterPostcodeSectors{DepartureSearches: []RequestTimeFilterPostcodeSectorsDepartureSearch{openapiclient.RequestTimeFilterPostcodeSectorsDepartureSearch{Id: "Id_example", Transportation: , TravelTime: 123, DepartureTime: "TODO", ReachablePostcodesThreshold: 123, Properties: []RequestTimeFilterPostcodeSectorsProperty{openapiclient.RequestTimeFilterPostcodeSectorsProperty{}), Range: }), ArrivalSearches: []RequestTimeFilterPostcodeSectorsArrivalSearch{openapiclient.RequestTimeFilterPostcodeSectorsArrivalSearch{Id: "Id_example", Transportation: , TravelTime: 123, ArrivalTime: "TODO", ReachablePostcodesThreshold: 123, Properties: []RequestTimeFilterPostcodeSectorsProperty{openapiclient.RequestTimeFilterPostcodeSectorsProperty{}), Range: })} // RequestTimeFilterPostcodeSectors | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeFilterPostcodeSectors(context.Background(), requestTimeFilterPostcodeSectors).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeFilterPostcodeSectors``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeFilterPostcodeSectors`: ResponseTimeFilterPostcodeSectors
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeFilterPostcodeSectors`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeFilterPostcodeSectorsRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeFilterPostcodes

> ResponseTimeFilterPostcodes TimeFilterPostcodes(ctx).RequestTimeFilterPostcodes(requestTimeFilterPostcodes).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeFilterPostcodes := openapiclient.RequestTimeFilterPostcodes{DepartureSearches: []RequestTimeFilterPostcodesDepartureSearch{openapiclient.RequestTimeFilterPostcodesDepartureSearch{Id: "Id_example", Transportation: , TravelTime: 123, DepartureTime: "TODO", Properties: []RequestTimeFilterPostcodesProperty{openapiclient.RequestTimeFilterPostcodesProperty{}), Range: }), ArrivalSearches: []RequestTimeFilterPostcodesArrivalSearch{openapiclient.RequestTimeFilterPostcodesArrivalSearch{Id: "Id_example", Transportation: , TravelTime: 123, ArrivalTime: "TODO", Properties: []RequestTimeFilterPostcodesProperty{openapiclient.RequestTimeFilterPostcodesProperty{}), Range: })} // RequestTimeFilterPostcodes | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeFilterPostcodes(context.Background(), requestTimeFilterPostcodes).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeFilterPostcodes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeFilterPostcodes`: ResponseTimeFilterPostcodes
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeFilterPostcodes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeFilterPostcodesRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TimeMap

> ResponseTimeMap TimeMap(ctx).RequestTimeMap(requestTimeMap).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    requestTimeMap := openapiclient.RequestTimeMap{DepartureSearches: []RequestTimeMapDepartureSearch{openapiclient.RequestTimeMapDepartureSearch{Id: "Id_example", Coords: , Transportation: , TravelTime: 123, DepartureTime: "TODO", Properties: []RequestTimeMapProperty{openapiclient.RequestTimeMapProperty{}), Range: openapiclient.RequestRangeNoMaxResults{Enabled: false, Width: 123}}), ArrivalSearches: []RequestTimeMapArrivalSearch{openapiclient.RequestTimeMapArrivalSearch{Id: "Id_example", Coords: , Transportation: , TravelTime: 123, ArrivalTime: "TODO", Properties: []RequestTimeMapProperty{openapiclient.RequestTimeMapProperty{}), Range: openapiclient.RequestRangeNoMaxResults{Enabled: false, Width: 123}}), Unions: []RequestUnionOnIntersection{openapiclient.RequestUnionOnIntersection{Id: "Id_example", SearchIds: []string{"SearchIds_example")}), Intersections: []RequestUnionOnIntersection{openapiclient.RequestUnionOnIntersection{Id: "Id_example", SearchIds: []string{"SearchIds_example")})} // RequestTimeMap | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.DefaultApi.TimeMap(context.Background(), requestTimeMap).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.TimeMap``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TimeMap`: ResponseTimeMap
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.TimeMap`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTimeMapRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

