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

// ResponseRoutesResult struct for ResponseRoutesResult
type ResponseRoutesResult struct {
	SearchId string `json:"search_id"`
	Locations []ResponseRoutesLocation `json:"locations"`
	Unreachable []string `json:"unreachable"`
}

// NewResponseRoutesResult instantiates a new ResponseRoutesResult object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseRoutesResult(searchId string, locations []ResponseRoutesLocation, unreachable []string) *ResponseRoutesResult {
	this := ResponseRoutesResult{}
	this.SearchId = searchId
	this.Locations = locations
	this.Unreachable = unreachable
	return &this
}

// NewResponseRoutesResultWithDefaults instantiates a new ResponseRoutesResult object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseRoutesResultWithDefaults() *ResponseRoutesResult {
	this := ResponseRoutesResult{}
	return &this
}

// GetSearchId returns the SearchId field value
func (o *ResponseRoutesResult) GetSearchId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.SearchId
}

// GetSearchIdOk returns a tuple with the SearchId field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutesResult) GetSearchIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SearchId, true
}

// SetSearchId sets field value
func (o *ResponseRoutesResult) SetSearchId(v string) {
	o.SearchId = v
}

// GetLocations returns the Locations field value
func (o *ResponseRoutesResult) GetLocations() []ResponseRoutesLocation {
	if o == nil {
		var ret []ResponseRoutesLocation
		return ret
	}

	return o.Locations
}

// GetLocationsOk returns a tuple with the Locations field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutesResult) GetLocationsOk() (*[]ResponseRoutesLocation, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Locations, true
}

// SetLocations sets field value
func (o *ResponseRoutesResult) SetLocations(v []ResponseRoutesLocation) {
	o.Locations = v
}

// GetUnreachable returns the Unreachable field value
func (o *ResponseRoutesResult) GetUnreachable() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Unreachable
}

// GetUnreachableOk returns a tuple with the Unreachable field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutesResult) GetUnreachableOk() (*[]string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Unreachable, true
}

// SetUnreachable sets field value
func (o *ResponseRoutesResult) SetUnreachable(v []string) {
	o.Unreachable = v
}

func (o ResponseRoutesResult) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["search_id"] = o.SearchId
	}
	if true {
		toSerialize["locations"] = o.Locations
	}
	if true {
		toSerialize["unreachable"] = o.Unreachable
	}
	return json.Marshal(toSerialize)
}

type NullableResponseRoutesResult struct {
	value *ResponseRoutesResult
	isSet bool
}

func (v NullableResponseRoutesResult) Get() *ResponseRoutesResult {
	return v.value
}

func (v *NullableResponseRoutesResult) Set(val *ResponseRoutesResult) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseRoutesResult) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseRoutesResult) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseRoutesResult(val *ResponseRoutesResult) *NullableResponseRoutesResult {
	return &NullableResponseRoutesResult{value: val, isSet: true}
}

func (v NullableResponseRoutesResult) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseRoutesResult) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


