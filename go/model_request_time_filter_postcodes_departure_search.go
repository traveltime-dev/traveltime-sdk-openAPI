/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.3
 * Contact: support@igeolise.com
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"time"
)

// RequestTimeFilterPostcodesDepartureSearch struct for RequestTimeFilterPostcodesDepartureSearch
type RequestTimeFilterPostcodesDepartureSearch struct {
	Id string `json:"id"`
	Transportation RequestTransportation `json:"transportation"`
	TravelTime int32 `json:"travel_time"`
	DepartureTime time.Time `json:"departure_time"`
	Properties []RequestTimeFilterPostcodesProperty `json:"properties"`
	Range *RequestRangeFull `json:"range,omitempty"`
}

// NewRequestTimeFilterPostcodesDepartureSearch instantiates a new RequestTimeFilterPostcodesDepartureSearch object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRequestTimeFilterPostcodesDepartureSearch(id string, transportation RequestTransportation, travelTime int32, departureTime time.Time, properties []RequestTimeFilterPostcodesProperty) *RequestTimeFilterPostcodesDepartureSearch {
	this := RequestTimeFilterPostcodesDepartureSearch{}
	this.Id = id
	this.Transportation = transportation
	this.TravelTime = travelTime
	this.DepartureTime = departureTime
	this.Properties = properties
	return &this
}

// NewRequestTimeFilterPostcodesDepartureSearchWithDefaults instantiates a new RequestTimeFilterPostcodesDepartureSearch object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRequestTimeFilterPostcodesDepartureSearchWithDefaults() *RequestTimeFilterPostcodesDepartureSearch {
	this := RequestTimeFilterPostcodesDepartureSearch{}
	return &this
}

// GetId returns the Id field value
func (o *RequestTimeFilterPostcodesDepartureSearch) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *RequestTimeFilterPostcodesDepartureSearch) SetId(v string) {
	o.Id = v
}

// GetTransportation returns the Transportation field value
func (o *RequestTimeFilterPostcodesDepartureSearch) GetTransportation() RequestTransportation {
	if o == nil {
		var ret RequestTransportation
		return ret
	}

	return o.Transportation
}

// GetTransportationOk returns a tuple with the Transportation field value
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetTransportationOk() (*RequestTransportation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Transportation, true
}

// SetTransportation sets field value
func (o *RequestTimeFilterPostcodesDepartureSearch) SetTransportation(v RequestTransportation) {
	o.Transportation = v
}

// GetTravelTime returns the TravelTime field value
func (o *RequestTimeFilterPostcodesDepartureSearch) GetTravelTime() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.TravelTime
}

// GetTravelTimeOk returns a tuple with the TravelTime field value
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetTravelTimeOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.TravelTime, true
}

// SetTravelTime sets field value
func (o *RequestTimeFilterPostcodesDepartureSearch) SetTravelTime(v int32) {
	o.TravelTime = v
}

// GetDepartureTime returns the DepartureTime field value
func (o *RequestTimeFilterPostcodesDepartureSearch) GetDepartureTime() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.DepartureTime
}

// GetDepartureTimeOk returns a tuple with the DepartureTime field value
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetDepartureTimeOk() (*time.Time, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.DepartureTime, true
}

// SetDepartureTime sets field value
func (o *RequestTimeFilterPostcodesDepartureSearch) SetDepartureTime(v time.Time) {
	o.DepartureTime = v
}

// GetProperties returns the Properties field value
func (o *RequestTimeFilterPostcodesDepartureSearch) GetProperties() []RequestTimeFilterPostcodesProperty {
	if o == nil {
		var ret []RequestTimeFilterPostcodesProperty
		return ret
	}

	return o.Properties
}

// GetPropertiesOk returns a tuple with the Properties field value
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodesProperty, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Properties, true
}

// SetProperties sets field value
func (o *RequestTimeFilterPostcodesDepartureSearch) SetProperties(v []RequestTimeFilterPostcodesProperty) {
	o.Properties = v
}

// GetRange returns the Range field value if set, zero value otherwise.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetRange() RequestRangeFull {
	if o == nil || o.Range == nil {
		var ret RequestRangeFull
		return ret
	}
	return *o.Range
}

// GetRangeOk returns a tuple with the Range field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) GetRangeOk() (*RequestRangeFull, bool) {
	if o == nil || o.Range == nil {
		return nil, false
	}
	return o.Range, true
}

// HasRange returns a boolean if a field has been set.
func (o *RequestTimeFilterPostcodesDepartureSearch) HasRange() bool {
	if o != nil && o.Range != nil {
		return true
	}

	return false
}

// SetRange gets a reference to the given RequestRangeFull and assigns it to the Range field.
func (o *RequestTimeFilterPostcodesDepartureSearch) SetRange(v RequestRangeFull) {
	o.Range = &v
}

func (o RequestTimeFilterPostcodesDepartureSearch) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
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
	if true {
		toSerialize["properties"] = o.Properties
	}
	if o.Range != nil {
		toSerialize["range"] = o.Range
	}
	return json.Marshal(toSerialize)
}

type NullableRequestTimeFilterPostcodesDepartureSearch struct {
	value *RequestTimeFilterPostcodesDepartureSearch
	isSet bool
}

func (v NullableRequestTimeFilterPostcodesDepartureSearch) Get() *RequestTimeFilterPostcodesDepartureSearch {
	return v.value
}

func (v *NullableRequestTimeFilterPostcodesDepartureSearch) Set(val *RequestTimeFilterPostcodesDepartureSearch) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestTimeFilterPostcodesDepartureSearch) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestTimeFilterPostcodesDepartureSearch) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestTimeFilterPostcodesDepartureSearch(val *RequestTimeFilterPostcodesDepartureSearch) *NullableRequestTimeFilterPostcodesDepartureSearch {
	return &NullableRequestTimeFilterPostcodesDepartureSearch{value: val, isSet: true}
}

func (v NullableRequestTimeFilterPostcodesDepartureSearch) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestTimeFilterPostcodesDepartureSearch) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


