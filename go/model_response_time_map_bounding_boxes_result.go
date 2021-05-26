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

// ResponseTimeMapBoundingBoxesResult struct for ResponseTimeMapBoundingBoxesResult
type ResponseTimeMapBoundingBoxesResult struct {
	SearchId string `json:"search_id"`
	BoundingBoxes []ResponseBoundingBox `json:"bounding_boxes"`
	Properties ResponseTimeMapProperties `json:"properties"`
}

// NewResponseTimeMapBoundingBoxesResult instantiates a new ResponseTimeMapBoundingBoxesResult object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeMapBoundingBoxesResult(searchId string, boundingBoxes []ResponseBoundingBox, properties ResponseTimeMapProperties) *ResponseTimeMapBoundingBoxesResult {
	this := ResponseTimeMapBoundingBoxesResult{}
	this.SearchId = searchId
	this.BoundingBoxes = boundingBoxes
	this.Properties = properties
	return &this
}

// NewResponseTimeMapBoundingBoxesResultWithDefaults instantiates a new ResponseTimeMapBoundingBoxesResult object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeMapBoundingBoxesResultWithDefaults() *ResponseTimeMapBoundingBoxesResult {
	this := ResponseTimeMapBoundingBoxesResult{}
	return &this
}

// GetSearchId returns the SearchId field value
func (o *ResponseTimeMapBoundingBoxesResult) GetSearchId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.SearchId
}

// GetSearchIdOk returns a tuple with the SearchId field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeMapBoundingBoxesResult) GetSearchIdOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SearchId, true
}

// SetSearchId sets field value
func (o *ResponseTimeMapBoundingBoxesResult) SetSearchId(v string) {
	o.SearchId = v
}

// GetBoundingBoxes returns the BoundingBoxes field value
func (o *ResponseTimeMapBoundingBoxesResult) GetBoundingBoxes() []ResponseBoundingBox {
	if o == nil {
		var ret []ResponseBoundingBox
		return ret
	}

	return o.BoundingBoxes
}

// GetBoundingBoxesOk returns a tuple with the BoundingBoxes field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeMapBoundingBoxesResult) GetBoundingBoxesOk() (*[]ResponseBoundingBox, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.BoundingBoxes, true
}

// SetBoundingBoxes sets field value
func (o *ResponseTimeMapBoundingBoxesResult) SetBoundingBoxes(v []ResponseBoundingBox) {
	o.BoundingBoxes = v
}

// GetProperties returns the Properties field value
func (o *ResponseTimeMapBoundingBoxesResult) GetProperties() ResponseTimeMapProperties {
	if o == nil {
		var ret ResponseTimeMapProperties
		return ret
	}

	return o.Properties
}

// GetPropertiesOk returns a tuple with the Properties field value
// and a boolean to check if the value has been set.
func (o *ResponseTimeMapBoundingBoxesResult) GetPropertiesOk() (*ResponseTimeMapProperties, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Properties, true
}

// SetProperties sets field value
func (o *ResponseTimeMapBoundingBoxesResult) SetProperties(v ResponseTimeMapProperties) {
	o.Properties = v
}

func (o ResponseTimeMapBoundingBoxesResult) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["search_id"] = o.SearchId
	}
	if true {
		toSerialize["bounding_boxes"] = o.BoundingBoxes
	}
	if true {
		toSerialize["properties"] = o.Properties
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeMapBoundingBoxesResult struct {
	value *ResponseTimeMapBoundingBoxesResult
	isSet bool
}

func (v NullableResponseTimeMapBoundingBoxesResult) Get() *ResponseTimeMapBoundingBoxesResult {
	return v.value
}

func (v *NullableResponseTimeMapBoundingBoxesResult) Set(val *ResponseTimeMapBoundingBoxesResult) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeMapBoundingBoxesResult) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeMapBoundingBoxesResult) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeMapBoundingBoxesResult(val *ResponseTimeMapBoundingBoxesResult) *NullableResponseTimeMapBoundingBoxesResult {
	return &NullableResponseTimeMapBoundingBoxesResult{value: val, isSet: true}
}

func (v NullableResponseTimeMapBoundingBoxesResult) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeMapBoundingBoxesResult) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


