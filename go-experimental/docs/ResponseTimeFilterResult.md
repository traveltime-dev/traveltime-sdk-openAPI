# ResponseTimeFilterResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **string** |  | 
**Locations** | [**[]ResponseTimeFilterLocation**](ResponseTimeFilterLocation.md) |  | 
**Unreachable** | **[]string** |  | 

## Methods

### NewResponseTimeFilterResult

`func NewResponseTimeFilterResult(searchId string, locations []ResponseTimeFilterLocation, unreachable []string, ) *ResponseTimeFilterResult`

NewResponseTimeFilterResult instantiates a new ResponseTimeFilterResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeFilterResultWithDefaults

`func NewResponseTimeFilterResultWithDefaults() *ResponseTimeFilterResult`

NewResponseTimeFilterResultWithDefaults instantiates a new ResponseTimeFilterResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSearchId

`func (o *ResponseTimeFilterResult) GetSearchId() string`

GetSearchId returns the SearchId field if non-nil, zero value otherwise.

### GetSearchIdOk

`func (o *ResponseTimeFilterResult) GetSearchIdOk() (*string, bool)`

GetSearchIdOk returns a tuple with the SearchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchId

`func (o *ResponseTimeFilterResult) SetSearchId(v string)`

SetSearchId sets SearchId field to given value.


### GetLocations

`func (o *ResponseTimeFilterResult) GetLocations() []ResponseTimeFilterLocation`

GetLocations returns the Locations field if non-nil, zero value otherwise.

### GetLocationsOk

`func (o *ResponseTimeFilterResult) GetLocationsOk() (*[]ResponseTimeFilterLocation, bool)`

GetLocationsOk returns a tuple with the Locations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocations

`func (o *ResponseTimeFilterResult) SetLocations(v []ResponseTimeFilterLocation)`

SetLocations sets Locations field to given value.


### GetUnreachable

`func (o *ResponseTimeFilterResult) GetUnreachable() []string`

GetUnreachable returns the Unreachable field if non-nil, zero value otherwise.

### GetUnreachableOk

`func (o *ResponseTimeFilterResult) GetUnreachableOk() (*[]string, bool)`

GetUnreachableOk returns a tuple with the Unreachable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnreachable

`func (o *ResponseTimeFilterResult) SetUnreachable(v []string)`

SetUnreachable sets Unreachable field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


