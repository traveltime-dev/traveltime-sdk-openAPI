# RequestTimeFilterPostcodesDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**DepartureTime** | **time.Time** |  | 
**Properties** | [**[]RequestTimeFilterPostcodesProperty**](RequestTimeFilterPostcodesProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodesDepartureSearch

`func NewRequestTimeFilterPostcodesDepartureSearch(id string, transportation RequestTransportation, travelTime int32, departureTime time.Time, properties []RequestTimeFilterPostcodesProperty, ) *RequestTimeFilterPostcodesDepartureSearch`

NewRequestTimeFilterPostcodesDepartureSearch instantiates a new RequestTimeFilterPostcodesDepartureSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodesDepartureSearchWithDefaults

`func NewRequestTimeFilterPostcodesDepartureSearchWithDefaults() *RequestTimeFilterPostcodesDepartureSearch`

NewRequestTimeFilterPostcodesDepartureSearchWithDefaults instantiates a new RequestTimeFilterPostcodesDepartureSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetId(v string)`

SetId sets Id field to given value.


### GetTransportation

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetDepartureTime

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetProperties

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetProperties() []RequestTimeFilterPostcodesProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodesProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetProperties(v []RequestTimeFilterPostcodesProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterPostcodesDepartureSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterPostcodesDepartureSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterPostcodesDepartureSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


