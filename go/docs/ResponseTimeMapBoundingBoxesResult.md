# ResponseTimeMapBoundingBoxesResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **string** |  | 
**BoundingBoxes** | [**[]ResponseBoundingBox**](ResponseBoundingBox.md) |  | 
**Properties** | [**ResponseTimeMapProperties**](ResponseTimeMapProperties.md) |  | 

## Methods

### NewResponseTimeMapBoundingBoxesResult

`func NewResponseTimeMapBoundingBoxesResult(searchId string, boundingBoxes []ResponseBoundingBox, properties ResponseTimeMapProperties, ) *ResponseTimeMapBoundingBoxesResult`

NewResponseTimeMapBoundingBoxesResult instantiates a new ResponseTimeMapBoundingBoxesResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeMapBoundingBoxesResultWithDefaults

`func NewResponseTimeMapBoundingBoxesResultWithDefaults() *ResponseTimeMapBoundingBoxesResult`

NewResponseTimeMapBoundingBoxesResultWithDefaults instantiates a new ResponseTimeMapBoundingBoxesResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSearchId

`func (o *ResponseTimeMapBoundingBoxesResult) GetSearchId() string`

GetSearchId returns the SearchId field if non-nil, zero value otherwise.

### GetSearchIdOk

`func (o *ResponseTimeMapBoundingBoxesResult) GetSearchIdOk() (*string, bool)`

GetSearchIdOk returns a tuple with the SearchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchId

`func (o *ResponseTimeMapBoundingBoxesResult) SetSearchId(v string)`

SetSearchId sets SearchId field to given value.


### GetBoundingBoxes

`func (o *ResponseTimeMapBoundingBoxesResult) GetBoundingBoxes() []ResponseBoundingBox`

GetBoundingBoxes returns the BoundingBoxes field if non-nil, zero value otherwise.

### GetBoundingBoxesOk

`func (o *ResponseTimeMapBoundingBoxesResult) GetBoundingBoxesOk() (*[]ResponseBoundingBox, bool)`

GetBoundingBoxesOk returns a tuple with the BoundingBoxes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBoundingBoxes

`func (o *ResponseTimeMapBoundingBoxesResult) SetBoundingBoxes(v []ResponseBoundingBox)`

SetBoundingBoxes sets BoundingBoxes field to given value.


### GetProperties

`func (o *ResponseTimeMapBoundingBoxesResult) GetProperties() ResponseTimeMapProperties`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *ResponseTimeMapBoundingBoxesResult) GetPropertiesOk() (*ResponseTimeMapProperties, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *ResponseTimeMapBoundingBoxesResult) SetProperties(v ResponseTimeMapProperties)`

SetProperties sets Properties field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


