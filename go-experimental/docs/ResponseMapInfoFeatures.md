# ResponseMapInfoFeatures

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PublicTransport** | Pointer to [**ResponseMapInfoFeaturesPublicTransport**](ResponseMapInfoFeaturesPublicTransport.md) |  | [optional] 
**Fares** | **bool** |  | 
**Postcodes** | **bool** |  | 

## Methods

### NewResponseMapInfoFeatures

`func NewResponseMapInfoFeatures(fares bool, postcodes bool, ) *ResponseMapInfoFeatures`

NewResponseMapInfoFeatures instantiates a new ResponseMapInfoFeatures object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseMapInfoFeaturesWithDefaults

`func NewResponseMapInfoFeaturesWithDefaults() *ResponseMapInfoFeatures`

NewResponseMapInfoFeaturesWithDefaults instantiates a new ResponseMapInfoFeatures object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPublicTransport

`func (o *ResponseMapInfoFeatures) GetPublicTransport() ResponseMapInfoFeaturesPublicTransport`

GetPublicTransport returns the PublicTransport field if non-nil, zero value otherwise.

### GetPublicTransportOk

`func (o *ResponseMapInfoFeatures) GetPublicTransportOk() (*ResponseMapInfoFeaturesPublicTransport, bool)`

GetPublicTransportOk returns a tuple with the PublicTransport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicTransport

`func (o *ResponseMapInfoFeatures) SetPublicTransport(v ResponseMapInfoFeaturesPublicTransport)`

SetPublicTransport sets PublicTransport field to given value.

### HasPublicTransport

`func (o *ResponseMapInfoFeatures) HasPublicTransport() bool`

HasPublicTransport returns a boolean if a field has been set.

### GetFares

`func (o *ResponseMapInfoFeatures) GetFares() bool`

GetFares returns the Fares field if non-nil, zero value otherwise.

### GetFaresOk

`func (o *ResponseMapInfoFeatures) GetFaresOk() (*bool, bool)`

GetFaresOk returns a tuple with the Fares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFares

`func (o *ResponseMapInfoFeatures) SetFares(v bool)`

SetFares sets Fares field to given value.


### GetPostcodes

`func (o *ResponseMapInfoFeatures) GetPostcodes() bool`

GetPostcodes returns the Postcodes field if non-nil, zero value otherwise.

### GetPostcodesOk

`func (o *ResponseMapInfoFeatures) GetPostcodesOk() (*bool, bool)`

GetPostcodesOk returns a tuple with the Postcodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostcodes

`func (o *ResponseMapInfoFeatures) SetPostcodes(v bool)`

SetPostcodes sets Postcodes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


