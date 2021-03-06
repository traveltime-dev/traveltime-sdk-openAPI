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

// ResponseMapInfoMap struct for ResponseMapInfoMap
type ResponseMapInfoMap struct {
	Name string `json:"name"`
	Features ResponseMapInfoFeatures `json:"features"`
}

// NewResponseMapInfoMap instantiates a new ResponseMapInfoMap object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseMapInfoMap(name string, features ResponseMapInfoFeatures) *ResponseMapInfoMap {
	this := ResponseMapInfoMap{}
	this.Name = name
	this.Features = features
	return &this
}

// NewResponseMapInfoMapWithDefaults instantiates a new ResponseMapInfoMap object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseMapInfoMapWithDefaults() *ResponseMapInfoMap {
	this := ResponseMapInfoMap{}
	return &this
}

// GetName returns the Name field value
func (o *ResponseMapInfoMap) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *ResponseMapInfoMap) GetNameOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *ResponseMapInfoMap) SetName(v string) {
	o.Name = v
}

// GetFeatures returns the Features field value
func (o *ResponseMapInfoMap) GetFeatures() ResponseMapInfoFeatures {
	if o == nil {
		var ret ResponseMapInfoFeatures
		return ret
	}

	return o.Features
}

// GetFeaturesOk returns a tuple with the Features field value
// and a boolean to check if the value has been set.
func (o *ResponseMapInfoMap) GetFeaturesOk() (*ResponseMapInfoFeatures, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Features, true
}

// SetFeatures sets field value
func (o *ResponseMapInfoMap) SetFeatures(v ResponseMapInfoFeatures) {
	o.Features = v
}

func (o ResponseMapInfoMap) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["features"] = o.Features
	}
	return json.Marshal(toSerialize)
}

type NullableResponseMapInfoMap struct {
	value *ResponseMapInfoMap
	isSet bool
}

func (v NullableResponseMapInfoMap) Get() *ResponseMapInfoMap {
	return v.value
}

func (v *NullableResponseMapInfoMap) Set(val *ResponseMapInfoMap) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseMapInfoMap) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseMapInfoMap) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseMapInfoMap(val *ResponseMapInfoMap) *NullableResponseMapInfoMap {
	return &NullableResponseMapInfoMap{value: val, isSet: true}
}

func (v NullableResponseMapInfoMap) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseMapInfoMap) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


