# ResponseTimeFilterProperties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | Pointer to **int32** |  | [optional] 
**Distance** | Pointer to **int32** |  | [optional] 
**DistanceBreakdown** | Pointer to [**[]ResponseDistanceBreakdownItem**](ResponseDistanceBreakdownItem.md) |  | [optional] 
**Fares** | Pointer to [**ResponseFares**](ResponseFares.md) |  | [optional] 
**Route** | Pointer to [**ResponseRoute**](ResponseRoute.md) |  | [optional] 

## Methods

### NewResponseTimeFilterProperties

`func NewResponseTimeFilterProperties() *ResponseTimeFilterProperties`

NewResponseTimeFilterProperties instantiates a new ResponseTimeFilterProperties object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeFilterPropertiesWithDefaults

`func NewResponseTimeFilterPropertiesWithDefaults() *ResponseTimeFilterProperties`

NewResponseTimeFilterPropertiesWithDefaults instantiates a new ResponseTimeFilterProperties object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTravelTime

`func (o *ResponseTimeFilterProperties) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *ResponseTimeFilterProperties) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *ResponseTimeFilterProperties) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.

### HasTravelTime

`func (o *ResponseTimeFilterProperties) HasTravelTime() bool`

HasTravelTime returns a boolean if a field has been set.

### GetDistance

`func (o *ResponseTimeFilterProperties) GetDistance() int32`

GetDistance returns the Distance field if non-nil, zero value otherwise.

### GetDistanceOk

`func (o *ResponseTimeFilterProperties) GetDistanceOk() (*int32, bool)`

GetDistanceOk returns a tuple with the Distance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDistance

`func (o *ResponseTimeFilterProperties) SetDistance(v int32)`

SetDistance sets Distance field to given value.

### HasDistance

`func (o *ResponseTimeFilterProperties) HasDistance() bool`

HasDistance returns a boolean if a field has been set.

### GetDistanceBreakdown

`func (o *ResponseTimeFilterProperties) GetDistanceBreakdown() []ResponseDistanceBreakdownItem`

GetDistanceBreakdown returns the DistanceBreakdown field if non-nil, zero value otherwise.

### GetDistanceBreakdownOk

`func (o *ResponseTimeFilterProperties) GetDistanceBreakdownOk() (*[]ResponseDistanceBreakdownItem, bool)`

GetDistanceBreakdownOk returns a tuple with the DistanceBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDistanceBreakdown

`func (o *ResponseTimeFilterProperties) SetDistanceBreakdown(v []ResponseDistanceBreakdownItem)`

SetDistanceBreakdown sets DistanceBreakdown field to given value.

### HasDistanceBreakdown

`func (o *ResponseTimeFilterProperties) HasDistanceBreakdown() bool`

HasDistanceBreakdown returns a boolean if a field has been set.

### GetFares

`func (o *ResponseTimeFilterProperties) GetFares() ResponseFares`

GetFares returns the Fares field if non-nil, zero value otherwise.

### GetFaresOk

`func (o *ResponseTimeFilterProperties) GetFaresOk() (*ResponseFares, bool)`

GetFaresOk returns a tuple with the Fares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFares

`func (o *ResponseTimeFilterProperties) SetFares(v ResponseFares)`

SetFares sets Fares field to given value.

### HasFares

`func (o *ResponseTimeFilterProperties) HasFares() bool`

HasFares returns a boolean if a field has been set.

### GetRoute

`func (o *ResponseTimeFilterProperties) GetRoute() ResponseRoute`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *ResponseTimeFilterProperties) GetRouteOk() (*ResponseRoute, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *ResponseTimeFilterProperties) SetRoute(v ResponseRoute)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *ResponseTimeFilterProperties) HasRoute() bool`

HasRoute returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


