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
)

// ResponseSupportedLocations struct for ResponseSupportedLocations
type ResponseSupportedLocations struct {
	Locations []ResponseSupportedLocation `json:"locations"`
	UnsupportedLocations []string `json:"unsupported_locations"`
}

// NewResponseSupportedLocations instantiates a new ResponseSupportedLocations object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseSupportedLocations(locations []ResponseSupportedLocation, unsupportedLocations []string) *ResponseSupportedLocations {
	this := ResponseSupportedLocations{}
	this.Locations = locations
	this.UnsupportedLocations = unsupportedLocations
	return &this
}

// NewResponseSupportedLocationsWithDefaults instantiates a new ResponseSupportedLocations object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseSupportedLocationsWithDefaults() *ResponseSupportedLocations {
	this := ResponseSupportedLocations{}
	return &this
}

// GetLocations returns the Locations field value
func (o *ResponseSupportedLocations) GetLocations() []ResponseSupportedLocation {
	if o == nil {
		var ret []ResponseSupportedLocation
		return ret
	}

	return o.Locations
}

// GetLocationsOk returns a tuple with the Locations field value
// and a boolean to check if the value has been set.
func (o *ResponseSupportedLocations) GetLocationsOk() (*[]ResponseSupportedLocation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Locations, true
}

// SetLocations sets field value
func (o *ResponseSupportedLocations) SetLocations(v []ResponseSupportedLocation) {
	o.Locations = v
}

// GetUnsupportedLocations returns the UnsupportedLocations field value
func (o *ResponseSupportedLocations) GetUnsupportedLocations() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.UnsupportedLocations
}

// GetUnsupportedLocationsOk returns a tuple with the UnsupportedLocations field value
// and a boolean to check if the value has been set.
func (o *ResponseSupportedLocations) GetUnsupportedLocationsOk() (*[]string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.UnsupportedLocations, true
}

// SetUnsupportedLocations sets field value
func (o *ResponseSupportedLocations) SetUnsupportedLocations(v []string) {
	o.UnsupportedLocations = v
}

func (o ResponseSupportedLocations) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["locations"] = o.Locations
	}
	if true {
		toSerialize["unsupported_locations"] = o.UnsupportedLocations
	}
	return json.Marshal(toSerialize)
}

type NullableResponseSupportedLocations struct {
	value *ResponseSupportedLocations
	isSet bool
}

func (v NullableResponseSupportedLocations) Get() *ResponseSupportedLocations {
	return v.value
}

func (v *NullableResponseSupportedLocations) Set(val *ResponseSupportedLocations) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseSupportedLocations) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseSupportedLocations) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseSupportedLocations(val *ResponseSupportedLocations) *NullableResponseSupportedLocations {
	return &NullableResponseSupportedLocations{value: val, isSet: true}
}

func (v NullableResponseSupportedLocations) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseSupportedLocations) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


