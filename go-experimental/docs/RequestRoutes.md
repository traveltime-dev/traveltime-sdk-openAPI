# RequestRoutes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**[]RequestLocation**](RequestLocation.md) |  | 
**DepartureSearches** | Pointer to [**[]RequestRoutesDepartureSearch**](RequestRoutesDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | Pointer to [**[]RequestRoutesArrivalSearch**](RequestRoutesArrivalSearch.md) |  | [optional] 

## Methods

### NewRequestRoutes

`func NewRequestRoutes(locations []RequestLocation, ) *RequestRoutes`

NewRequestRoutes instantiates a new RequestRoutes object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestRoutesWithDefaults

`func NewRequestRoutesWithDefaults() *RequestRoutes`

NewRequestRoutesWithDefaults instantiates a new RequestRoutes object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLocations

`func (o *RequestRoutes) GetLocations() []RequestLocation`

GetLocations returns the Locations field if non-nil, zero value otherwise.

### GetLocationsOk

`func (o *RequestRoutes) GetLocationsOk() (*[]RequestLocation, bool)`

GetLocationsOk returns a tuple with the Locations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocations

`func (o *RequestRoutes) SetLocations(v []RequestLocation)`

SetLocations sets Locations field to given value.


### GetDepartureSearches

`func (o *RequestRoutes) GetDepartureSearches() []RequestRoutesDepartureSearch`

GetDepartureSearches returns the DepartureSearches field if non-nil, zero value otherwise.

### GetDepartureSearchesOk

`func (o *RequestRoutes) GetDepartureSearchesOk() (*[]RequestRoutesDepartureSearch, bool)`

GetDepartureSearchesOk returns a tuple with the DepartureSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureSearches

`func (o *RequestRoutes) SetDepartureSearches(v []RequestRoutesDepartureSearch)`

SetDepartureSearches sets DepartureSearches field to given value.

### HasDepartureSearches

`func (o *RequestRoutes) HasDepartureSearches() bool`

HasDepartureSearches returns a boolean if a field has been set.

### GetArrivalSearches

`func (o *RequestRoutes) GetArrivalSearches() []RequestRoutesArrivalSearch`

GetArrivalSearches returns the ArrivalSearches field if non-nil, zero value otherwise.

### GetArrivalSearchesOk

`func (o *RequestRoutes) GetArrivalSearchesOk() (*[]RequestRoutesArrivalSearch, bool)`

GetArrivalSearchesOk returns a tuple with the ArrivalSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalSearches

`func (o *RequestRoutes) SetArrivalSearches(v []RequestRoutesArrivalSearch)`

SetArrivalSearches sets ArrivalSearches field to given value.

### HasArrivalSearches

`func (o *RequestRoutes) HasArrivalSearches() bool`

HasArrivalSearches returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


