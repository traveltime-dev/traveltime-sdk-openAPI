# RequestTimeFilterFastArrivalManyToOneSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**ArrivalLocationId** | **string** |  | 
**DepartureLocationIds** | **[]string** |  | 
**Transportation** | [**RequestTransportationFast**](RequestTransportationFast.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTimePeriod** | [**RequestArrivalTimePeriod**](RequestArrivalTimePeriod.md) |  | 
**Properties** | [**[]RequestTimeFilterFastProperty**](RequestTimeFilterFastProperty.md) |  | 

## Methods

### NewRequestTimeFilterFastArrivalManyToOneSearch

`func NewRequestTimeFilterFastArrivalManyToOneSearch(id string, arrivalLocationId string, departureLocationIds []string, transportation RequestTransportationFast, travelTime int32, arrivalTimePeriod RequestArrivalTimePeriod, properties []RequestTimeFilterFastProperty, ) *RequestTimeFilterFastArrivalManyToOneSearch`

NewRequestTimeFilterFastArrivalManyToOneSearch instantiates a new RequestTimeFilterFastArrivalManyToOneSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterFastArrivalManyToOneSearchWithDefaults

`func NewRequestTimeFilterFastArrivalManyToOneSearchWithDefaults() *RequestTimeFilterFastArrivalManyToOneSearch`

NewRequestTimeFilterFastArrivalManyToOneSearchWithDefaults instantiates a new RequestTimeFilterFastArrivalManyToOneSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetId(v string)`

SetId sets Id field to given value.


### GetArrivalLocationId

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetArrivalLocationId() string`

GetArrivalLocationId returns the ArrivalLocationId field if non-nil, zero value otherwise.

### GetArrivalLocationIdOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetArrivalLocationIdOk() (*string, bool)`

GetArrivalLocationIdOk returns a tuple with the ArrivalLocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalLocationId

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetArrivalLocationId(v string)`

SetArrivalLocationId sets ArrivalLocationId field to given value.


### GetDepartureLocationIds

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetDepartureLocationIds() []string`

GetDepartureLocationIds returns the DepartureLocationIds field if non-nil, zero value otherwise.

### GetDepartureLocationIdsOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetDepartureLocationIdsOk() (*[]string, bool)`

GetDepartureLocationIdsOk returns a tuple with the DepartureLocationIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureLocationIds

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetDepartureLocationIds(v []string)`

SetDepartureLocationIds sets DepartureLocationIds field to given value.


### GetTransportation

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetTransportation() RequestTransportationFast`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetTransportationOk() (*RequestTransportationFast, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetTransportation(v RequestTransportationFast)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTimePeriod

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetArrivalTimePeriod() RequestArrivalTimePeriod`

GetArrivalTimePeriod returns the ArrivalTimePeriod field if non-nil, zero value otherwise.

### GetArrivalTimePeriodOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetArrivalTimePeriodOk() (*RequestArrivalTimePeriod, bool)`

GetArrivalTimePeriodOk returns a tuple with the ArrivalTimePeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTimePeriod

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetArrivalTimePeriod(v RequestArrivalTimePeriod)`

SetArrivalTimePeriod sets ArrivalTimePeriod field to given value.


### GetProperties

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetProperties() []RequestTimeFilterFastProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) GetPropertiesOk() (*[]RequestTimeFilterFastProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterFastArrivalManyToOneSearch) SetProperties(v []RequestTimeFilterFastProperty)`

SetProperties sets Properties field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


