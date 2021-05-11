# RequestTimeMap

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | Pointer to [**[]RequestTimeMapDepartureSearch**](RequestTimeMapDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | Pointer to [**[]RequestTimeMapArrivalSearch**](RequestTimeMapArrivalSearch.md) |  | [optional] 
**Unions** | Pointer to [**[]RequestUnionOnIntersection**](RequestUnionOnIntersection.md) |  | [optional] 
**Intersections** | Pointer to [**[]RequestUnionOnIntersection**](RequestUnionOnIntersection.md) |  | [optional] 

## Methods

### NewRequestTimeMap

`func NewRequestTimeMap() *RequestTimeMap`

NewRequestTimeMap instantiates a new RequestTimeMap object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeMapWithDefaults

`func NewRequestTimeMapWithDefaults() *RequestTimeMap`

NewRequestTimeMapWithDefaults instantiates a new RequestTimeMap object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDepartureSearches

`func (o *RequestTimeMap) GetDepartureSearches() []RequestTimeMapDepartureSearch`

GetDepartureSearches returns the DepartureSearches field if non-nil, zero value otherwise.

### GetDepartureSearchesOk

`func (o *RequestTimeMap) GetDepartureSearchesOk() (*[]RequestTimeMapDepartureSearch, bool)`

GetDepartureSearchesOk returns a tuple with the DepartureSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureSearches

`func (o *RequestTimeMap) SetDepartureSearches(v []RequestTimeMapDepartureSearch)`

SetDepartureSearches sets DepartureSearches field to given value.

### HasDepartureSearches

`func (o *RequestTimeMap) HasDepartureSearches() bool`

HasDepartureSearches returns a boolean if a field has been set.

### GetArrivalSearches

`func (o *RequestTimeMap) GetArrivalSearches() []RequestTimeMapArrivalSearch`

GetArrivalSearches returns the ArrivalSearches field if non-nil, zero value otherwise.

### GetArrivalSearchesOk

`func (o *RequestTimeMap) GetArrivalSearchesOk() (*[]RequestTimeMapArrivalSearch, bool)`

GetArrivalSearchesOk returns a tuple with the ArrivalSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalSearches

`func (o *RequestTimeMap) SetArrivalSearches(v []RequestTimeMapArrivalSearch)`

SetArrivalSearches sets ArrivalSearches field to given value.

### HasArrivalSearches

`func (o *RequestTimeMap) HasArrivalSearches() bool`

HasArrivalSearches returns a boolean if a field has been set.

### GetUnions

`func (o *RequestTimeMap) GetUnions() []RequestUnionOnIntersection`

GetUnions returns the Unions field if non-nil, zero value otherwise.

### GetUnionsOk

`func (o *RequestTimeMap) GetUnionsOk() (*[]RequestUnionOnIntersection, bool)`

GetUnionsOk returns a tuple with the Unions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnions

`func (o *RequestTimeMap) SetUnions(v []RequestUnionOnIntersection)`

SetUnions sets Unions field to given value.

### HasUnions

`func (o *RequestTimeMap) HasUnions() bool`

HasUnions returns a boolean if a field has been set.

### GetIntersections

`func (o *RequestTimeMap) GetIntersections() []RequestUnionOnIntersection`

GetIntersections returns the Intersections field if non-nil, zero value otherwise.

### GetIntersectionsOk

`func (o *RequestTimeMap) GetIntersectionsOk() (*[]RequestUnionOnIntersection, bool)`

GetIntersectionsOk returns a tuple with the Intersections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntersections

`func (o *RequestTimeMap) SetIntersections(v []RequestUnionOnIntersection)`

SetIntersections sets Intersections field to given value.

### HasIntersections

`func (o *RequestTimeMap) HasIntersections() bool`

HasIntersections returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


