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

// ResponseTimeFilterPostcodeSectorsResult struct for ResponseTimeFilterPostcodeSectorsResult
type ResponseTimeFilterPostcodeSectorsResult struct {
	SearchId string `json:"search_id"`
	Sectors []ResponseTimeFilterPostcodeSector `json:"sectors"`
}

// NewResponseTimeFilterPostcodeSectorsResult instantiates a new ResponseTimeFilterPostcodeSectorsResult object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilterPostcodeSectorsResult(searchId string, sectors []ResponseTimeFilterPostcodeSector) *ResponseTimeFilterPostcodeSectorsResult {
	this := ResponseTimeFilterPostcodeSectorsResult{}
	this.SearchId = searchId
	this.Sectors = sectors
	return &this
}

// NewResponseTimeFilterPostcodeSectorsResultWithDefaults instantiates a new ResponseTimeFilterPostcodeSectorsResult object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterPostcodeSectorsResultWithDefaults() *ResponseTimeFilterPostcodeSectorsResult {
	this := ResponseTimeFilterPostcodeSectorsResult{}
	return &this
}

// GetSearchId returns the SearchId field value
func (o *ResponseTimeFilterPostcodeSectorsResult) GetSearchId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.SearchId
}

// GetSearchIdOk returns a tuple with the SearchId field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterPostcodeSectorsResult) GetSearchIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SearchId, true
}

// SetSearchId sets field value
func (o *ResponseTimeFilterPostcodeSectorsResult) SetSearchId(v string) {
	o.SearchId = v
}

// GetSectors returns the Sectors field value
func (o *ResponseTimeFilterPostcodeSectorsResult) GetSectors() []ResponseTimeFilterPostcodeSector {
	if o == nil {
		var ret []ResponseTimeFilterPostcodeSector
		return ret
	}

	return o.Sectors
}

// GetSectorsOk returns a tuple with the Sectors field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterPostcodeSectorsResult) GetSectorsOk() (*[]ResponseTimeFilterPostcodeSector, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Sectors, true
}

// SetSectors sets field value
func (o *ResponseTimeFilterPostcodeSectorsResult) SetSectors(v []ResponseTimeFilterPostcodeSector) {
	o.Sectors = v
}

func (o ResponseTimeFilterPostcodeSectorsResult) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["search_id"] = o.SearchId
	}
	if true {
		toSerialize["sectors"] = o.Sectors
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilterPostcodeSectorsResult struct {
	value *ResponseTimeFilterPostcodeSectorsResult
	isSet bool
}

func (v NullableResponseTimeFilterPostcodeSectorsResult) Get() *ResponseTimeFilterPostcodeSectorsResult {
	return v.value
}

func (v *NullableResponseTimeFilterPostcodeSectorsResult) Set(val *ResponseTimeFilterPostcodeSectorsResult) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilterPostcodeSectorsResult) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilterPostcodeSectorsResult) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilterPostcodeSectorsResult(val *ResponseTimeFilterPostcodeSectorsResult) *NullableResponseTimeFilterPostcodeSectorsResult {
	return &NullableResponseTimeFilterPostcodeSectorsResult{value: val, isSet: true}
}

func (v NullableResponseTimeFilterPostcodeSectorsResult) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilterPostcodeSectorsResult) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


