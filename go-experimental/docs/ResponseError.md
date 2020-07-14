# ResponseError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HttpStatus** | Pointer to **int32** |  | [optional] 
**ErrorCode** | Pointer to **int32** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DocumentationLink** | Pointer to **string** |  | [optional] 
**AdditionalInfo** | Pointer to [**map[string][]string**](array.md) |  | [optional] 

## Methods

### NewResponseError

`func NewResponseError() *ResponseError`

NewResponseError instantiates a new ResponseError object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseErrorWithDefaults

`func NewResponseErrorWithDefaults() *ResponseError`

NewResponseErrorWithDefaults instantiates a new ResponseError object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHttpStatus

`func (o *ResponseError) GetHttpStatus() int32`

GetHttpStatus returns the HttpStatus field if non-nil, zero value otherwise.

### GetHttpStatusOk

`func (o *ResponseError) GetHttpStatusOk() (*int32, bool)`

GetHttpStatusOk returns a tuple with the HttpStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHttpStatus

`func (o *ResponseError) SetHttpStatus(v int32)`

SetHttpStatus sets HttpStatus field to given value.

### HasHttpStatus

`func (o *ResponseError) HasHttpStatus() bool`

HasHttpStatus returns a boolean if a field has been set.

### GetErrorCode

`func (o *ResponseError) GetErrorCode() int32`

GetErrorCode returns the ErrorCode field if non-nil, zero value otherwise.

### GetErrorCodeOk

`func (o *ResponseError) GetErrorCodeOk() (*int32, bool)`

GetErrorCodeOk returns a tuple with the ErrorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorCode

`func (o *ResponseError) SetErrorCode(v int32)`

SetErrorCode sets ErrorCode field to given value.

### HasErrorCode

`func (o *ResponseError) HasErrorCode() bool`

HasErrorCode returns a boolean if a field has been set.

### GetDescription

`func (o *ResponseError) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *ResponseError) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *ResponseError) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *ResponseError) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDocumentationLink

`func (o *ResponseError) GetDocumentationLink() string`

GetDocumentationLink returns the DocumentationLink field if non-nil, zero value otherwise.

### GetDocumentationLinkOk

`func (o *ResponseError) GetDocumentationLinkOk() (*string, bool)`

GetDocumentationLinkOk returns a tuple with the DocumentationLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentationLink

`func (o *ResponseError) SetDocumentationLink(v string)`

SetDocumentationLink sets DocumentationLink field to given value.

### HasDocumentationLink

`func (o *ResponseError) HasDocumentationLink() bool`

HasDocumentationLink returns a boolean if a field has been set.

### GetAdditionalInfo

`func (o *ResponseError) GetAdditionalInfo() map[string][]string`

GetAdditionalInfo returns the AdditionalInfo field if non-nil, zero value otherwise.

### GetAdditionalInfoOk

`func (o *ResponseError) GetAdditionalInfoOk() (*map[string][]string, bool)`

GetAdditionalInfoOk returns a tuple with the AdditionalInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdditionalInfo

`func (o *ResponseError) SetAdditionalInfo(v map[string][]string)`

SetAdditionalInfo sets AdditionalInfo field to given value.

### HasAdditionalInfo

`func (o *ResponseError) HasAdditionalInfo() bool`

HasAdditionalInfo returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


