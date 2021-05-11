# ResponseSupportedLocations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**[]ResponseSupportedLocation**](ResponseSupportedLocation.md) |  | 
**UnsupportedLocations** | **[]string** |  | 

## Methods

### NewResponseSupportedLocations

`func NewResponseSupportedLocations(locations []ResponseSupportedLocation, unsupportedLocations []string, ) *ResponseSupportedLocations`

NewResponseSupportedLocations instantiates a new ResponseSupportedLocations object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseSupportedLocationsWithDefaults

`func NewResponseSupportedLocationsWithDefaults() *ResponseSupportedLocations`

NewResponseSupportedLocationsWithDefaults instantiates a new ResponseSupportedLocations object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLocations

`func (o *ResponseSupportedLocations) GetLocations() []ResponseSupportedLocation`

GetLocations returns the Locations field if non-nil, zero value otherwise.

### GetLocationsOk

`func (o *ResponseSupportedLocations) GetLocationsOk() (*[]ResponseSupportedLocation, bool)`

GetLocationsOk returns a tuple with the Locations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocations

`func (o *ResponseSupportedLocations) SetLocations(v []ResponseSupportedLocation)`

SetLocations sets Locations field to given value.


### GetUnsupportedLocations

`func (o *ResponseSupportedLocations) GetUnsupportedLocations() []string`

GetUnsupportedLocations returns the UnsupportedLocations field if non-nil, zero value otherwise.

### GetUnsupportedLocationsOk

`func (o *ResponseSupportedLocations) GetUnsupportedLocationsOk() (*[]string, bool)`

GetUnsupportedLocationsOk returns a tuple with the UnsupportedLocations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnsupportedLocations

`func (o *ResponseSupportedLocations) SetUnsupportedLocations(v []string)`

SetUnsupportedLocations sets UnsupportedLocations field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


