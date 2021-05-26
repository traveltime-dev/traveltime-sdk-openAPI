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

// ResponseGeocodingGeometry struct for ResponseGeocodingGeometry
type ResponseGeocodingGeometry struct {
	Type string `json:"type"`
	Coordinates []float64 `json:"coordinates"`
}

// NewResponseGeocodingGeometry instantiates a new ResponseGeocodingGeometry object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseGeocodingGeometry(type_ string, coordinates []float64) *ResponseGeocodingGeometry {
	this := ResponseGeocodingGeometry{}
	this.Type = type_
	this.Coordinates = coordinates
	return &this
}

// NewResponseGeocodingGeometryWithDefaults instantiates a new ResponseGeocodingGeometry object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseGeocodingGeometryWithDefaults() *ResponseGeocodingGeometry {
	this := ResponseGeocodingGeometry{}
	return &this
}

// GetType returns the Type field value
func (o *ResponseGeocodingGeometry) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingGeometry) GetTypeOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *ResponseGeocodingGeometry) SetType(v string) {
	o.Type = v
}

// GetCoordinates returns the Coordinates field value
func (o *ResponseGeocodingGeometry) GetCoordinates() []float64 {
	if o == nil {
		var ret []float64
		return ret
	}

	return o.Coordinates
}

// GetCoordinatesOk returns a tuple with the Coordinates field value
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingGeometry) GetCoordinatesOk() (*[]float64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Coordinates, true
}

// SetCoordinates sets field value
func (o *ResponseGeocodingGeometry) SetCoordinates(v []float64) {
	o.Coordinates = v
}

func (o ResponseGeocodingGeometry) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["type"] = o.Type
	}
	if true {
		toSerialize["coordinates"] = o.Coordinates
	}
	return json.Marshal(toSerialize)
}

type NullableResponseGeocodingGeometry struct {
	value *ResponseGeocodingGeometry
	isSet bool
}

func (v NullableResponseGeocodingGeometry) Get() *ResponseGeocodingGeometry {
	return v.value
}

func (v *NullableResponseGeocodingGeometry) Set(val *ResponseGeocodingGeometry) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseGeocodingGeometry) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseGeocodingGeometry) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseGeocodingGeometry(val *ResponseGeocodingGeometry) *NullableResponseGeocodingGeometry {
	return &NullableResponseGeocodingGeometry{value: val, isSet: true}
}

func (v NullableResponseGeocodingGeometry) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseGeocodingGeometry) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


