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

// ResponseError struct for ResponseError
type ResponseError struct {
	HttpStatus *int32 `json:"http_status,omitempty"`
	ErrorCode *int32 `json:"error_code,omitempty"`
	Description *string `json:"description,omitempty"`
	DocumentationLink *string `json:"documentation_link,omitempty"`
	AdditionalInfo *map[string][]string `json:"additional_info,omitempty"`
}

// NewResponseError instantiates a new ResponseError object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseError() *ResponseError {
	this := ResponseError{}
	return &this
}

// NewResponseErrorWithDefaults instantiates a new ResponseError object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseErrorWithDefaults() *ResponseError {
	this := ResponseError{}
	return &this
}

// GetHttpStatus returns the HttpStatus field value if set, zero value otherwise.
func (o *ResponseError) GetHttpStatus() int32 {
	if o == nil || o.HttpStatus == nil {
		var ret int32
		return ret
	}
	return *o.HttpStatus
}

// GetHttpStatusOk returns a tuple with the HttpStatus field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseError) GetHttpStatusOk() (*int32, bool) {
	if o == nil || o.HttpStatus == nil {
		return nil, false
	}
	return o.HttpStatus, true
}

// HasHttpStatus returns a boolean if a field has been set.
func (o *ResponseError) HasHttpStatus() bool {
	if o != nil && o.HttpStatus != nil {
		return true
	}

	return false
}

// SetHttpStatus gets a reference to the given int32 and assigns it to the HttpStatus field.
func (o *ResponseError) SetHttpStatus(v int32) {
	o.HttpStatus = &v
}

// GetErrorCode returns the ErrorCode field value if set, zero value otherwise.
func (o *ResponseError) GetErrorCode() int32 {
	if o == nil || o.ErrorCode == nil {
		var ret int32
		return ret
	}
	return *o.ErrorCode
}

// GetErrorCodeOk returns a tuple with the ErrorCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseError) GetErrorCodeOk() (*int32, bool) {
	if o == nil || o.ErrorCode == nil {
		return nil, false
	}
	return o.ErrorCode, true
}

// HasErrorCode returns a boolean if a field has been set.
func (o *ResponseError) HasErrorCode() bool {
	if o != nil && o.ErrorCode != nil {
		return true
	}

	return false
}

// SetErrorCode gets a reference to the given int32 and assigns it to the ErrorCode field.
func (o *ResponseError) SetErrorCode(v int32) {
	o.ErrorCode = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *ResponseError) GetDescription() string {
	if o == nil || o.Description == nil {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseError) GetDescriptionOk() (*string, bool) {
	if o == nil || o.Description == nil {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *ResponseError) HasDescription() bool {
	if o != nil && o.Description != nil {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *ResponseError) SetDescription(v string) {
	o.Description = &v
}

// GetDocumentationLink returns the DocumentationLink field value if set, zero value otherwise.
func (o *ResponseError) GetDocumentationLink() string {
	if o == nil || o.DocumentationLink == nil {
		var ret string
		return ret
	}
	return *o.DocumentationLink
}

// GetDocumentationLinkOk returns a tuple with the DocumentationLink field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseError) GetDocumentationLinkOk() (*string, bool) {
	if o == nil || o.DocumentationLink == nil {
		return nil, false
	}
	return o.DocumentationLink, true
}

// HasDocumentationLink returns a boolean if a field has been set.
func (o *ResponseError) HasDocumentationLink() bool {
	if o != nil && o.DocumentationLink != nil {
		return true
	}

	return false
}

// SetDocumentationLink gets a reference to the given string and assigns it to the DocumentationLink field.
func (o *ResponseError) SetDocumentationLink(v string) {
	o.DocumentationLink = &v
}

// GetAdditionalInfo returns the AdditionalInfo field value if set, zero value otherwise.
func (o *ResponseError) GetAdditionalInfo() map[string][]string {
	if o == nil || o.AdditionalInfo == nil {
		var ret map[string][]string
		return ret
	}
	return *o.AdditionalInfo
}

// GetAdditionalInfoOk returns a tuple with the AdditionalInfo field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseError) GetAdditionalInfoOk() (*map[string][]string, bool) {
	if o == nil || o.AdditionalInfo == nil {
		return nil, false
	}
	return o.AdditionalInfo, true
}

// HasAdditionalInfo returns a boolean if a field has been set.
func (o *ResponseError) HasAdditionalInfo() bool {
	if o != nil && o.AdditionalInfo != nil {
		return true
	}

	return false
}

// SetAdditionalInfo gets a reference to the given map[string][]string and assigns it to the AdditionalInfo field.
func (o *ResponseError) SetAdditionalInfo(v map[string][]string) {
	o.AdditionalInfo = &v
}

func (o ResponseError) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.HttpStatus != nil {
		toSerialize["http_status"] = o.HttpStatus
	}
	if o.ErrorCode != nil {
		toSerialize["error_code"] = o.ErrorCode
	}
	if o.Description != nil {
		toSerialize["description"] = o.Description
	}
	if o.DocumentationLink != nil {
		toSerialize["documentation_link"] = o.DocumentationLink
	}
	if o.AdditionalInfo != nil {
		toSerialize["additional_info"] = o.AdditionalInfo
	}
	return json.Marshal(toSerialize)
}

type NullableResponseError struct {
	value *ResponseError
	isSet bool
}

func (v NullableResponseError) Get() *ResponseError {
	return v.value
}

func (v *NullableResponseError) Set(val *ResponseError) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseError) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseError) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseError(val *ResponseError) *NullableResponseError {
	return &NullableResponseError{value: val, isSet: true}
}

func (v NullableResponseError) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseError) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

