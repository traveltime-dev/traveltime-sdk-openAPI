# ResponseRoute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureTime** | **time.Time** |  | 
**ArrivalTime** | **time.Time** |  | 
**Parts** | [**[]ResponseRoutePart**](ResponseRoutePart.md) |  | 

## Methods

### NewResponseRoute

`func NewResponseRoute(departureTime time.Time, arrivalTime time.Time, parts []ResponseRoutePart, ) *ResponseRoute`

NewResponseRoute instantiates a new ResponseRoute object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseRouteWithDefaults

`func NewResponseRouteWithDefaults() *ResponseRoute`

NewResponseRouteWithDefaults instantiates a new ResponseRoute object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDepartureTime

`func (o *ResponseRoute) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *ResponseRoute) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *ResponseRoute) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetArrivalTime

`func (o *ResponseRoute) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *ResponseRoute) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *ResponseRoute) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetParts

`func (o *ResponseRoute) GetParts() []ResponseRoutePart`

GetParts returns the Parts field if non-nil, zero value otherwise.

### GetPartsOk

`func (o *ResponseRoute) GetPartsOk() (*[]ResponseRoutePart, bool)`

GetPartsOk returns a tuple with the Parts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParts

`func (o *ResponseRoute) SetParts(v []ResponseRoutePart)`

SetParts sets Parts field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


