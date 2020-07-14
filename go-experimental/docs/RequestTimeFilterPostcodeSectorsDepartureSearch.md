# RequestTimeFilterPostcodeSectorsDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**DepartureTime** | [**time.Time**](time.Time.md) |  | 
**ReachablePostcodesThreshold** | **float64** |  | 
**Properties** | [**[]RequestTimeFilterPostcodeSectorsProperty**](RequestTimeFilterPostcodeSectorsProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodeSectorsDepartureSearch

`func NewRequestTimeFilterPostcodeSectorsDepartureSearch(id string, transportation RequestTransportation, travelTime int32, departureTime time.Time, reachablePostcodesThreshold float64, properties []RequestTimeFilterPostcodeSectorsProperty, ) *RequestTimeFilterPostcodeSectorsDepartureSearch`

NewRequestTimeFilterPostcodeSectorsDepartureSearch instantiates a new RequestTimeFilterPostcodeSectorsDepartureSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodeSectorsDepartureSearchWithDefaults

`func NewRequestTimeFilterPostcodeSectorsDepartureSearchWithDefaults() *RequestTimeFilterPostcodeSectorsDepartureSearch`

NewRequestTimeFilterPostcodeSectorsDepartureSearchWithDefaults instantiates a new RequestTimeFilterPostcodeSectorsDepartureSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetId(v string)`

SetId sets Id field to given value.


### GetTransportation

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetDepartureTime

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetReachablePostcodesThreshold() float64`

GetReachablePostcodesThreshold returns the ReachablePostcodesThreshold field if non-nil, zero value otherwise.

### GetReachablePostcodesThresholdOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetReachablePostcodesThresholdOk() (*float64, bool)`

GetReachablePostcodesThresholdOk returns a tuple with the ReachablePostcodesThreshold field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetReachablePostcodesThreshold(v float64)`

SetReachablePostcodesThreshold sets ReachablePostcodesThreshold field to given value.


### GetProperties

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetProperties() []RequestTimeFilterPostcodeSectorsProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodeSectorsProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetProperties(v []RequestTimeFilterPostcodeSectorsProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterPostcodeSectorsDepartureSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


