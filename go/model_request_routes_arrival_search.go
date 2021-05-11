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

// RequestRoutesArrivalSearch struct for RequestRoutesArrivalSearch
type RequestRoutesArrivalSearch struct {
	Id string `json:"id"`
	DepartureLocationIds []string `json:"departure_location_ids"`
	ArrivalLocationId string `json:"arrival_location_id"`
	Transportation RequestTransportation `json:"transportation"`
	ArrivalTime time.Time `json:"arrival_time"`
	Properties []RequestRoutesProperty `json:"properties"`
	Range *RequestRangeFull `json:"range,omitempty"`
}

// NewRequestRoutesArrivalSearch instantiates a new RequestRoutesArrivalSearch object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRequestRoutesArrivalSearch(id string, departureLocationIds []string, arrivalLocationId string, transportation RequestTransportation, arrivalTime time.Time, properties []RequestRoutesProperty) *RequestRoutesArrivalSearch {
	this := RequestRoutesArrivalSearch{}
	this.Id = id
	this.DepartureLocationIds = departureLocationIds
	this.ArrivalLocationId = arrivalLocationId
	this.Transportation = transportation
	this.ArrivalTime = arrivalTime
	this.Properties = properties
	return &this
}

// NewRequestRoutesArrivalSearchWithDefaults instantiates a new RequestRoutesArrivalSearch object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRequestRoutesArrivalSearchWithDefaults() *RequestRoutesArrivalSearch {
	this := RequestRoutesArrivalSearch{}
	return &this
}

// GetId returns the Id field value
func (o *RequestRoutesArrivalSearch) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *RequestRoutesArrivalSearch) SetId(v string) {
	o.Id = v
}

// GetDepartureLocationIds returns the DepartureLocationIds field value
func (o *RequestRoutesArrivalSearch) GetDepartureLocationIds() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.DepartureLocationIds
}

// GetDepartureLocationIdsOk returns a tuple with the DepartureLocationIds field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetDepartureLocationIdsOk() (*[]string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.DepartureLocationIds, true
}

// SetDepartureLocationIds sets field value
func (o *RequestRoutesArrivalSearch) SetDepartureLocationIds(v []string) {
	o.DepartureLocationIds = v
}

// GetArrivalLocationId returns the ArrivalLocationId field value
func (o *RequestRoutesArrivalSearch) GetArrivalLocationId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ArrivalLocationId
}

// GetArrivalLocationIdOk returns a tuple with the ArrivalLocationId field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetArrivalLocationIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.ArrivalLocationId, true
}

// SetArrivalLocationId sets field value
func (o *RequestRoutesArrivalSearch) SetArrivalLocationId(v string) {
	o.ArrivalLocationId = v
}

// GetTransportation returns the Transportation field value
func (o *RequestRoutesArrivalSearch) GetTransportation() RequestTransportation {
	if o == nil {
		var ret RequestTransportation
		return ret
	}

	return o.Transportation
}

// GetTransportationOk returns a tuple with the Transportation field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetTransportationOk() (*RequestTransportation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Transportation, true
}

// SetTransportation sets field value
func (o *RequestRoutesArrivalSearch) SetTransportation(v RequestTransportation) {
	o.Transportation = v
}

// GetArrivalTime returns the ArrivalTime field value
func (o *RequestRoutesArrivalSearch) GetArrivalTime() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.ArrivalTime
}

// GetArrivalTimeOk returns a tuple with the ArrivalTime field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetArrivalTimeOk() (*time.Time, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.ArrivalTime, true
}

// SetArrivalTime sets field value
func (o *RequestRoutesArrivalSearch) SetArrivalTime(v time.Time) {
	o.ArrivalTime = v
}

// GetProperties returns the Properties field value
func (o *RequestRoutesArrivalSearch) GetProperties() []RequestRoutesProperty {
	if o == nil {
		var ret []RequestRoutesProperty
		return ret
	}

	return o.Properties
}

// GetPropertiesOk returns a tuple with the Properties field value
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetPropertiesOk() (*[]RequestRoutesProperty, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Properties, true
}

// SetProperties sets field value
func (o *RequestRoutesArrivalSearch) SetProperties(v []RequestRoutesProperty) {
	o.Properties = v
}

// GetRange returns the Range field value if set, zero value otherwise.
func (o *RequestRoutesArrivalSearch) GetRange() RequestRangeFull {
	if o == nil || o.Range == nil {
		var ret RequestRangeFull
		return ret
	}
	return *o.Range
}

// GetRangeOk returns a tuple with the Range field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RequestRoutesArrivalSearch) GetRangeOk() (*RequestRangeFull, bool) {
	if o == nil || o.Range == nil {
		return nil, false
	}
	return o.Range, true
}

// HasRange returns a boolean if a field has been set.
func (o *RequestRoutesArrivalSearch) HasRange() bool {
	if o != nil && o.Range != nil {
		return true
	}

	return false
}

// SetRange gets a reference to the given RequestRangeFull and assigns it to the Range field.
func (o *RequestRoutesArrivalSearch) SetRange(v RequestRangeFull) {
	o.Range = &v
}

func (o RequestRoutesArrivalSearch) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["departure_location_ids"] = o.DepartureLocationIds
	}
	if true {
		toSerialize["arrival_location_id"] = o.ArrivalLocationId
	}
	if true {
		toSerialize["transportation"] = o.Transportation
	}
	if true {
		toSerialize["arrival_time"] = o.ArrivalTime
	}
	if true {
		toSerialize["properties"] = o.Properties
	}
	if o.Range != nil {
		toSerialize["range"] = o.Range
	}
	return json.Marshal(toSerialize)
}

type NullableRequestRoutesArrivalSearch struct {
	value *RequestRoutesArrivalSearch
	isSet bool
}

func (v NullableRequestRoutesArrivalSearch) Get() *RequestRoutesArrivalSearch {
	return v.value
}

func (v *NullableRequestRoutesArrivalSearch) Set(val *RequestRoutesArrivalSearch) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestRoutesArrivalSearch) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestRoutesArrivalSearch) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestRoutesArrivalSearch(val *RequestRoutesArrivalSearch) *NullableRequestRoutesArrivalSearch {
	return &NullableRequestRoutesArrivalSearch{value: val, isSet: true}
}

func (v NullableRequestRoutesArrivalSearch) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestRoutesArrivalSearch) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


