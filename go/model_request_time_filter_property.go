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
	"fmt"
)

// RequestTimeFilterProperty the model 'RequestTimeFilterProperty'
type RequestTimeFilterProperty string

// List of RequestTimeFilterProperty
const (
	TRAVEL_TIME RequestTimeFilterProperty = "travel_time"
	DISTANCE RequestTimeFilterProperty = "distance"
	DISTANCE_BREAKDOWN RequestTimeFilterProperty = "distance_breakdown"
	FARES RequestTimeFilterProperty = "fares"
	ROUTE RequestTimeFilterProperty = "route"
)

var allowedRequestTimeFilterPropertyEnumValues = []RequestTimeFilterProperty{
	"travel_time",
	"distance",
	"distance_breakdown",
	"fares",
	"route",
}

func (v *RequestTimeFilterProperty) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := RequestTimeFilterProperty(value)
	for _, existing := range allowedRequestTimeFilterPropertyEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid RequestTimeFilterProperty", value)
}

// NewRequestTimeFilterPropertyFromValue returns a pointer to a valid RequestTimeFilterProperty
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewRequestTimeFilterPropertyFromValue(v string) (*RequestTimeFilterProperty, error) {
	ev := RequestTimeFilterProperty(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for RequestTimeFilterProperty: valid values are %v", v, allowedRequestTimeFilterPropertyEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v RequestTimeFilterProperty) IsValid() bool {
	for _, existing := range allowedRequestTimeFilterPropertyEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to RequestTimeFilterProperty value
func (v RequestTimeFilterProperty) Ptr() *RequestTimeFilterProperty {
	return &v
}

type NullableRequestTimeFilterProperty struct {
	value *RequestTimeFilterProperty
	isSet bool
}

func (v NullableRequestTimeFilterProperty) Get() *RequestTimeFilterProperty {
	return v.value
}

func (v *NullableRequestTimeFilterProperty) Set(val *RequestTimeFilterProperty) {
	v.value = val
	v.isSet = true
}

func (v NullableRequestTimeFilterProperty) IsSet() bool {
	return v.isSet
}

func (v *NullableRequestTimeFilterProperty) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRequestTimeFilterProperty(val *RequestTimeFilterProperty) *NullableRequestTimeFilterProperty {
	return &NullableRequestTimeFilterProperty{value: val, isSet: true}
}

func (v NullableRequestTimeFilterProperty) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRequestTimeFilterProperty) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

