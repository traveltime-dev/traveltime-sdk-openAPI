# RequestTimeFilterArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**DepartureLocationIds** | **[]string** |  | 
**ArrivalLocationId** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTime** | **time.Time** |  | 
**Properties** | [**[]RequestTimeFilterProperty**](RequestTimeFilterProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterArrivalSearch

`func NewRequestTimeFilterArrivalSearch(id string, departureLocationIds []string, arrivalLocationId string, transportation RequestTransportation, travelTime int32, arrivalTime time.Time, properties []RequestTimeFilterProperty, ) *RequestTimeFilterArrivalSearch`

NewRequestTimeFilterArrivalSearch instantiates a new RequestTimeFilterArrivalSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterArrivalSearchWithDefaults

`func NewRequestTimeFilterArrivalSearchWithDefaults() *RequestTimeFilterArrivalSearch`

NewRequestTimeFilterArrivalSearchWithDefaults instantiates a new RequestTimeFilterArrivalSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterArrivalSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterArrivalSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterArrivalSearch) SetId(v string)`

SetId sets Id field to given value.


### GetDepartureLocationIds

`func (o *RequestTimeFilterArrivalSearch) GetDepartureLocationIds() []string`

GetDepartureLocationIds returns the DepartureLocationIds field if non-nil, zero value otherwise.

### GetDepartureLocationIdsOk

`func (o *RequestTimeFilterArrivalSearch) GetDepartureLocationIdsOk() (*[]string, bool)`

GetDepartureLocationIdsOk returns a tuple with the DepartureLocationIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureLocationIds

`func (o *RequestTimeFilterArrivalSearch) SetDepartureLocationIds(v []string)`

SetDepartureLocationIds sets DepartureLocationIds field to given value.


### GetArrivalLocationId

`func (o *RequestTimeFilterArrivalSearch) GetArrivalLocationId() string`

GetArrivalLocationId returns the ArrivalLocationId field if non-nil, zero value otherwise.

### GetArrivalLocationIdOk

`func (o *RequestTimeFilterArrivalSearch) GetArrivalLocationIdOk() (*string, bool)`

GetArrivalLocationIdOk returns a tuple with the ArrivalLocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalLocationId

`func (o *RequestTimeFilterArrivalSearch) SetArrivalLocationId(v string)`

SetArrivalLocationId sets ArrivalLocationId field to given value.


### GetTransportation

`func (o *RequestTimeFilterArrivalSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterArrivalSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterArrivalSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterArrivalSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterArrivalSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterArrivalSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTime

`func (o *RequestTimeFilterArrivalSearch) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *RequestTimeFilterArrivalSearch) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *RequestTimeFilterArrivalSearch) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetProperties

`func (o *RequestTimeFilterArrivalSearch) GetProperties() []RequestTimeFilterProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterArrivalSearch) GetPropertiesOk() (*[]RequestTimeFilterProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterArrivalSearch) SetProperties(v []RequestTimeFilterProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterArrivalSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterArrivalSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterArrivalSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterArrivalSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


