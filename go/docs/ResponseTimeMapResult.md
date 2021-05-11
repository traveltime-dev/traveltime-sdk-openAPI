# ResponseTimeMapResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **string** |  | 
**Shapes** | [**[]ResponseShape**](ResponseShape.md) |  | 
**Properties** | [**ResponseTimeMapProperties**](ResponseTimeMapProperties.md) |  | 

## Methods

### NewResponseTimeMapResult

`func NewResponseTimeMapResult(searchId string, shapes []ResponseShape, properties ResponseTimeMapProperties, ) *ResponseTimeMapResult`

NewResponseTimeMapResult instantiates a new ResponseTimeMapResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeMapResultWithDefaults

`func NewResponseTimeMapResultWithDefaults() *ResponseTimeMapResult`

NewResponseTimeMapResultWithDefaults instantiates a new ResponseTimeMapResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSearchId

`func (o *ResponseTimeMapResult) GetSearchId() string`

GetSearchId returns the SearchId field if non-nil, zero value otherwise.

### GetSearchIdOk

`func (o *ResponseTimeMapResult) GetSearchIdOk() (*string, bool)`

GetSearchIdOk returns a tuple with the SearchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchId

`func (o *ResponseTimeMapResult) SetSearchId(v string)`

SetSearchId sets SearchId field to given value.


### GetShapes

`func (o *ResponseTimeMapResult) GetShapes() []ResponseShape`

GetShapes returns the Shapes field if non-nil, zero value otherwise.

### GetShapesOk

`func (o *ResponseTimeMapResult) GetShapesOk() (*[]ResponseShape, bool)`

GetShapesOk returns a tuple with the Shapes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShapes

`func (o *ResponseTimeMapResult) SetShapes(v []ResponseShape)`

SetShapes sets Shapes field to given value.


### GetProperties

`func (o *ResponseTimeMapResult) GetProperties() ResponseTimeMapProperties`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *ResponseTimeMapResult) GetPropertiesOk() (*ResponseTimeMapProperties, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *ResponseTimeMapResult) SetProperties(v ResponseTimeMapProperties)`

SetProperties sets Properties field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


