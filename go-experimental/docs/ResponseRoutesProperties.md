# ResponseRoutesProperties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | Pointer to **int32** |  | [optional] 
**Distance** | Pointer to **int32** |  | [optional] 
**Fares** | Pointer to [**ResponseFares**](ResponseFares.md) |  | [optional] 
**Route** | Pointer to [**ResponseRoute**](ResponseRoute.md) |  | [optional] 

## Methods

### NewResponseRoutesProperties

`func NewResponseRoutesProperties() *ResponseRoutesProperties`

NewResponseRoutesProperties instantiates a new ResponseRoutesProperties object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseRoutesPropertiesWithDefaults

`func NewResponseRoutesPropertiesWithDefaults() *ResponseRoutesProperties`

NewResponseRoutesPropertiesWithDefaults instantiates a new ResponseRoutesProperties object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTravelTime

`func (o *ResponseRoutesProperties) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *ResponseRoutesProperties) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *ResponseRoutesProperties) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.

### HasTravelTime

`func (o *ResponseRoutesProperties) HasTravelTime() bool`

HasTravelTime returns a boolean if a field has been set.

### GetDistance

`func (o *ResponseRoutesProperties) GetDistance() int32`

GetDistance returns the Distance field if non-nil, zero value otherwise.

### GetDistanceOk

`func (o *ResponseRoutesProperties) GetDistanceOk() (*int32, bool)`

GetDistanceOk returns a tuple with the Distance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDistance

`func (o *ResponseRoutesProperties) SetDistance(v int32)`

SetDistance sets Distance field to given value.

### HasDistance

`func (o *ResponseRoutesProperties) HasDistance() bool`

HasDistance returns a boolean if a field has been set.

### GetFares

`func (o *ResponseRoutesProperties) GetFares() ResponseFares`

GetFares returns the Fares field if non-nil, zero value otherwise.

### GetFaresOk

`func (o *ResponseRoutesProperties) GetFaresOk() (*ResponseFares, bool)`

GetFaresOk returns a tuple with the Fares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFares

`func (o *ResponseRoutesProperties) SetFares(v ResponseFares)`

SetFares sets Fares field to given value.

### HasFares

`func (o *ResponseRoutesProperties) HasFares() bool`

HasFares returns a boolean if a field has been set.

### GetRoute

`func (o *ResponseRoutesProperties) GetRoute() ResponseRoute`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *ResponseRoutesProperties) GetRouteOk() (*ResponseRoute, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *ResponseRoutesProperties) SetRoute(v ResponseRoute)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *ResponseRoutesProperties) HasRoute() bool`

HasRoute returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


