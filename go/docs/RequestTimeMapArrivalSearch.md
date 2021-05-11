# RequestTimeMapArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Coords** | [**Coords**](Coords.md) |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTime** | **time.Time** |  | 
**Properties** | Pointer to [**[]RequestTimeMapProperty**](RequestTimeMapProperty.md) |  | [optional] 
**Range** | Pointer to [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] 

## Methods

### NewRequestTimeMapArrivalSearch

`func NewRequestTimeMapArrivalSearch(id string, coords Coords, transportation RequestTransportation, travelTime int32, arrivalTime time.Time, ) *RequestTimeMapArrivalSearch`

NewRequestTimeMapArrivalSearch instantiates a new RequestTimeMapArrivalSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeMapArrivalSearchWithDefaults

`func NewRequestTimeMapArrivalSearchWithDefaults() *RequestTimeMapArrivalSearch`

NewRequestTimeMapArrivalSearchWithDefaults instantiates a new RequestTimeMapArrivalSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeMapArrivalSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeMapArrivalSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeMapArrivalSearch) SetId(v string)`

SetId sets Id field to given value.


### GetCoords

`func (o *RequestTimeMapArrivalSearch) GetCoords() Coords`

GetCoords returns the Coords field if non-nil, zero value otherwise.

### GetCoordsOk

`func (o *RequestTimeMapArrivalSearch) GetCoordsOk() (*Coords, bool)`

GetCoordsOk returns a tuple with the Coords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoords

`func (o *RequestTimeMapArrivalSearch) SetCoords(v Coords)`

SetCoords sets Coords field to given value.


### GetTransportation

`func (o *RequestTimeMapArrivalSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeMapArrivalSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeMapArrivalSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeMapArrivalSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeMapArrivalSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeMapArrivalSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTime

`func (o *RequestTimeMapArrivalSearch) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *RequestTimeMapArrivalSearch) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *RequestTimeMapArrivalSearch) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetProperties

`func (o *RequestTimeMapArrivalSearch) GetProperties() []RequestTimeMapProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeMapArrivalSearch) GetPropertiesOk() (*[]RequestTimeMapProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeMapArrivalSearch) SetProperties(v []RequestTimeMapProperty)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *RequestTimeMapArrivalSearch) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetRange

`func (o *RequestTimeMapArrivalSearch) GetRange() RequestRangeNoMaxResults`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeMapArrivalSearch) GetRangeOk() (*RequestRangeNoMaxResults, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeMapArrivalSearch) SetRange(v RequestRangeNoMaxResults)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeMapArrivalSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


