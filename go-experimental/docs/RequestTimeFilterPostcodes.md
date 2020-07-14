# RequestTimeFilterPostcodes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | Pointer to [**[]RequestTimeFilterPostcodesDepartureSearch**](RequestTimeFilterPostcodesDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | Pointer to [**[]RequestTimeFilterPostcodesArrivalSearch**](RequestTimeFilterPostcodesArrivalSearch.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodes

`func NewRequestTimeFilterPostcodes() *RequestTimeFilterPostcodes`

NewRequestTimeFilterPostcodes instantiates a new RequestTimeFilterPostcodes object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodesWithDefaults

`func NewRequestTimeFilterPostcodesWithDefaults() *RequestTimeFilterPostcodes`

NewRequestTimeFilterPostcodesWithDefaults instantiates a new RequestTimeFilterPostcodes object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDepartureSearches

`func (o *RequestTimeFilterPostcodes) GetDepartureSearches() []RequestTimeFilterPostcodesDepartureSearch`

GetDepartureSearches returns the DepartureSearches field if non-nil, zero value otherwise.

### GetDepartureSearchesOk

`func (o *RequestTimeFilterPostcodes) GetDepartureSearchesOk() (*[]RequestTimeFilterPostcodesDepartureSearch, bool)`

GetDepartureSearchesOk returns a tuple with the DepartureSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureSearches

`func (o *RequestTimeFilterPostcodes) SetDepartureSearches(v []RequestTimeFilterPostcodesDepartureSearch)`

SetDepartureSearches sets DepartureSearches field to given value.

### HasDepartureSearches

`func (o *RequestTimeFilterPostcodes) HasDepartureSearches() bool`

HasDepartureSearches returns a boolean if a field has been set.

### GetArrivalSearches

`func (o *RequestTimeFilterPostcodes) GetArrivalSearches() []RequestTimeFilterPostcodesArrivalSearch`

GetArrivalSearches returns the ArrivalSearches field if non-nil, zero value otherwise.

### GetArrivalSearchesOk

`func (o *RequestTimeFilterPostcodes) GetArrivalSearchesOk() (*[]RequestTimeFilterPostcodesArrivalSearch, bool)`

GetArrivalSearchesOk returns a tuple with the ArrivalSearches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalSearches

`func (o *RequestTimeFilterPostcodes) SetArrivalSearches(v []RequestTimeFilterPostcodesArrivalSearch)`

SetArrivalSearches sets ArrivalSearches field to given value.

### HasArrivalSearches

`func (o *RequestTimeFilterPostcodes) HasArrivalSearches() bool`

HasArrivalSearches returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


