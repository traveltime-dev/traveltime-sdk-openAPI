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
	"time"
)

// RequestTimeMapDepartureSearch struct for RequestTimeMapDepartureSearch
type RequestTimeMapDepartureSearch struct {
	Id string `json:"id"`
	Coords Coords `json:"coords"`
	Transportation RequestTransportation `json:"transportation"`
	TravelTime int32 `json:"travel_time"`
	DepartureTime time.Time `json:"departure_time"`
	Properties *[]RequestTimeMapProperty `json:"properties,omitempty"`
	Range *RequestRangeNoMaxResults `json:"range,omitempty"`
}

// NewRequestTimeMapDepartureSearch instantiates a new RequestTimeMapDepartureSearch object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRequestTimeMapDepartureSearch(id string, coords Coords, transportation RequestTransportation, travelTime int32, departureTime time.Time) *RequestTimeMapDepartureSearch {
	this := RequestTimeMapDepartureSearch{}
	this.Id = id
	this.Coords = coords
	this.Transportation = transportation
	this.TravelTime = travelTime
	this.DepartureTime = departureTime
	return &this
}

// NewRequestTimeMapDepartureSearchWithDefaults instantiates a new RequestTimeMapDepartureSearch object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRequestTimeMapDepartureSearchWithDefaults() *RequestTimeMapDepartureSearch {
	this := RequestTimeMapDepartureSearch{}
	return &this
}

// GetId returns the Id field value
func (o *RequestTimeMapDepartureSearch) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *RequestTimeMapDepartureSearch) SetId(v string) {
	o.Id = v
}

// GetCoords returns the Coords field value
func (o *RequestTimeMapDepartureSearch) GetCoords() Coords {
	if o == nil {
		var ret Coords
		return ret
	}

	return o.Coords
}

// GetCoordsOk returns a tuple with the Coords field value
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetCoordsOk() (*Coords, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Coords, true
}

// SetCoords sets field value
func (o *RequestTimeMapDepartureSearch) SetCoords(v Coords) {
	o.Coords = v
}

// GetTransportation returns the Transportation field value
func (o *RequestTimeMapDepartureSearch) GetTransportation() RequestTransportation {
	if o == nil {
		var ret RequestTransportation
		return ret
	}

	return o.Transportation
}

// GetTransportationOk returns a tuple with the Transportation field value
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetTransportationOk() (*RequestTransportation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Transportation, true
}

// SetTransportation sets field value
func (o *RequestTimeMapDepartureSearch) SetTransportation(v RequestTransportation) {
	o.Transportation = v
}

// GetTravelTime returns the TravelTime field value
func (o *RequestTimeMapDepartureSearch) GetTravelTime() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.TravelTime
}

// GetTravelTimeOk returns a tuple with the TravelTime field value
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetTravelTimeOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.TravelTime, true
}

// SetTravelTime sets field value
func (o *RequestTimeMapDepartureSearch) SetTravelTime(v int32) {
	o.TravelTime = v
}

// GetDepartureTime returns the DepartureTime field value
func (o *RequestTimeMapDepartureSearch) GetDepartureTime() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.DepartureTime
}

// GetDepartureTimeOk returns a tuple with the DepartureTime field value
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetDepartureTimeOk() (*time.Time, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.DepartureTime, true
}

// SetDepartureTime sets field value
func (o *RequestTimeMapDepartureSearch) SetDepartureTime(v time.Time) {
	o.DepartureTime = v
}

// GetProperties returns the Properties field value if set, zero value otherwise.
func (o *RequestTimeMapDepartureSearch) GetProperties() []RequestTimeMapProperty {
	if o == nil || o.Properties == nil {
		var ret []RequestTimeMapProperty
		return ret
	}
	return *o.Properties
}

// GetPropertiesOk returns a tuple with the Properties field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetPropertiesOk() (*[]RequestTimeMapProperty, bool) {
	if o == nil || o.Properties == nil {
		return nil, false
	}
	return o.Properties, true
}

// HasProperties returns a boolean if a field has been set.
func (o *RequestTimeMapDepartureSearch) HasProperties() bool {
	if o != nil && o.Properties != nil {
		return true
	}

	return false
}

// SetProperties gets a reference to the given []RequestTimeMapProperty and assigns it to the Properties field.
func (o *RequestTimeMapDepartureSearch) SetProperties(v []RequestTimeMapProperty) {
	o.Properties = &v
}

// GetRange returns the Range field value if set, zero value otherwise.
func (o *RequestTimeMapDepartureSearch) GetRange() RequestRangeNoMaxResults {
	if o == nil || o.Range == nil {
		var ret RequestRangeNoMaxResults
		return ret
	}
	return *o.Range
}

// GetRangeOk returns a tuple with the Range field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RequestTimeMapDepartureSearch) GetRangeOk() (*RequestRangeNoMaxResults, bool) {
	if o == nil || o.Range == nil {
		return nil, false
	}
	return o.Range, true
}

// HasRange returns a boolean if a field has been set.
func (o *RequestTimeMapDepartureSearch) HasRange() bool {
	if o != nil && o.Range != nil {
		return true
	}

	return false
}

// SetRange gets a reference to the given RequestRangeNoMaxResults and assigns it to the Range field.
func (o *RequestTimeMapDepartureSearch) SetRange(v RequestRangeNoMaxResults) {
	o.Range = &v
}

func (o RequestTimeMapDepartureSearch) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["coords"] = o.Coords
	}
	if true {
		toSerialize["transportation"] = o.Transportation
	}
	if true {
		toSerialize["travel_time"] = o.TravelTime
	}
	if true {
		toSerialize["departure_time"] = o.DepartureTime
	}
	if o.Properties != nil {
		toSerialize["properties"] = o.Properties
	}
	if o.Range != nil {
		toSerialize["range"] = o.Range
	}
	return json.Marshal(toSerialize)
}

type NullableRequestTimeMapDepartureSearch struct {
	value *RequestTimeMapDepartureSearch
	isSet bool
}

func (v NullableRequestTimeMapDepartureSearch) Get() *RequestTimeMapDepartureSearch {
	return v.value
}

func (v *NullableRequestTimeMapDepartureSearch) Set(val *RequestTimeMapDepartureSearch) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestTimeMapDepartureSearch) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestTimeMapDepartureSearch) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestTimeMapDepartureSearch(val *RequestTimeMapDepartureSearch) *NullableRequestTimeMapDepartureSearch {
	return &NullableRequestTimeMapDepartureSearch{value: val, isSet: true}
}

func (v NullableRequestTimeMapDepartureSearch) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestTimeMapDepartureSearch) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


