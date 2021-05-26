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

// ResponseTravelTimeStatistics struct for ResponseTravelTimeStatistics
type ResponseTravelTimeStatistics struct {
	Min int32 `json:"min"`
	Max int32 `json:"max"`
	Mean int32 `json:"mean"`
	Median int32 `json:"median"`
}

// NewResponseTravelTimeStatistics instantiates a new ResponseTravelTimeStatistics object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTravelTimeStatistics(min int32, max int32, mean int32, median int32) *ResponseTravelTimeStatistics {
	this := ResponseTravelTimeStatistics{}
	this.Min = min
	this.Max = max
	this.Mean = mean
	this.Median = median
	return &this
}

// NewResponseTravelTimeStatisticsWithDefaults instantiates a new ResponseTravelTimeStatistics object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTravelTimeStatisticsWithDefaults() *ResponseTravelTimeStatistics {
	this := ResponseTravelTimeStatistics{}
	return &this
}

// GetMin returns the Min field value
func (o *ResponseTravelTimeStatistics) GetMin() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Min
}

// GetMinOk returns a tuple with the Min field value
// and a boolean to check if the value has been set.
func (o *ResponseTravelTimeStatistics) GetMinOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Min, true
}

// SetMin sets field value
func (o *ResponseTravelTimeStatistics) SetMin(v int32) {
	o.Min = v
}

// GetMax returns the Max field value
func (o *ResponseTravelTimeStatistics) GetMax() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Max
}

// GetMaxOk returns a tuple with the Max field value
// and a boolean to check if the value has been set.
func (o *ResponseTravelTimeStatistics) GetMaxOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Max, true
}

// SetMax sets field value
func (o *ResponseTravelTimeStatistics) SetMax(v int32) {
	o.Max = v
}

// GetMean returns the Mean field value
func (o *ResponseTravelTimeStatistics) GetMean() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Mean
}

// GetMeanOk returns a tuple with the Mean field value
// and a boolean to check if the value has been set.
func (o *ResponseTravelTimeStatistics) GetMeanOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Mean, true
}

// SetMean sets field value
func (o *ResponseTravelTimeStatistics) SetMean(v int32) {
	o.Mean = v
}

// GetMedian returns the Median field value
func (o *ResponseTravelTimeStatistics) GetMedian() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Median
}

// GetMedianOk returns a tuple with the Median field value
// and a boolean to check if the value has been set.
func (o *ResponseTravelTimeStatistics) GetMedianOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Median, true
}

// SetMedian sets field value
func (o *ResponseTravelTimeStatistics) SetMedian(v int32) {
	o.Median = v
}

func (o ResponseTravelTimeStatistics) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["min"] = o.Min
	}
	if true {
		toSerialize["max"] = o.Max
	}
	if true {
		toSerialize["mean"] = o.Mean
	}
	if true {
		toSerialize["median"] = o.Median
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTravelTimeStatistics struct {
	value *ResponseTravelTimeStatistics
	isSet bool
}

func (v NullableResponseTravelTimeStatistics) Get() *ResponseTravelTimeStatistics {
	return v.value
}

func (v *NullableResponseTravelTimeStatistics) Set(val *ResponseTravelTimeStatistics) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTravelTimeStatistics) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTravelTimeStatistics) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTravelTimeStatistics(val *ResponseTravelTimeStatistics) *NullableResponseTravelTimeStatistics {
	return &NullableResponseTravelTimeStatistics{value: val, isSet: true}
}

func (v NullableResponseTravelTimeStatistics) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTravelTimeStatistics) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


