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

// ResponseTimeFilterFastProperties struct for ResponseTimeFilterFastProperties
type ResponseTimeFilterFastProperties struct {
	TravelTime *int32 `json:"travel_time,omitempty"`
	Fares *ResponseFaresFast `json:"fares,omitempty"`
}

// NewResponseTimeFilterFastProperties instantiates a new ResponseTimeFilterFastProperties object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilterFastProperties() *ResponseTimeFilterFastProperties {
	this := ResponseTimeFilterFastProperties{}
	return &this
}

// NewResponseTimeFilterFastPropertiesWithDefaults instantiates a new ResponseTimeFilterFastProperties object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterFastPropertiesWithDefaults() *ResponseTimeFilterFastProperties {
	this := ResponseTimeFilterFastProperties{}
	return &this
}

// GetTravelTime returns the TravelTime field value if set, zero value otherwise.
func (o *ResponseTimeFilterFastProperties) GetTravelTime() int32 {
	if o == nil || o.TravelTime == nil {
		var ret int32
		return ret
	}
	return *o.TravelTime
}

// GetTravelTimeOk returns a tuple with the TravelTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterFastProperties) GetTravelTimeOk() (*int32, bool) {
	if o == nil || o.TravelTime == nil {
		return nil, false
	}
	return o.TravelTime, true
}

// HasTravelTime returns a boolean if a field has been set.
func (o *ResponseTimeFilterFastProperties) HasTravelTime() bool {
	if o != nil && o.TravelTime != nil {
		return true
	}

	return false
}

// SetTravelTime gets a reference to the given int32 and assigns it to the TravelTime field.
func (o *ResponseTimeFilterFastProperties) SetTravelTime(v int32) {
	o.TravelTime = &v
}

// GetFares returns the Fares field value if set, zero value otherwise.
func (o *ResponseTimeFilterFastProperties) GetFares() ResponseFaresFast {
	if o == nil || o.Fares == nil {
		var ret ResponseFaresFast
		return ret
	}
	return *o.Fares
}

// GetFaresOk returns a tuple with the Fares field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterFastProperties) GetFaresOk() (*ResponseFaresFast, bool) {
	if o == nil || o.Fares == nil {
		return nil, false
	}
	return o.Fares, true
}

// HasFares returns a boolean if a field has been set.
func (o *ResponseTimeFilterFastProperties) HasFares() bool {
	if o != nil && o.Fares != nil {
		return true
	}

	return false
}

// SetFares gets a reference to the given ResponseFaresFast and assigns it to the Fares field.
func (o *ResponseTimeFilterFastProperties) SetFares(v ResponseFaresFast) {
	o.Fares = &v
}

func (o ResponseTimeFilterFastProperties) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.TravelTime != nil {
		toSerialize["travel_time"] = o.TravelTime
	}
	if o.Fares != nil {
		toSerialize["fares"] = o.Fares
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilterFastProperties struct {
	value *ResponseTimeFilterFastProperties
	isSet bool
}

func (v NullableResponseTimeFilterFastProperties) Get() *ResponseTimeFilterFastProperties {
	return v.value
}

func (v *NullableResponseTimeFilterFastProperties) Set(val *ResponseTimeFilterFastProperties) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilterFastProperties) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilterFastProperties) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilterFastProperties(val *ResponseTimeFilterFastProperties) *NullableResponseTimeFilterFastProperties {
	return &NullableResponseTimeFilterFastProperties{value: val, isSet: true}
}

func (v NullableResponseTimeFilterFastProperties) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilterFastProperties) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


