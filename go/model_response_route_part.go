/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.2
 * Contact: support@igeolise.com
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// ResponseRoutePart struct for ResponseRoutePart
type ResponseRoutePart struct {
	Id string `json:"id"`
	Type string `json:"type"`
	Mode ResponseTransportationMode `json:"mode"`
	Directions string `json:"directions"`
	Distance int32 `json:"distance"`
	TravelTime int32 `json:"travel_time"`
	Coords []Coords `json:"coords"`
	Direction *string `json:"direction,omitempty"`
	Road *string `json:"road,omitempty"`
	Turn *string `json:"turn,omitempty"`
	Line *string `json:"line,omitempty"`
	DepartureStation *string `json:"departure_station,omitempty"`
	ArrivalStation *string `json:"arrival_station,omitempty"`
	DepartsAt *string `json:"departs_at,omitempty"`
	ArrivesAt *string `json:"arrives_at,omitempty"`
	NumStops *int32 `json:"num_stops,omitempty"`
}

// NewResponseRoutePart instantiates a new ResponseRoutePart object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseRoutePart(id string, type_ string, mode ResponseTransportationMode, directions string, distance int32, travelTime int32, coords []Coords) *ResponseRoutePart {
	this := ResponseRoutePart{}
	this.Id = id
	this.Type = type_
	this.Mode = mode
	this.Directions = directions
	this.Distance = distance
	this.TravelTime = travelTime
	this.Coords = coords
	return &this
}

// NewResponseRoutePartWithDefaults instantiates a new ResponseRoutePart object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseRoutePartWithDefaults() *ResponseRoutePart {
	this := ResponseRoutePart{}
	return &this
}

// GetId returns the Id field value
func (o *ResponseRoutePart) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *ResponseRoutePart) SetId(v string) {
	o.Id = v
}

// GetType returns the Type field value
func (o *ResponseRoutePart) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetTypeOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *ResponseRoutePart) SetType(v string) {
	o.Type = v
}

// GetMode returns the Mode field value
func (o *ResponseRoutePart) GetMode() ResponseTransportationMode {
	if o == nil {
		var ret ResponseTransportationMode
		return ret
	}

	return o.Mode
}

// GetModeOk returns a tuple with the Mode field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetModeOk() (*ResponseTransportationMode, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Mode, true
}

// SetMode sets field value
func (o *ResponseRoutePart) SetMode(v ResponseTransportationMode) {
	o.Mode = v
}

// GetDirections returns the Directions field value
func (o *ResponseRoutePart) GetDirections() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Directions
}

// GetDirectionsOk returns a tuple with the Directions field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetDirectionsOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Directions, true
}

// SetDirections sets field value
func (o *ResponseRoutePart) SetDirections(v string) {
	o.Directions = v
}

// GetDistance returns the Distance field value
func (o *ResponseRoutePart) GetDistance() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Distance
}

// GetDistanceOk returns a tuple with the Distance field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetDistanceOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Distance, true
}

// SetDistance sets field value
func (o *ResponseRoutePart) SetDistance(v int32) {
	o.Distance = v
}

// GetTravelTime returns the TravelTime field value
func (o *ResponseRoutePart) GetTravelTime() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.TravelTime
}

// GetTravelTimeOk returns a tuple with the TravelTime field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetTravelTimeOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.TravelTime, true
}

// SetTravelTime sets field value
func (o *ResponseRoutePart) SetTravelTime(v int32) {
	o.TravelTime = v
}

// GetCoords returns the Coords field value
func (o *ResponseRoutePart) GetCoords() []Coords {
	if o == nil {
		var ret []Coords
		return ret
	}

	return o.Coords
}

// GetCoordsOk returns a tuple with the Coords field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetCoordsOk() (*[]Coords, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Coords, true
}

// SetCoords sets field value
func (o *ResponseRoutePart) SetCoords(v []Coords) {
	o.Coords = v
}

// GetDirection returns the Direction field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetDirection() string {
	if o == nil || o.Direction == nil {
		var ret string
		return ret
	}
	return *o.Direction
}

// GetDirectionOk returns a tuple with the Direction field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetDirectionOk() (*string, bool) {
	if o == nil || o.Direction == nil {
		return nil, false
	}
	return o.Direction, true
}

// HasDirection returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasDirection() bool {
	if o != nil && o.Direction != nil {
		return true
	}

	return false
}

// SetDirection gets a reference to the given string and assigns it to the Direction field.
func (o *ResponseRoutePart) SetDirection(v string) {
	o.Direction = &v
}

// GetRoad returns the Road field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetRoad() string {
	if o == nil || o.Road == nil {
		var ret string
		return ret
	}
	return *o.Road
}

// GetRoadOk returns a tuple with the Road field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetRoadOk() (*string, bool) {
	if o == nil || o.Road == nil {
		return nil, false
	}
	return o.Road, true
}

// HasRoad returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasRoad() bool {
	if o != nil && o.Road != nil {
		return true
	}

	return false
}

// SetRoad gets a reference to the given string and assigns it to the Road field.
func (o *ResponseRoutePart) SetRoad(v string) {
	o.Road = &v
}

// GetTurn returns the Turn field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetTurn() string {
	if o == nil || o.Turn == nil {
		var ret string
		return ret
	}
	return *o.Turn
}

// GetTurnOk returns a tuple with the Turn field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetTurnOk() (*string, bool) {
	if o == nil || o.Turn == nil {
		return nil, false
	}
	return o.Turn, true
}

// HasTurn returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasTurn() bool {
	if o != nil && o.Turn != nil {
		return true
	}

	return false
}

// SetTurn gets a reference to the given string and assigns it to the Turn field.
func (o *ResponseRoutePart) SetTurn(v string) {
	o.Turn = &v
}

// GetLine returns the Line field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetLine() string {
	if o == nil || o.Line == nil {
		var ret string
		return ret
	}
	return *o.Line
}

// GetLineOk returns a tuple with the Line field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetLineOk() (*string, bool) {
	if o == nil || o.Line == nil {
		return nil, false
	}
	return o.Line, true
}

// HasLine returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasLine() bool {
	if o != nil && o.Line != nil {
		return true
	}

	return false
}

// SetLine gets a reference to the given string and assigns it to the Line field.
func (o *ResponseRoutePart) SetLine(v string) {
	o.Line = &v
}

// GetDepartureStation returns the DepartureStation field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetDepartureStation() string {
	if o == nil || o.DepartureStation == nil {
		var ret string
		return ret
	}
	return *o.DepartureStation
}

// GetDepartureStationOk returns a tuple with the DepartureStation field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetDepartureStationOk() (*string, bool) {
	if o == nil || o.DepartureStation == nil {
		return nil, false
	}
	return o.DepartureStation, true
}

// HasDepartureStation returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasDepartureStation() bool {
	if o != nil && o.DepartureStation != nil {
		return true
	}

	return false
}

// SetDepartureStation gets a reference to the given string and assigns it to the DepartureStation field.
func (o *ResponseRoutePart) SetDepartureStation(v string) {
	o.DepartureStation = &v
}

// GetArrivalStation returns the ArrivalStation field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetArrivalStation() string {
	if o == nil || o.ArrivalStation == nil {
		var ret string
		return ret
	}
	return *o.ArrivalStation
}

// GetArrivalStationOk returns a tuple with the ArrivalStation field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetArrivalStationOk() (*string, bool) {
	if o == nil || o.ArrivalStation == nil {
		return nil, false
	}
	return o.ArrivalStation, true
}

// HasArrivalStation returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasArrivalStation() bool {
	if o != nil && o.ArrivalStation != nil {
		return true
	}

	return false
}

// SetArrivalStation gets a reference to the given string and assigns it to the ArrivalStation field.
func (o *ResponseRoutePart) SetArrivalStation(v string) {
	o.ArrivalStation = &v
}

// GetDepartsAt returns the DepartsAt field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetDepartsAt() string {
	if o == nil || o.DepartsAt == nil {
		var ret string
		return ret
	}
	return *o.DepartsAt
}

// GetDepartsAtOk returns a tuple with the DepartsAt field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetDepartsAtOk() (*string, bool) {
	if o == nil || o.DepartsAt == nil {
		return nil, false
	}
	return o.DepartsAt, true
}

// HasDepartsAt returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasDepartsAt() bool {
	if o != nil && o.DepartsAt != nil {
		return true
	}

	return false
}

// SetDepartsAt gets a reference to the given string and assigns it to the DepartsAt field.
func (o *ResponseRoutePart) SetDepartsAt(v string) {
	o.DepartsAt = &v
}

// GetArrivesAt returns the ArrivesAt field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetArrivesAt() string {
	if o == nil || o.ArrivesAt == nil {
		var ret string
		return ret
	}
	return *o.ArrivesAt
}

// GetArrivesAtOk returns a tuple with the ArrivesAt field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetArrivesAtOk() (*string, bool) {
	if o == nil || o.ArrivesAt == nil {
		return nil, false
	}
	return o.ArrivesAt, true
}

// HasArrivesAt returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasArrivesAt() bool {
	if o != nil && o.ArrivesAt != nil {
		return true
	}

	return false
}

// SetArrivesAt gets a reference to the given string and assigns it to the ArrivesAt field.
func (o *ResponseRoutePart) SetArrivesAt(v string) {
	o.ArrivesAt = &v
}

// GetNumStops returns the NumStops field value if set, zero value otherwise.
func (o *ResponseRoutePart) GetNumStops() int32 {
	if o == nil || o.NumStops == nil {
		var ret int32
		return ret
	}
	return *o.NumStops
}

// GetNumStopsOk returns a tuple with the NumStops field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseRoutePart) GetNumStopsOk() (*int32, bool) {
	if o == nil || o.NumStops == nil {
		return nil, false
	}
	return o.NumStops, true
}

// HasNumStops returns a boolean if a field has been set.
func (o *ResponseRoutePart) HasNumStops() bool {
	if o != nil && o.NumStops != nil {
		return true
	}

	return false
}

// SetNumStops gets a reference to the given int32 and assigns it to the NumStops field.
func (o *ResponseRoutePart) SetNumStops(v int32) {
	o.NumStops = &v
}

func (o ResponseRoutePart) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["type"] = o.Type
	}
	if true {
		toSerialize["mode"] = o.Mode
	}
	if true {
		toSerialize["directions"] = o.Directions
	}
	if true {
		toSerialize["distance"] = o.Distance
	}
	if true {
		toSerialize["travel_time"] = o.TravelTime
	}
	if true {
		toSerialize["coords"] = o.Coords
	}
	if o.Direction != nil {
		toSerialize["direction"] = o.Direction
	}
	if o.Road != nil {
		toSerialize["road"] = o.Road
	}
	if o.Turn != nil {
		toSerialize["turn"] = o.Turn
	}
	if o.Line != nil {
		toSerialize["line"] = o.Line
	}
	if o.DepartureStation != nil {
		toSerialize["departure_station"] = o.DepartureStation
	}
	if o.ArrivalStation != nil {
		toSerialize["arrival_station"] = o.ArrivalStation
	}
	if o.DepartsAt != nil {
		toSerialize["departs_at"] = o.DepartsAt
	}
	if o.ArrivesAt != nil {
		toSerialize["arrives_at"] = o.ArrivesAt
	}
	if o.NumStops != nil {
		toSerialize["num_stops"] = o.NumStops
	}
	return json.Marshal(toSerialize)
}

type NullableResponseRoutePart struct {
	value *ResponseRoutePart
	isSet bool
}

func (v NullableResponseRoutePart) Get() *ResponseRoutePart {
	return v.value
}

func (v *NullableResponseRoutePart) Set(val *ResponseRoutePart) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseRoutePart) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseRoutePart) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseRoutePart(val *ResponseRoutePart) *NullableResponseRoutePart {
	return &NullableResponseRoutePart{value: val, isSet: true}
}

func (v NullableResponseRoutePart) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseRoutePart) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


