# ResponseTimeFilterPostcodeSectorsResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **string** |  | 
**Sectors** | [**[]ResponseTimeFilterPostcodeSector**](ResponseTimeFilterPostcodeSector.md) |  | 

## Methods

### NewResponseTimeFilterPostcodeSectorsResult

`func NewResponseTimeFilterPostcodeSectorsResult(searchId string, sectors []ResponseTimeFilterPostcodeSector, ) *ResponseTimeFilterPostcodeSectorsResult`

NewResponseTimeFilterPostcodeSectorsResult instantiates a new ResponseTimeFilterPostcodeSectorsResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseTimeFilterPostcodeSectorsResultWithDefaults

`func NewResponseTimeFilterPostcodeSectorsResultWithDefaults() *ResponseTimeFilterPostcodeSectorsResult`

NewResponseTimeFilterPostcodeSectorsResultWithDefaults instantiates a new ResponseTimeFilterPostcodeSectorsResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSearchId

`func (o *ResponseTimeFilterPostcodeSectorsResult) GetSearchId() string`

GetSearchId returns the SearchId field if non-nil, zero value otherwise.

### GetSearchIdOk

`func (o *ResponseTimeFilterPostcodeSectorsResult) GetSearchIdOk() (*string, bool)`

GetSearchIdOk returns a tuple with the SearchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchId

`func (o *ResponseTimeFilterPostcodeSectorsResult) SetSearchId(v string)`

SetSearchId sets SearchId field to given value.


### GetSectors

`func (o *ResponseTimeFilterPostcodeSectorsResult) GetSectors() []ResponseTimeFilterPostcodeSector`

GetSectors returns the Sectors field if non-nil, zero value otherwise.

### GetSectorsOk

`func (o *ResponseTimeFilterPostcodeSectorsResult) GetSectorsOk() (*[]ResponseTimeFilterPostcodeSector, bool)`

GetSectorsOk returns a tuple with the Sectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSectors

`func (o *ResponseTimeFilterPostcodeSectorsResult) SetSectors(v []ResponseTimeFilterPostcodeSector)`

SetSectors sets Sectors field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


