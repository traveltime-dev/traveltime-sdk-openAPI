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
	"fmt"
)

// RequestTimeFilterPostcodeSectorsProperty the model 'RequestTimeFilterPostcodeSectorsProperty'
type RequestTimeFilterPostcodeSectorsProperty string

// List of RequestTimeFilterPostcodeSectorsProperty
const (
	TRAVEL_TIME_REACHABLE RequestTimeFilterPostcodeSectorsProperty = "travel_time_reachable"
	TRAVEL_TIME_ALL RequestTimeFilterPostcodeSectorsProperty = "travel_time_all"
	COVERAGE RequestTimeFilterPostcodeSectorsProperty = "coverage"
)

var allowedRequestTimeFilterPostcodeSectorsPropertyEnumValues = []RequestTimeFilterPostcodeSectorsProperty{
	"travel_time_reachable",
	"travel_time_all",
	"coverage",
}

func (v *RequestTimeFilterPostcodeSectorsProperty) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := RequestTimeFilterPostcodeSectorsProperty(value)
	for _, existing := range allowedRequestTimeFilterPostcodeSectorsPropertyEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid RequestTimeFilterPostcodeSectorsProperty", value)
}

// NewRequestTimeFilterPostcodeSectorsPropertyFromValue returns a pointer to a valid RequestTimeFilterPostcodeSectorsProperty
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewRequestTimeFilterPostcodeSectorsPropertyFromValue(v string) (*RequestTimeFilterPostcodeSectorsProperty, error) {
	ev := RequestTimeFilterPostcodeSectorsProperty(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for RequestTimeFilterPostcodeSectorsProperty: valid values are %v", v, allowedRequestTimeFilterPostcodeSectorsPropertyEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v RequestTimeFilterPostcodeSectorsProperty) IsValid() bool {
	for _, existing := range allowedRequestTimeFilterPostcodeSectorsPropertyEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to RequestTimeFilterPostcodeSectorsProperty value
func (v RequestTimeFilterPostcodeSectorsProperty) Ptr() *RequestTimeFilterPostcodeSectorsProperty {
	return &v
}

type NullableRequestTimeFilterPostcodeSectorsProperty struct {
	value *RequestTimeFilterPostcodeSectorsProperty
	isSet bool
}

func (v NullableRequestTimeFilterPostcodeSectorsProperty) Get() *RequestTimeFilterPostcodeSectorsProperty {
	return v.value
}

func (v *NullableRequestTimeFilterPostcodeSectorsProperty) Set(val *RequestTimeFilterPostcodeSectorsProperty) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestTimeFilterPostcodeSectorsProperty) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestTimeFilterPostcodeSectorsProperty) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestTimeFilterPostcodeSectorsProperty(val *RequestTimeFilterPostcodeSectorsProperty) *NullableRequestTimeFilterPostcodeSectorsProperty {
	return &NullableRequestTimeFilterPostcodeSectorsProperty{value: val, isSet: true}
}

func (v NullableRequestTimeFilterPostcodeSectorsProperty) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestTimeFilterPostcodeSectorsProperty) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

