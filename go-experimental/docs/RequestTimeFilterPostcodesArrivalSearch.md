# RequestTimeFilterPostcodesArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTime** | [**time.Time**](time.Time.md) |  | 
**Properties** | [**[]RequestTimeFilterPostcodesProperty**](RequestTimeFilterPostcodesProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodesArrivalSearch

`func NewRequestTimeFilterPostcodesArrivalSearch(id string, transportation RequestTransportation, travelTime int32, arrivalTime time.Time, properties []RequestTimeFilterPostcodesProperty, ) *RequestTimeFilterPostcodesArrivalSearch`

NewRequestTimeFilterPostcodesArrivalSearch instantiates a new RequestTimeFilterPostcodesArrivalSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodesArrivalSearchWithDefaults

`func NewRequestTimeFilterPostcodesArrivalSearchWithDefaults() *RequestTimeFilterPostcodesArrivalSearch`

NewRequestTimeFilterPostcodesArrivalSearchWithDefaults instantiates a new RequestTimeFilterPostcodesArrivalSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetId(v string)`

SetId sets Id field to given value.


### GetTransportation

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTime

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetProperties

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetProperties() []RequestTimeFilterPostcodesProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodesProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetProperties(v []RequestTimeFilterPostcodesProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterPostcodesArrivalSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterPostcodesArrivalSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterPostcodesArrivalSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


