# RequestTimeFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**[]RequestLocation**](RequestLocation.md) |  | 
**DepartureSearches** | Pointer to [**[]RequestTimeFilterDepartureSearch**](RequestTimeFilterDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | Pointer to [**[]RequestTimeFilterArrivalSearch**](RequestTimeFilterArrivalSearch.md) |  | [optional] 

## Methods

### NewRequestTimeFilter

`func NewRequestTimeFilter(locations []RequestLocation, ) *RequestTimeFilter`

NewRequestTimeFilter instantiates a new RequestTimeFilter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterWithDefaults

`func NewRequestTimeFilterWithDefaults() *RequestTimeFilter`

NewRequestTimeFilterWithDefaults instantiates a new RequestTimeFilter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLocations

`func (o *RequestTimeFilter) GetLocations() []RequestLocation`

GetLocations returns the Locations field if non-nil, zero value otherwise.

### GetLocationsOk

`func (o *RequestTimeFilter) GetLocationsOk() (*[]RequestLocation, bool)`

GetLocationsOk returns a tuple with the Locations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocations

`func (o *RequestTimeFilter) SetLocations(v []RequestLocation)`

SetLocations sets Locations field to given value.


### GetDepartureSearches

`func (o *RequestTimeFilter) GetDepartureSearches() []RequestTimeFilterDepartureSearch`

GetDepartureSearches returns the DepartureSearches field if non-nil, zero value otherwise.

### GetDepartureSearchesOk

`func (o *RequestTimeFilter) GetDepartureSearchesOk() (*[]RequestTimeFilterDepartureSearch, bool)`

GetDepartureSearchesOk returns a tuple with the DepartureSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureSearches

`func (o *RequestTimeFilter) SetDepartureSearches(v []RequestTimeFilterDepartureSearch)`

SetDepartureSearches sets DepartureSearches field to given value.

### HasDepartureSearches

`func (o *RequestTimeFilter) HasDepartureSearches() bool`

HasDepartureSearches returns a boolean if a field has been set.

### GetArrivalSearches

`func (o *RequestTimeFilter) GetArrivalSearches() []RequestTimeFilterArrivalSearch`

GetArrivalSearches returns the ArrivalSearches field if non-nil, zero value otherwise.

### GetArrivalSearchesOk

`func (o *RequestTimeFilter) GetArrivalSearchesOk() (*[]RequestTimeFilterArrivalSearch, bool)`

GetArrivalSearchesOk returns a tuple with the ArrivalSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalSearches

`func (o *RequestTimeFilter) SetArrivalSearches(v []RequestTimeFilterArrivalSearch)`

SetArrivalSearches sets ArrivalSearches field to given value.

### HasArrivalSearches

`func (o *RequestTimeFilter) HasArrivalSearches() bool`

HasArrivalSearches returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


