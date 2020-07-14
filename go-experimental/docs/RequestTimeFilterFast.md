# RequestTimeFilterFast

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**[]RequestLocation**](RequestLocation.md) |  | 
**ArrivalSearches** | [**RequestTimeFilterFastArrivalSearches**](RequestTimeFilterFastArrivalSearches.md) |  | 

## Methods

### NewRequestTimeFilterFast

`func NewRequestTimeFilterFast(locations []RequestLocation, arrivalSearches RequestTimeFilterFastArrivalSearches, ) *RequestTimeFilterFast`

NewRequestTimeFilterFast instantiates a new RequestTimeFilterFast object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterFastWithDefaults

`func NewRequestTimeFilterFastWithDefaults() *RequestTimeFilterFast`

NewRequestTimeFilterFastWithDefaults instantiates a new RequestTimeFilterFast object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLocations

`func (o *RequestTimeFilterFast) GetLocations() []RequestLocation`

GetLocations returns the Locations field if non-nil, zero value otherwise.

### GetLocationsOk

`func (o *RequestTimeFilterFast) GetLocationsOk() (*[]RequestLocation, bool)`

GetLocationsOk returns a tuple with the Locations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocations

`func (o *RequestTimeFilterFast) SetLocations(v []RequestLocation)`

SetLocations sets Locations field to given value.


### GetArrivalSearches

`func (o *RequestTimeFilterFast) GetArrivalSearches() RequestTimeFilterFastArrivalSearches`

GetArrivalSearches returns the ArrivalSearches field if non-nil, zero value otherwise.

### GetArrivalSearchesOk

`func (o *RequestTimeFilterFast) GetArrivalSearchesOk() (*RequestTimeFilterFastArrivalSearches, bool)`

GetArrivalSearchesOk returns a tuple with the ArrivalSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalSearches

`func (o *RequestTimeFilterFast) SetArrivalSearches(v RequestTimeFilterFastArrivalSearches)`

SetArrivalSearches sets ArrivalSearches field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


