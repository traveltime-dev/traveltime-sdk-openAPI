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

// ResponseTimeFilterFast struct for ResponseTimeFilterFast
type ResponseTimeFilterFast struct {
	Results []ResponseTimeFilterFastResult `json:"results"`
}

// NewResponseTimeFilterFast instantiates a new ResponseTimeFilterFast object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilterFast(results []ResponseTimeFilterFastResult) *ResponseTimeFilterFast {
	this := ResponseTimeFilterFast{}
	this.Results = results
	return &this
}

// NewResponseTimeFilterFastWithDefaults instantiates a new ResponseTimeFilterFast object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterFastWithDefaults() *ResponseTimeFilterFast {
	this := ResponseTimeFilterFast{}
	return &this
}

// GetResults returns the Results field value
func (o *ResponseTimeFilterFast) GetResults() []ResponseTimeFilterFastResult {
	if o == nil {
		var ret []ResponseTimeFilterFastResult
		return ret
	}

	return o.Results
}

// GetResultsOk returns a tuple with the Results field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterFast) GetResultsOk() (*[]ResponseTimeFilterFastResult, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Results, true
}

// SetResults sets field value
func (o *ResponseTimeFilterFast) SetResults(v []ResponseTimeFilterFastResult) {
	o.Results = v
}

func (o ResponseTimeFilterFast) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["results"] = o.Results
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilterFast struct {
	value *ResponseTimeFilterFast
	isSet bool
}

func (v NullableResponseTimeFilterFast) Get() *ResponseTimeFilterFast {
	return v.value
}

func (v *NullableResponseTimeFilterFast) Set(val *ResponseTimeFilterFast) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilterFast) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilterFast) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilterFast(val *ResponseTimeFilterFast) *NullableResponseTimeFilterFast {
	return &NullableResponseTimeFilterFast{value: val, isSet: true}
}

func (v NullableResponseTimeFilterFast) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilterFast) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


