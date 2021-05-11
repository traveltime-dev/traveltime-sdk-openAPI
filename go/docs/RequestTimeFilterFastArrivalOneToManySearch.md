# RequestTimeFilterFastArrivalOneToManySearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**DepartureLocationId** | **string** |  | 
**ArrivalLocationIds** | **[]string** |  | 
**Transportation** | [**RequestTransportationFast**](RequestTransportationFast.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTimePeriod** | [**RequestArrivalTimePeriod**](RequestArrivalTimePeriod.md) |  | 
**Properties** | [**[]RequestTimeFilterFastProperty**](RequestTimeFilterFastProperty.md) |  | 

## Methods

### NewRequestTimeFilterFastArrivalOneToManySearch

`func NewRequestTimeFilterFastArrivalOneToManySearch(id string, departureLocationId string, arrivalLocationIds []string, transportation RequestTransportationFast, travelTime int32, arrivalTimePeriod RequestArrivalTimePeriod, properties []RequestTimeFilterFastProperty, ) *RequestTimeFilterFastArrivalOneToManySearch`

NewRequestTimeFilterFastArrivalOneToManySearch instantiates a new RequestTimeFilterFastArrivalOneToManySearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterFastArrivalOneToManySearchWithDefaults

`func NewRequestTimeFilterFastArrivalOneToManySearchWithDefaults() *RequestTimeFilterFastArrivalOneToManySearch`

NewRequestTimeFilterFastArrivalOneToManySearchWithDefaults instantiates a new RequestTimeFilterFastArrivalOneToManySearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetId(v string)`

SetId sets Id field to given value.


### GetDepartureLocationId

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetDepartureLocationId() string`

GetDepartureLocationId returns the DepartureLocationId field if non-nil, zero value otherwise.

### GetDepartureLocationIdOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetDepartureLocationIdOk() (*string, bool)`

GetDepartureLocationIdOk returns a tuple with the DepartureLocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureLocationId

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetDepartureLocationId(v string)`

SetDepartureLocationId sets DepartureLocationId field to given value.


### GetArrivalLocationIds

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetArrivalLocationIds() []string`

GetArrivalLocationIds returns the ArrivalLocationIds field if non-nil, zero value otherwise.

### GetArrivalLocationIdsOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetArrivalLocationIdsOk() (*[]string, bool)`

GetArrivalLocationIdsOk returns a tuple with the ArrivalLocationIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalLocationIds

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetArrivalLocationIds(v []string)`

SetArrivalLocationIds sets ArrivalLocationIds field to given value.


### GetTransportation

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetTransportation() RequestTransportationFast`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetTransportationOk() (*RequestTransportationFast, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetTransportation(v RequestTransportationFast)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTimePeriod

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetArrivalTimePeriod() RequestArrivalTimePeriod`

GetArrivalTimePeriod returns the ArrivalTimePeriod field if non-nil, zero value otherwise.

### GetArrivalTimePeriodOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetArrivalTimePeriodOk() (*RequestArrivalTimePeriod, bool)`

GetArrivalTimePeriodOk returns a tuple with the ArrivalTimePeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTimePeriod

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetArrivalTimePeriod(v RequestArrivalTimePeriod)`

SetArrivalTimePeriod sets ArrivalTimePeriod field to given value.


### GetProperties

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetProperties() []RequestTimeFilterFastProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterFastArrivalOneToManySearch) GetPropertiesOk() (*[]RequestTimeFilterFastProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterFastArrivalOneToManySearch) SetProperties(v []RequestTimeFilterFastProperty)`

SetProperties sets Properties field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


