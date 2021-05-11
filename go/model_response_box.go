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

// ResponseBox struct for ResponseBox
type ResponseBox struct {
	MinLat float64 `json:"min_lat"`
	MaxLat float64 `json:"max_lat"`
	MinLng float64 `json:"min_lng"`
	MaxLng float64 `json:"max_lng"`
}

// NewResponseBox instantiates a new ResponseBox object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseBox(minLat float64, maxLat float64, minLng float64, maxLng float64) *ResponseBox {
	this := ResponseBox{}
	this.MinLat = minLat
	this.MaxLat = maxLat
	this.MinLng = minLng
	this.MaxLng = maxLng
	return &this
}

// NewResponseBoxWithDefaults instantiates a new ResponseBox object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseBoxWithDefaults() *ResponseBox {
	this := ResponseBox{}
	return &this
}

// GetMinLat returns the MinLat field value
func (o *ResponseBox) GetMinLat() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.MinLat
}

// GetMinLatOk returns a tuple with the MinLat field value
// and a boolean to check if the value has been set.
func (o *ResponseBox) GetMinLatOk() (*float64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.MinLat, true
}

// SetMinLat sets field value
func (o *ResponseBox) SetMinLat(v float64) {
	o.MinLat = v
}

// GetMaxLat returns the MaxLat field value
func (o *ResponseBox) GetMaxLat() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.MaxLat
}

// GetMaxLatOk returns a tuple with the MaxLat field value
// and a boolean to check if the value has been set.
func (o *ResponseBox) GetMaxLatOk() (*float64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.MaxLat, true
}

// SetMaxLat sets field value
func (o *ResponseBox) SetMaxLat(v float64) {
	o.MaxLat = v
}

// GetMinLng returns the MinLng field value
func (o *ResponseBox) GetMinLng() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.MinLng
}

// GetMinLngOk returns a tuple with the MinLng field value
// and a boolean to check if the value has been set.
func (o *ResponseBox) GetMinLngOk() (*float64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.MinLng, true
}

// SetMinLng sets field value
func (o *ResponseBox) SetMinLng(v float64) {
	o.MinLng = v
}

// GetMaxLng returns the MaxLng field value
func (o *ResponseBox) GetMaxLng() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.MaxLng
}

// GetMaxLngOk returns a tuple with the MaxLng field value
// and a boolean to check if the value has been set.
func (o *ResponseBox) GetMaxLngOk() (*float64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.MaxLng, true
}

// SetMaxLng sets field value
func (o *ResponseBox) SetMaxLng(v float64) {
	o.MaxLng = v
}

func (o ResponseBox) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["min_lat"] = o.MinLat
	}
	if true {
		toSerialize["max_lat"] = o.MaxLat
	}
	if true {
		toSerialize["min_lng"] = o.MinLng
	}
	if true {
		toSerialize["max_lng"] = o.MaxLng
	}
	return json.Marshal(toSerialize)
}

type NullableResponseBox struct {
	value *ResponseBox
	isSet bool
}

func (v NullableResponseBox) Get() *ResponseBox {
	return v.value
}

func (v *NullableResponseBox) Set(val *ResponseBox) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseBox) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseBox) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseBox(val *ResponseBox) *NullableResponseBox {
	return &NullableResponseBox{value: val, isSet: true}
}

func (v NullableResponseBox) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseBox) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


