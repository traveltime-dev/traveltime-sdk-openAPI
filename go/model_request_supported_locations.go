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

// RequestSupportedLocations struct for RequestSupportedLocations
type RequestSupportedLocations struct {
	Locations []RequestLocation `json:"locations"`
}

// NewRequestSupportedLocations instantiates a new RequestSupportedLocations object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRequestSupportedLocations(locations []RequestLocation) *RequestSupportedLocations {
	this := RequestSupportedLocations{}
	this.Locations = locations
	return &this
}

// NewRequestSupportedLocationsWithDefaults instantiates a new RequestSupportedLocations object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRequestSupportedLocationsWithDefaults() *RequestSupportedLocations {
	this := RequestSupportedLocations{}
	return &this
}

// GetLocations returns the Locations field value
func (o *RequestSupportedLocations) GetLocations() []RequestLocation {
	if o == nil {
		var ret []RequestLocation
		return ret
	}

	return o.Locations
}

// GetLocationsOk returns a tuple with the Locations field value
// and a boolean to check if the value has been set.
func (o *RequestSupportedLocations) GetLocationsOk() (*[]RequestLocation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Locations, true
}

// SetLocations sets field value
func (o *RequestSupportedLocations) SetLocations(v []RequestLocation) {
	o.Locations = v
}

func (o RequestSupportedLocations) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["locations"] = o.Locations
	}
	return json.Marshal(toSerialize)
}

type NullableRequestSupportedLocations struct {
	value *RequestSupportedLocations
	isSet bool
}

func (v NullableRequestSupportedLocations) Get() *RequestSupportedLocations {
	return v.value
}

func (v *NullableRequestSupportedLocations) Set(val *RequestSupportedLocations) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestSupportedLocations) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestSupportedLocations) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestSupportedLocations(val *RequestSupportedLocations) *NullableRequestSupportedLocations {
	return &NullableRequestSupportedLocations{value: val, isSet: true}
}

func (v NullableRequestSupportedLocations) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestSupportedLocations) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


