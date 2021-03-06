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

// RequestTimeFilterPostcodesProperty the model 'RequestTimeFilterPostcodesProperty'
type RequestTimeFilterPostcodesProperty string

// List of RequestTimeFilterPostcodesProperty
const (
	TRAVEL_TIME RequestTimeFilterPostcodesProperty = "travel_time"
	DISTANCE RequestTimeFilterPostcodesProperty = "distance"
)

var allowedRequestTimeFilterPostcodesPropertyEnumValues = []RequestTimeFilterPostcodesProperty{
	"travel_time",
	"distance",
}

func (v *RequestTimeFilterPostcodesProperty) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := RequestTimeFilterPostcodesProperty(value)
	for _, existing := range allowedRequestTimeFilterPostcodesPropertyEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid RequestTimeFilterPostcodesProperty", value)
}

// NewRequestTimeFilterPostcodesPropertyFromValue returns a pointer to a valid RequestTimeFilterPostcodesProperty
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewRequestTimeFilterPostcodesPropertyFromValue(v string) (*RequestTimeFilterPostcodesProperty, error) {
	ev := RequestTimeFilterPostcodesProperty(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for RequestTimeFilterPostcodesProperty: valid values are %v", v, allowedRequestTimeFilterPostcodesPropertyEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v RequestTimeFilterPostcodesProperty) IsValid() bool {
	for _, existing := range allowedRequestTimeFilterPostcodesPropertyEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to RequestTimeFilterPostcodesProperty value
func (v RequestTimeFilterPostcodesProperty) Ptr() *RequestTimeFilterPostcodesProperty {
	return &v
}

type NullableRequestTimeFilterPostcodesProperty struct {
	value *RequestTimeFilterPostcodesProperty
	isSet bool
}

func (v NullableRequestTimeFilterPostcodesProperty) Get() *RequestTimeFilterPostcodesProperty {
	return v.value
}

func (v *NullableRequestTimeFilterPostcodesProperty) Set(val *RequestTimeFilterPostcodesProperty) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestTimeFilterPostcodesProperty) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestTimeFilterPostcodesProperty) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestTimeFilterPostcodesProperty(val *RequestTimeFilterPostcodesProperty) *NullableRequestTimeFilterPostcodesProperty {
	return &NullableRequestTimeFilterPostcodesProperty{value: val, isSet: true}
}

func (v NullableRequestTimeFilterPostcodesProperty) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestTimeFilterPostcodesProperty) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

