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

// ResponseTimeFilterProperties struct for ResponseTimeFilterProperties
type ResponseTimeFilterProperties struct {
	TravelTime *int32 `json:"travel_time,omitempty"`
	Distance *int32 `json:"distance,omitempty"`
	DistanceBreakdown *[]ResponseDistanceBreakdownItem `json:"distance_breakdown,omitempty"`
	Fares *ResponseFares `json:"fares,omitempty"`
	Route *ResponseRoute `json:"route,omitempty"`
}

// NewResponseTimeFilterProperties instantiates a new ResponseTimeFilterProperties object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseTimeFilterProperties() *ResponseTimeFilterProperties {
	this := ResponseTimeFilterProperties{}
	return &this
}

// NewResponseTimeFilterPropertiesWithDefaults instantiates a new ResponseTimeFilterProperties object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseTimeFilterPropertiesWithDefaults() *ResponseTimeFilterProperties {
	this := ResponseTimeFilterProperties{}
	return &this
}

// GetTravelTime returns the TravelTime field value if set, zero value otherwise.
func (o *ResponseTimeFilterProperties) GetTravelTime() int32 {
	if o == nil || o.TravelTime == nil {
		var ret int32
		return ret
	}
	return *o.TravelTime
}

// GetTravelTimeOk returns a tuple with the TravelTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterProperties) GetTravelTimeOk() (*int32, bool) {
	if o == nil || o.TravelTime == nil {
		return nil, false
	}
	return o.TravelTime, true
}

// HasTravelTime returns a boolean if a field has been set.
func (o *ResponseTimeFilterProperties) HasTravelTime() bool {
	if o != nil && o.TravelTime != nil {
		return true
	}

	return false
}

// SetTravelTime gets a reference to the given int32 and assigns it to the TravelTime field.
func (o *ResponseTimeFilterProperties) SetTravelTime(v int32) {
	o.TravelTime = &v
}

// GetDistance returns the Distance field value if set, zero value otherwise.
func (o *ResponseTimeFilterProperties) GetDistance() int32 {
	if o == nil || o.Distance == nil {
		var ret int32
		return ret
	}
	return *o.Distance
}

// GetDistanceOk returns a tuple with the Distance field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterProperties) GetDistanceOk() (*int32, bool) {
	if o == nil || o.Distance == nil {
		return nil, false
	}
	return o.Distance, true
}

// HasDistance returns a boolean if a field has been set.
func (o *ResponseTimeFilterProperties) HasDistance() bool {
	if o != nil && o.Distance != nil {
		return true
	}

	return false
}

// SetDistance gets a reference to the given int32 and assigns it to the Distance field.
func (o *ResponseTimeFilterProperties) SetDistance(v int32) {
	o.Distance = &v
}

// GetDistanceBreakdown returns the DistanceBreakdown field value if set, zero value otherwise.
func (o *ResponseTimeFilterProperties) GetDistanceBreakdown() []ResponseDistanceBreakdownItem {
	if o == nil || o.DistanceBreakdown == nil {
		var ret []ResponseDistanceBreakdownItem
		return ret
	}
	return *o.DistanceBreakdown
}

// GetDistanceBreakdownOk returns a tuple with the DistanceBreakdown field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterProperties) GetDistanceBreakdownOk() (*[]ResponseDistanceBreakdownItem, bool) {
	if o == nil || o.DistanceBreakdown == nil {
		return nil, false
	}
	return o.DistanceBreakdown, true
}

// HasDistanceBreakdown returns a boolean if a field has been set.
func (o *ResponseTimeFilterProperties) HasDistanceBreakdown() bool {
	if o != nil && o.DistanceBreakdown != nil {
		return true
	}

	return false
}

// SetDistanceBreakdown gets a reference to the given []ResponseDistanceBreakdownItem and assigns it to the DistanceBreakdown field.
func (o *ResponseTimeFilterProperties) SetDistanceBreakdown(v []ResponseDistanceBreakdownItem) {
	o.DistanceBreakdown = &v
}

// GetFares returns the Fares field value if set, zero value otherwise.
func (o *ResponseTimeFilterProperties) GetFares() ResponseFares {
	if o == nil || o.Fares == nil {
		var ret ResponseFares
		return ret
	}
	return *o.Fares
}

// GetFaresOk returns a tuple with the Fares field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterProperties) GetFaresOk() (*ResponseFares, bool) {
	if o == nil || o.Fares == nil {
		return nil, false
	}
	return o.Fares, true
}

// HasFares returns a boolean if a field has been set.
func (o *ResponseTimeFilterProperties) HasFares() bool {
	if o != nil && o.Fares != nil {
		return true
	}

	return false
}

// SetFares gets a reference to the given ResponseFares and assigns it to the Fares field.
func (o *ResponseTimeFilterProperties) SetFares(v ResponseFares) {
	o.Fares = &v
}

// GetRoute returns the Route field value if set, zero value otherwise.
func (o *ResponseTimeFilterProperties) GetRoute() ResponseRoute {
	if o == nil || o.Route == nil {
		var ret ResponseRoute
		return ret
	}
	return *o.Route
}

// GetRouteOk returns a tuple with the Route field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseTimeFilterProperties) GetRouteOk() (*ResponseRoute, bool) {
	if o == nil || o.Route == nil {
		return nil, false
	}
	return o.Route, true
}

// HasRoute returns a boolean if a field has been set.
func (o *ResponseTimeFilterProperties) HasRoute() bool {
	if o != nil && o.Route != nil {
		return true
	}

	return false
}

// SetRoute gets a reference to the given ResponseRoute and assigns it to the Route field.
func (o *ResponseTimeFilterProperties) SetRoute(v ResponseRoute) {
	o.Route = &v
}

func (o ResponseTimeFilterProperties) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.TravelTime != nil {
		toSerialize["travel_time"] = o.TravelTime
	}
	if o.Distance != nil {
		toSerialize["distance"] = o.Distance
	}
	if o.DistanceBreakdown != nil {
		toSerialize["distance_breakdown"] = o.DistanceBreakdown
	}
	if o.Fares != nil {
		toSerialize["fares"] = o.Fares
	}
	if o.Route != nil {
		toSerialize["route"] = o.Route
	}
	return json.Marshal(toSerialize)
}

type NullableResponseTimeFilterProperties struct {
	value *ResponseTimeFilterProperties
	isSet bool
}

func (v NullableResponseTimeFilterProperties) Get() *ResponseTimeFilterProperties {
	return v.value
}

func (v *NullableResponseTimeFilterProperties) Set(val *ResponseTimeFilterProperties) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseTimeFilterProperties) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseTimeFilterProperties) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseTimeFilterProperties(val *ResponseTimeFilterProperties) *NullableResponseTimeFilterProperties {
	return &NullableResponseTimeFilterProperties{value: val, isSet: true}
}

func (v NullableResponseTimeFilterProperties) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseTimeFilterProperties) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


