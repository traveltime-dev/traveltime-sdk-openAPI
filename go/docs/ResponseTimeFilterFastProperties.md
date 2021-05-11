# ResponseTimeFilterFastProperties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | Pointer to **int32** |  | [optional] 
**Fares** | Pointer to [**ResponseFaresFast**](ResponseFaresFast.md) |  | [optional] 

## Methods

### NewResponseTimeFilterFastProperties

`func NewResponseTimeFilterFastProperties() *ResponseTimeFilterFastProperties`

NewResponseTimeFilterFastProperties instantiates a new ResponseTimeFilterFastProperties object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeFilterFastPropertiesWithDefaults

`func NewResponseTimeFilterFastPropertiesWithDefaults() *ResponseTimeFilterFastProperties`

NewResponseTimeFilterFastPropertiesWithDefaults instantiates a new ResponseTimeFilterFastProperties object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTravelTime

`func (o *ResponseTimeFilterFastProperties) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *ResponseTimeFilterFastProperties) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *ResponseTimeFilterFastProperties) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.

### HasTravelTime

`func (o *ResponseTimeFilterFastProperties) HasTravelTime() bool`

HasTravelTime returns a boolean if a field has been set.

### GetFares

`func (o *ResponseTimeFilterFastProperties) GetFares() ResponseFaresFast`

GetFares returns the Fares field if non-nil, zero value otherwise.

### GetFaresOk

`func (o *ResponseTimeFilterFastProperties) GetFaresOk() (*ResponseFaresFast, bool)`

GetFaresOk returns a tuple with the Fares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFares

`func (o *ResponseTimeFilterFastProperties) SetFares(v ResponseFaresFast)`

SetFares sets Fares field to given value.

### HasFares

`func (o *ResponseTimeFilterFastProperties) HasFares() bool`

HasFares returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


