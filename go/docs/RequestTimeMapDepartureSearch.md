# RequestTimeMapDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Coords** | [**Coords**](Coords.md) |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**DepartureTime** | **time.Time** |  | 
**Properties** | Pointer to [**[]RequestTimeMapProperty**](RequestTimeMapProperty.md) |  | [optional] 
**Range** | Pointer to [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] 
**LevelOfDetail** | Pointer to [**RequestLevelOfDetail**](RequestLevelOfDetail.md) |  | [optional] 

## Methods

### NewRequestTimeMapDepartureSearch

`func NewRequestTimeMapDepartureSearch(id string, coords Coords, transportation RequestTransportation, travelTime int32, departureTime time.Time, ) *RequestTimeMapDepartureSearch`

NewRequestTimeMapDepartureSearch instantiates a new RequestTimeMapDepartureSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeMapDepartureSearchWithDefaults

`func NewRequestTimeMapDepartureSearchWithDefaults() *RequestTimeMapDepartureSearch`

NewRequestTimeMapDepartureSearchWithDefaults instantiates a new RequestTimeMapDepartureSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeMapDepartureSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeMapDepartureSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeMapDepartureSearch) SetId(v string)`

SetId sets Id field to given value.


### GetCoords

`func (o *RequestTimeMapDepartureSearch) GetCoords() Coords`

GetCoords returns the Coords field if non-nil, zero value otherwise.

### GetCoordsOk

`func (o *RequestTimeMapDepartureSearch) GetCoordsOk() (*Coords, bool)`

GetCoordsOk returns a tuple with the Coords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoords

`func (o *RequestTimeMapDepartureSearch) SetCoords(v Coords)`

SetCoords sets Coords field to given value.


### GetTransportation

`func (o *RequestTimeMapDepartureSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeMapDepartureSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeMapDepartureSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeMapDepartureSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeMapDepartureSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeMapDepartureSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetDepartureTime

`func (o *RequestTimeMapDepartureSearch) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *RequestTimeMapDepartureSearch) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *RequestTimeMapDepartureSearch) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetProperties

`func (o *RequestTimeMapDepartureSearch) GetProperties() []RequestTimeMapProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeMapDepartureSearch) GetPropertiesOk() (*[]RequestTimeMapProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeMapDepartureSearch) SetProperties(v []RequestTimeMapProperty)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *RequestTimeMapDepartureSearch) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetRange

`func (o *RequestTimeMapDepartureSearch) GetRange() RequestRangeNoMaxResults`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeMapDepartureSearch) GetRangeOk() (*RequestRangeNoMaxResults, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeMapDepartureSearch) SetRange(v RequestRangeNoMaxResults)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeMapDepartureSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.

### GetLevelOfDetail

`func (o *RequestTimeMapDepartureSearch) GetLevelOfDetail() RequestLevelOfDetail`

GetLevelOfDetail returns the LevelOfDetail field if non-nil, zero value otherwise.

### GetLevelOfDetailOk

`func (o *RequestTimeMapDepartureSearch) GetLevelOfDetailOk() (*RequestLevelOfDetail, bool)`

GetLevelOfDetailOk returns a tuple with the LevelOfDetail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLevelOfDetail

`func (o *RequestTimeMapDepartureSearch) SetLevelOfDetail(v RequestLevelOfDetail)`

SetLevelOfDetail sets LevelOfDetail field to given value.

### HasLevelOfDetail

`func (o *RequestTimeMapDepartureSearch) HasLevelOfDetail() bool`

HasLevelOfDetail returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


