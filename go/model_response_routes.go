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

// ResponseRoutes struct for ResponseRoutes
type ResponseRoutes struct {
	Results []ResponseRoutesResult `json:"results"`
}

// NewResponseRoutes instantiates a new ResponseRoutes object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseRoutes(results []ResponseRoutesResult) *ResponseRoutes {
	this := ResponseRoutes{}
	this.Results = results
	return &this
}

// NewResponseRoutesWithDefaults instantiates a new ResponseRoutes object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseRoutesWithDefaults() *ResponseRoutes {
	this := ResponseRoutes{}
	return &this
}

// GetResults returns the Results field value
func (o *ResponseRoutes) GetResults() []ResponseRoutesResult {
	if o == nil {
		var ret []ResponseRoutesResult
		return ret
	}

	return o.Results
}

// GetResultsOk returns a tuple with the Results field value
// and a boolean to check if the value has been set.
func (o *ResponseRoutes) GetResultsOk() (*[]ResponseRoutesResult, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Results, true
}

// SetResults sets field value
func (o *ResponseRoutes) SetResults(v []ResponseRoutesResult) {
	o.Results = v
}

func (o ResponseRoutes) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["results"] = o.Results
	}
	return json.Marshal(toSerialize)
}

type NullableResponseRoutes struct {
	value *ResponseRoutes
	isSet bool
}

func (v NullableResponseRoutes) Get() *ResponseRoutes {
	return v.value
}

func (v *NullableResponseRoutes) Set(val *ResponseRoutes) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseRoutes) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseRoutes) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseRoutes(val *ResponseRoutes) *NullableResponseRoutes {
	return &NullableResponseRoutes{value: val, isSet: true}
}

func (v NullableResponseRoutes) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseRoutes) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


