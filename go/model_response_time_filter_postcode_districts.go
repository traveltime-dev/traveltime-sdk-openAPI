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

// ResponseTimeFilterPostcodeDistricts struct for ResponseTimeFilterPostcodeDistricts
type ResponseTimeFilterPostcodeDistricts struct {
	Results []ResponseTimeFilterPostcodeDistrictsResult `json:"results"`
}

// NewResponseTimeFilterPostcodeDistricts instantiates a new ResponseTimeFilterPostcodeDistricts object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilterPostcodeDistricts(results []ResponseTimeFilterPostcodeDistrictsResult) *ResponseTimeFilterPostcodeDistricts {
	this := ResponseTimeFilterPostcodeDistricts{}
	this.Results = results
	return &this
}

// NewResponseTimeFilterPostcodeDistrictsWithDefaults instantiates a new ResponseTimeFilterPostcodeDistricts object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterPostcodeDistrictsWithDefaults() *ResponseTimeFilterPostcodeDistricts {
	this := ResponseTimeFilterPostcodeDistricts{}
	return &this
}

// GetResults returns the Results field value
func (o *ResponseTimeFilterPostcodeDistricts) GetResults() []ResponseTimeFilterPostcodeDistrictsResult {
	if o == nil {
		var ret []ResponseTimeFilterPostcodeDistrictsResult
		return ret
	}

	return o.Results
}

// GetResultsOk returns a tuple with the Results field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterPostcodeDistricts) GetResultsOk() (*[]ResponseTimeFilterPostcodeDistrictsResult, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Results, true
}

// SetResults sets field value
func (o *ResponseTimeFilterPostcodeDistricts) SetResults(v []ResponseTimeFilterPostcodeDistrictsResult) {
	o.Results = v
}

func (o ResponseTimeFilterPostcodeDistricts) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["results"] = o.Results
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilterPostcodeDistricts struct {
	value *ResponseTimeFilterPostcodeDistricts
	isSet bool
}

func (v NullableResponseTimeFilterPostcodeDistricts) Get() *ResponseTimeFilterPostcodeDistricts {
	return v.value
}

func (v *NullableResponseTimeFilterPostcodeDistricts) Set(val *ResponseTimeFilterPostcodeDistricts) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilterPostcodeDistricts) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilterPostcodeDistricts) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilterPostcodeDistricts(val *ResponseTimeFilterPostcodeDistricts) *NullableResponseTimeFilterPostcodeDistricts {
	return &NullableResponseTimeFilterPostcodeDistricts{value: val, isSet: true}
}

func (v NullableResponseTimeFilterPostcodeDistricts) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilterPostcodeDistricts) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


