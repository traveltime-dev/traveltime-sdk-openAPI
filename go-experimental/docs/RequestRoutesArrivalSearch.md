# RequestRoutesArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**DepartureLocationIds** | **[]string** |  | 
**ArrivalLocationId** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**ArrivalTime** | [**time.Time**](time.Time.md) |  | 
**Properties** | [**[]RequestRoutesProperty**](RequestRoutesProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestRoutesArrivalSearch

`func NewRequestRoutesArrivalSearch(id string, departureLocationIds []string, arrivalLocationId string, transportation RequestTransportation, arrivalTime time.Time, properties []RequestRoutesProperty, ) *RequestRoutesArrivalSearch`

NewRequestRoutesArrivalSearch instantiates a new RequestRoutesArrivalSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestRoutesArrivalSearchWithDefaults

`func NewRequestRoutesArrivalSearchWithDefaults() *RequestRoutesArrivalSearch`

NewRequestRoutesArrivalSearchWithDefaults instantiates a new RequestRoutesArrivalSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestRoutesArrivalSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestRoutesArrivalSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestRoutesArrivalSearch) SetId(v string)`

SetId sets Id field to given value.


### GetDepartureLocationIds

`func (o *RequestRoutesArrivalSearch) GetDepartureLocationIds() []string`

GetDepartureLocationIds returns the DepartureLocationIds field if non-nil, zero value otherwise.

### GetDepartureLocationIdsOk

`func (o *RequestRoutesArrivalSearch) GetDepartureLocationIdsOk() (*[]string, bool)`

GetDepartureLocationIdsOk returns a tuple with the DepartureLocationIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureLocationIds

`func (o *RequestRoutesArrivalSearch) SetDepartureLocationIds(v []string)`

SetDepartureLocationIds sets DepartureLocationIds field to given value.


### GetArrivalLocationId

`func (o *RequestRoutesArrivalSearch) GetArrivalLocationId() string`

GetArrivalLocationId returns the ArrivalLocationId field if non-nil, zero value otherwise.

### GetArrivalLocationIdOk

`func (o *RequestRoutesArrivalSearch) GetArrivalLocationIdOk() (*string, bool)`

GetArrivalLocationIdOk returns a tuple with the ArrivalLocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalLocationId

`func (o *RequestRoutesArrivalSearch) SetArrivalLocationId(v string)`

SetArrivalLocationId sets ArrivalLocationId field to given value.


### GetTransportation

`func (o *RequestRoutesArrivalSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestRoutesArrivalSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestRoutesArrivalSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetArrivalTime

`func (o *RequestRoutesArrivalSearch) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *RequestRoutesArrivalSearch) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *RequestRoutesArrivalSearch) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetProperties

`func (o *RequestRoutesArrivalSearch) GetProperties() []RequestRoutesProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestRoutesArrivalSearch) GetPropertiesOk() (*[]RequestRoutesProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestRoutesArrivalSearch) SetProperties(v []RequestRoutesProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestRoutesArrivalSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestRoutesArrivalSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestRoutesArrivalSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestRoutesArrivalSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


