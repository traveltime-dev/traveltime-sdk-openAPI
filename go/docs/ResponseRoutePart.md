# ResponseRoutePart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Type** | **string** |  | 
**Mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**Directions** | **string** |  | 
**Distance** | **int32** |  | 
**TravelTime** | **int32** |  | 
**Coords** | [**[]Coords**](Coords.md) |  | 
**Direction** | Pointer to **string** |  | [optional] 
**Road** | Pointer to **string** |  | [optional] 
**Turn** | Pointer to **string** |  | [optional] 
**Line** | Pointer to **string** |  | [optional] 
**DepartureStation** | Pointer to **string** |  | [optional] 
**ArrivalStation** | Pointer to **string** |  | [optional] 
**DepartsAt** | Pointer to **string** |  | [optional] 
**ArrivesAt** | Pointer to **string** |  | [optional] 
**NumStops** | Pointer to **int32** |  | [optional] 

## Methods

### NewResponseRoutePart

`func NewResponseRoutePart(id string, type_ string, mode ResponseTransportationMode, directions string, distance int32, travelTime int32, coords []Coords, ) *ResponseRoutePart`

NewResponseRoutePart instantiates a new ResponseRoutePart object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseRoutePartWithDefaults

`func NewResponseRoutePartWithDefaults() *ResponseRoutePart`

NewResponseRoutePartWithDefaults instantiates a new ResponseRoutePart object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ResponseRoutePart) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ResponseRoutePart) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ResponseRoutePart) SetId(v string)`

SetId sets Id field to given value.


### GetType

`func (o *ResponseRoutePart) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ResponseRoutePart) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ResponseRoutePart) SetType(v string)`

SetType sets Type field to given value.


### GetMode

`func (o *ResponseRoutePart) GetMode() ResponseTransportationMode`

GetMode returns the Mode field if non-nil, zero value otherwise.

### GetModeOk

`func (o *ResponseRoutePart) GetModeOk() (*ResponseTransportationMode, bool)`

GetModeOk returns a tuple with the Mode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMode

`func (o *ResponseRoutePart) SetMode(v ResponseTransportationMode)`

SetMode sets Mode field to given value.


### GetDirections

`func (o *ResponseRoutePart) GetDirections() string`

GetDirections returns the Directions field if non-nil, zero value otherwise.

### GetDirectionsOk

`func (o *ResponseRoutePart) GetDirectionsOk() (*string, bool)`

GetDirectionsOk returns a tuple with the Directions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDirections

`func (o *ResponseRoutePart) SetDirections(v string)`

SetDirections sets Directions field to given value.


### GetDistance

`func (o *ResponseRoutePart) GetDistance() int32`

GetDistance returns the Distance field if non-nil, zero value otherwise.

### GetDistanceOk

`func (o *ResponseRoutePart) GetDistanceOk() (*int32, bool)`

GetDistanceOk returns a tuple with the Distance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDistance

`func (o *ResponseRoutePart) SetDistance(v int32)`

SetDistance sets Distance field to given value.


### GetTravelTime

`func (o *ResponseRoutePart) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *ResponseRoutePart) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *ResponseRoutePart) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetCoords

`func (o *ResponseRoutePart) GetCoords() []Coords`

GetCoords returns the Coords field if non-nil, zero value otherwise.

### GetCoordsOk

`func (o *ResponseRoutePart) GetCoordsOk() (*[]Coords, bool)`

GetCoordsOk returns a tuple with the Coords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoords

`func (o *ResponseRoutePart) SetCoords(v []Coords)`

SetCoords sets Coords field to given value.


### GetDirection

`func (o *ResponseRoutePart) GetDirection() string`

GetDirection returns the Direction field if non-nil, zero value otherwise.

### GetDirectionOk

`func (o *ResponseRoutePart) GetDirectionOk() (*string, bool)`

GetDirectionOk returns a tuple with the Direction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDirection

`func (o *ResponseRoutePart) SetDirection(v string)`

SetDirection sets Direction field to given value.

### HasDirection

`func (o *ResponseRoutePart) HasDirection() bool`

HasDirection returns a boolean if a field has been set.

### GetRoad

`func (o *ResponseRoutePart) GetRoad() string`

GetRoad returns the Road field if non-nil, zero value otherwise.

### GetRoadOk

`func (o *ResponseRoutePart) GetRoadOk() (*string, bool)`

GetRoadOk returns a tuple with the Road field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoad

`func (o *ResponseRoutePart) SetRoad(v string)`

SetRoad sets Road field to given value.

### HasRoad

`func (o *ResponseRoutePart) HasRoad() bool`

HasRoad returns a boolean if a field has been set.

### GetTurn

`func (o *ResponseRoutePart) GetTurn() string`

GetTurn returns the Turn field if non-nil, zero value otherwise.

### GetTurnOk

`func (o *ResponseRoutePart) GetTurnOk() (*string, bool)`

GetTurnOk returns a tuple with the Turn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTurn

`func (o *ResponseRoutePart) SetTurn(v string)`

SetTurn sets Turn field to given value.

### HasTurn

`func (o *ResponseRoutePart) HasTurn() bool`

HasTurn returns a boolean if a field has been set.

### GetLine

`func (o *ResponseRoutePart) GetLine() string`

GetLine returns the Line field if non-nil, zero value otherwise.

### GetLineOk

`func (o *ResponseRoutePart) GetLineOk() (*string, bool)`

GetLineOk returns a tuple with the Line field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLine

`func (o *ResponseRoutePart) SetLine(v string)`

SetLine sets Line field to given value.

### HasLine

`func (o *ResponseRoutePart) HasLine() bool`

HasLine returns a boolean if a field has been set.

### GetDepartureStation

`func (o *ResponseRoutePart) GetDepartureStation() string`

GetDepartureStation returns the DepartureStation field if non-nil, zero value otherwise.

### GetDepartureStationOk

`func (o *ResponseRoutePart) GetDepartureStationOk() (*string, bool)`

GetDepartureStationOk returns a tuple with the DepartureStation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureStation

`func (o *ResponseRoutePart) SetDepartureStation(v string)`

SetDepartureStation sets DepartureStation field to given value.

### HasDepartureStation

`func (o *ResponseRoutePart) HasDepartureStation() bool`

HasDepartureStation returns a boolean if a field has been set.

### GetArrivalStation

`func (o *ResponseRoutePart) GetArrivalStation() string`

GetArrivalStation returns the ArrivalStation field if non-nil, zero value otherwise.

### GetArrivalStationOk

`func (o *ResponseRoutePart) GetArrivalStationOk() (*string, bool)`

GetArrivalStationOk returns a tuple with the ArrivalStation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalStation

`func (o *ResponseRoutePart) SetArrivalStation(v string)`

SetArrivalStation sets ArrivalStation field to given value.

### HasArrivalStation

`func (o *ResponseRoutePart) HasArrivalStation() bool`

HasArrivalStation returns a boolean if a field has been set.

### GetDepartsAt

`func (o *ResponseRoutePart) GetDepartsAt() string`

GetDepartsAt returns the DepartsAt field if non-nil, zero value otherwise.

### GetDepartsAtOk

`func (o *ResponseRoutePart) GetDepartsAtOk() (*string, bool)`

GetDepartsAtOk returns a tuple with the DepartsAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartsAt

`func (o *ResponseRoutePart) SetDepartsAt(v string)`

SetDepartsAt sets DepartsAt field to given value.

### HasDepartsAt

`func (o *ResponseRoutePart) HasDepartsAt() bool`

HasDepartsAt returns a boolean if a field has been set.

### GetArrivesAt

`func (o *ResponseRoutePart) GetArrivesAt() string`

GetArrivesAt returns the ArrivesAt field if non-nil, zero value otherwise.

### GetArrivesAtOk

`func (o *ResponseRoutePart) GetArrivesAtOk() (*string, bool)`

GetArrivesAtOk returns a tuple with the ArrivesAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivesAt

`func (o *ResponseRoutePart) SetArrivesAt(v string)`

SetArrivesAt sets ArrivesAt field to given value.

### HasArrivesAt

`func (o *ResponseRoutePart) HasArrivesAt() bool`

HasArrivesAt returns a boolean if a field has been set.

### GetNumStops

`func (o *ResponseRoutePart) GetNumStops() int32`

GetNumStops returns the NumStops field if non-nil, zero value otherwise.

### GetNumStopsOk

`func (o *ResponseRoutePart) GetNumStopsOk() (*int32, bool)`

GetNumStopsOk returns a tuple with the NumStops field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumStops

`func (o *ResponseRoutePart) SetNumStops(v int32)`

SetNumStops sets NumStops field to given value.

### HasNumStops

`func (o *ResponseRoutePart) HasNumStops() bool`

HasNumStops returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


