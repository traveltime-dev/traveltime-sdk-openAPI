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

// ResponseTimeFilter struct for ResponseTimeFilter
type ResponseTimeFilter struct {
	Results []ResponseTimeFilterResult `json:"results"`
}

// NewResponseTimeFilter instantiates a new ResponseTimeFilter object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilter(results []ResponseTimeFilterResult) *ResponseTimeFilter {
	this := ResponseTimeFilter{}
	this.Results = results
	return &this
}

// NewResponseTimeFilterWithDefaults instantiates a new ResponseTimeFilter object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterWithDefaults() *ResponseTimeFilter {
	this := ResponseTimeFilter{}
	return &this
}

// GetResults returns the Results field value
func (o *ResponseTimeFilter) GetResults() []ResponseTimeFilterResult {
	if o == nil {
		var ret []ResponseTimeFilterResult
		return ret
	}

	return o.Results
}

// GetResultsOk returns a tuple with the Results field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilter) GetResultsOk() (*[]ResponseTimeFilterResult, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Results, true
}

// SetResults sets field value
func (o *ResponseTimeFilter) SetResults(v []ResponseTimeFilterResult) {
	o.Results = v
}

func (o ResponseTimeFilter) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["results"] = o.Results
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilter struct {
	value *ResponseTimeFilter
	isSet bool
}

func (v NullableResponseTimeFilter) Get() *ResponseTimeFilter {
	return v.value
}

func (v *NullableResponseTimeFilter) Set(val *ResponseTimeFilter) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilter) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilter) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilter(val *ResponseTimeFilter) *NullableResponseTimeFilter {
	return &NullableResponseTimeFilter{value: val, isSet: true}
}

func (v NullableResponseTimeFilter) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilter) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


