# ResponseTimeFilterPostcodesResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **string** |  | 
**Postcodes** | [**[]ResponseTimeFilterPostcode**](ResponseTimeFilterPostcode.md) |  | 

## Methods

### NewResponseTimeFilterPostcodesResult

`func NewResponseTimeFilterPostcodesResult(searchId string, postcodes []ResponseTimeFilterPostcode, ) *ResponseTimeFilterPostcodesResult`

NewResponseTimeFilterPostcodesResult instantiates a new ResponseTimeFilterPostcodesResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeFilterPostcodesResultWithDefaults

`func NewResponseTimeFilterPostcodesResultWithDefaults() *ResponseTimeFilterPostcodesResult`

NewResponseTimeFilterPostcodesResultWithDefaults instantiates a new ResponseTimeFilterPostcodesResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSearchId

`func (o *ResponseTimeFilterPostcodesResult) GetSearchId() string`

GetSearchId returns the SearchId field if non-nil, zero value otherwise.

### GetSearchIdOk

`func (o *ResponseTimeFilterPostcodesResult) GetSearchIdOk() (*string, bool)`

GetSearchIdOk returns a tuple with the SearchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchId

`func (o *ResponseTimeFilterPostcodesResult) SetSearchId(v string)`

SetSearchId sets SearchId field to given value.


### GetPostcodes

`func (o *ResponseTimeFilterPostcodesResult) GetPostcodes() []ResponseTimeFilterPostcode`

GetPostcodes returns the Postcodes field if non-nil, zero value otherwise.

### GetPostcodesOk

`func (o *ResponseTimeFilterPostcodesResult) GetPostcodesOk() (*[]ResponseTimeFilterPostcode, bool)`

GetPostcodesOk returns a tuple with the Postcodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostcodes

`func (o *ResponseTimeFilterPostcodesResult) SetPostcodes(v []ResponseTimeFilterPostcode)`

SetPostcodes sets Postcodes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


