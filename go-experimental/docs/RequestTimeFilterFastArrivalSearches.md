# RequestTimeFilterFastArrivalSearches

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ManyToOne** | Pointer to [**[]RequestTimeFilterFastArrivalManyToOneSearch**](RequestTimeFilterFastArrivalManyToOneSearch.md) |  | [optional] 
**OneToMany** | Pointer to [**[]RequestTimeFilterFastArrivalOneToManySearch**](RequestTimeFilterFastArrivalOneToManySearch.md) |  | [optional] 

## Methods

### NewRequestTimeFilterFastArrivalSearches

`func NewRequestTimeFilterFastArrivalSearches() *RequestTimeFilterFastArrivalSearches`

NewRequestTimeFilterFastArrivalSearches instantiates a new RequestTimeFilterFastArrivalSearches object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterFastArrivalSearchesWithDefaults

`func NewRequestTimeFilterFastArrivalSearchesWithDefaults() *RequestTimeFilterFastArrivalSearches`

NewRequestTimeFilterFastArrivalSearchesWithDefaults instantiates a new RequestTimeFilterFastArrivalSearches object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetManyToOne

`func (o *RequestTimeFilterFastArrivalSearches) GetManyToOne() []RequestTimeFilterFastArrivalManyToOneSearch`

GetManyToOne returns the ManyToOne field if non-nil, zero value otherwise.

### GetManyToOneOk

`func (o *RequestTimeFilterFastArrivalSearches) GetManyToOneOk() (*[]RequestTimeFilterFastArrivalManyToOneSearch, bool)`

GetManyToOneOk returns a tuple with the ManyToOne field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManyToOne

`func (o *RequestTimeFilterFastArrivalSearches) SetManyToOne(v []RequestTimeFilterFastArrivalManyToOneSearch)`

SetManyToOne sets ManyToOne field to given value.

### HasManyToOne

`func (o *RequestTimeFilterFastArrivalSearches) HasManyToOne() bool`

HasManyToOne returns a boolean if a field has been set.

### GetOneToMany

`func (o *RequestTimeFilterFastArrivalSearches) GetOneToMany() []RequestTimeFilterFastArrivalOneToManySearch`

GetOneToMany returns the OneToMany field if non-nil, zero value otherwise.

### GetOneToManyOk

`func (o *RequestTimeFilterFastArrivalSearches) GetOneToManyOk() (*[]RequestTimeFilterFastArrivalOneToManySearch, bool)`

GetOneToManyOk returns a tuple with the OneToMany field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOneToMany

`func (o *RequestTimeFilterFastArrivalSearches) SetOneToMany(v []RequestTimeFilterFastArrivalOneToManySearch)`

SetOneToMany sets OneToMany field to given value.

### HasOneToMany

`func (o *RequestTimeFilterFastArrivalSearches) HasOneToMany() bool`

HasOneToMany returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


