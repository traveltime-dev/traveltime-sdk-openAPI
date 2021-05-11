# RequestRoutesDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**DepartureLocationId** | **string** |  | 
**ArrivalLocationIds** | **[]string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**DepartureTime** | **time.Time** |  | 
**Properties** | [**[]RequestRoutesProperty**](RequestRoutesProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestRoutesDepartureSearch

`func NewRequestRoutesDepartureSearch(id string, departureLocationId string, arrivalLocationIds []string, transportation RequestTransportation, departureTime time.Time, properties []RequestRoutesProperty, ) *RequestRoutesDepartureSearch`

NewRequestRoutesDepartureSearch instantiates a new RequestRoutesDepartureSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestRoutesDepartureSearchWithDefaults

`func NewRequestRoutesDepartureSearchWithDefaults() *RequestRoutesDepartureSearch`

NewRequestRoutesDepartureSearchWithDefaults instantiates a new RequestRoutesDepartureSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestRoutesDepartureSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestRoutesDepartureSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestRoutesDepartureSearch) SetId(v string)`

SetId sets Id field to given value.


### GetDepartureLocationId

`func (o *RequestRoutesDepartureSearch) GetDepartureLocationId() string`

GetDepartureLocationId returns the DepartureLocationId field if non-nil, zero value otherwise.

### GetDepartureLocationIdOk

`func (o *RequestRoutesDepartureSearch) GetDepartureLocationIdOk() (*string, bool)`

GetDepartureLocationIdOk returns a tuple with the DepartureLocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureLocationId

`func (o *RequestRoutesDepartureSearch) SetDepartureLocationId(v string)`

SetDepartureLocationId sets DepartureLocationId field to given value.


### GetArrivalLocationIds

`func (o *RequestRoutesDepartureSearch) GetArrivalLocationIds() []string`

GetArrivalLocationIds returns the ArrivalLocationIds field if non-nil, zero value otherwise.

### GetArrivalLocationIdsOk

`func (o *RequestRoutesDepartureSearch) GetArrivalLocationIdsOk() (*[]string, bool)`

GetArrivalLocationIdsOk returns a tuple with the ArrivalLocationIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalLocationIds

`func (o *RequestRoutesDepartureSearch) SetArrivalLocationIds(v []string)`

SetArrivalLocationIds sets ArrivalLocationIds field to given value.


### GetTransportation

`func (o *RequestRoutesDepartureSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestRoutesDepartureSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestRoutesDepartureSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetDepartureTime

`func (o *RequestRoutesDepartureSearch) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *RequestRoutesDepartureSearch) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *RequestRoutesDepartureSearch) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetProperties

`func (o *RequestRoutesDepartureSearch) GetProperties() []RequestRoutesProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestRoutesDepartureSearch) GetPropertiesOk() (*[]RequestRoutesProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestRoutesDepartureSearch) SetProperties(v []RequestRoutesProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestRoutesDepartureSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestRoutesDepartureSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestRoutesDepartureSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestRoutesDepartureSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


