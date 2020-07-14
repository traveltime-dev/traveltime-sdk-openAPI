# ResponseBoundingBox

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Envelope** | [**ResponseBox**](ResponseBox.md) |  | 
**Boxes** | [**[]ResponseBox**](ResponseBox.md) |  | 

## Methods

### NewResponseBoundingBox

`func NewResponseBoundingBox(envelope ResponseBox, boxes []ResponseBox, ) *ResponseBoundingBox`

NewResponseBoundingBox instantiates a new ResponseBoundingBox object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseBoundingBoxWithDefaults

`func NewResponseBoundingBoxWithDefaults() *ResponseBoundingBox`

NewResponseBoundingBoxWithDefaults instantiates a new ResponseBoundingBox object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnvelope

`func (o *ResponseBoundingBox) GetEnvelope() ResponseBox`

GetEnvelope returns the Envelope field if non-nil, zero value otherwise.

### GetEnvelopeOk

`func (o *ResponseBoundingBox) GetEnvelopeOk() (*ResponseBox, bool)`

GetEnvelopeOk returns a tuple with the Envelope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnvelope

`func (o *ResponseBoundingBox) SetEnvelope(v ResponseBox)`

SetEnvelope sets Envelope field to given value.


### GetBoxes

`func (o *ResponseBoundingBox) GetBoxes() []ResponseBox`

GetBoxes returns the Boxes field if non-nil, zero value otherwise.

### GetBoxesOk

`func (o *ResponseBoundingBox) GetBoxesOk() (*[]ResponseBox, bool)`

GetBoxesOk returns a tuple with the Boxes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBoxes

`func (o *ResponseBoundingBox) SetBoxes(v []ResponseBox)`

SetBoxes sets Boxes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


