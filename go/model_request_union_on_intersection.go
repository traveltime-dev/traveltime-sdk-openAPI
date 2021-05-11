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

// RequestUnionOnIntersection struct for RequestUnionOnIntersection
type RequestUnionOnIntersection struct {
	Id string `json:"id"`
	SearchIds []string `json:"search_ids"`
}

// NewRequestUnionOnIntersection instantiates a new RequestUnionOnIntersection object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRequestUnionOnIntersection(id string, searchIds []string) *RequestUnionOnIntersection {
	this := RequestUnionOnIntersection{}
	this.Id = id
	this.SearchIds = searchIds
	return &this
}

// NewRequestUnionOnIntersectionWithDefaults instantiates a new RequestUnionOnIntersection object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRequestUnionOnIntersectionWithDefaults() *RequestUnionOnIntersection {
	this := RequestUnionOnIntersection{}
	return &this
}

// GetId returns the Id field value
func (o *RequestUnionOnIntersection) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *RequestUnionOnIntersection) GetIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *RequestUnionOnIntersection) SetId(v string) {
	o.Id = v
}

// GetSearchIds returns the SearchIds field value
func (o *RequestUnionOnIntersection) GetSearchIds() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.SearchIds
}

// GetSearchIdsOk returns a tuple with the SearchIds field value
// and a boolean to check if the value has been set.
func (o *RequestUnionOnIntersection) GetSearchIdsOk() (*[]string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SearchIds, true
}

// SetSearchIds sets field value
func (o *RequestUnionOnIntersection) SetSearchIds(v []string) {
	o.SearchIds = v
}

func (o RequestUnionOnIntersection) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["search_ids"] = o.SearchIds
	}
	return json.Marshal(toSerialize)
}

type NullableRequestUnionOnIntersection struct {
	value *RequestUnionOnIntersection
	isSet bool
}

func (v NullableRequestUnionOnIntersection) Get() *RequestUnionOnIntersection {
	return v.value
}

func (v *NullableRequestUnionOnIntersection) Set(val *RequestUnionOnIntersection) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestUnionOnIntersection) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestUnionOnIntersection) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestUnionOnIntersection(val *RequestUnionOnIntersection) *NullableRequestUnionOnIntersection {
	return &NullableRequestUnionOnIntersection{value: val, isSet: true}
}

func (v NullableRequestUnionOnIntersection) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestUnionOnIntersection) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


