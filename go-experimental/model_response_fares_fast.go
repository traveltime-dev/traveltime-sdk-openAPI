/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.1
 * Contact: support@igeolise.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"encoding/json"
)

// ResponseFaresFast struct for ResponseFaresFast
type ResponseFaresFast struct {
	TicketsTotal []ResponseFareTicket `json:"tickets_total"`
}

// NewResponseFaresFast instantiates a new ResponseFaresFast object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseFaresFast(ticketsTotal []ResponseFareTicket, ) *ResponseFaresFast {
	this := ResponseFaresFast{}
	this.TicketsTotal = ticketsTotal
	return &this
}

// NewResponseFaresFastWithDefaults instantiates a new ResponseFaresFast object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseFaresFastWithDefaults() *ResponseFaresFast {
	this := ResponseFaresFast{}
	return &this
}

// GetTicketsTotal returns the TicketsTotal field value
func (o *ResponseFaresFast) GetTicketsTotal() []ResponseFareTicket {
	if o == nil  {
		var ret []ResponseFareTicket
		return ret
	}

	return o.TicketsTotal
}

// GetTicketsTotalOk returns a tuple with the TicketsTotal field value
// and a boolean to check if the value has been set.
func (o *ResponseFaresFast) GetTicketsTotalOk() (*[]ResponseFareTicket, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.TicketsTotal, true
}

// SetTicketsTotal sets field value
func (o *ResponseFaresFast) SetTicketsTotal(v []ResponseFareTicket) {
	o.TicketsTotal = v
}

func (o ResponseFaresFast) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["tickets_total"] = o.TicketsTotal
	}
	return json.Marshal(toSerialize)
}

type NullableResponseFaresFast struct {
	value *ResponseFaresFast
	isSet bool
}

func (v NullableResponseFaresFast) Get() *ResponseFaresFast {
	return v.value
}

func (v *NullableResponseFaresFast) Set(val *ResponseFaresFast) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseFaresFast) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseFaresFast) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseFaresFast(val *ResponseFaresFast) *NullableResponseFaresFast {
	return &NullableResponseFaresFast{value: val, isSet: true}
}

func (v NullableResponseFaresFast) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseFaresFast) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

