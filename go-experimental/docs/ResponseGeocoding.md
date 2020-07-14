# ResponseGeocoding

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Features** | [**[]ResponseGeocodingGeoJsonFeature**](ResponseGeocodingGeoJsonFeature.md) |  | 

## Methods

### NewResponseGeocoding

`func NewResponseGeocoding(type_ string, features []ResponseGeocodingGeoJsonFeature, ) *ResponseGeocoding`

NewResponseGeocoding instantiates a new ResponseGeocoding object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseGeocodingWithDefaults

`func NewResponseGeocodingWithDefaults() *ResponseGeocoding`

NewResponseGeocodingWithDefaults instantiates a new ResponseGeocoding object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ResponseGeocoding) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ResponseGeocoding) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ResponseGeocoding) SetType(v string)`

SetType sets Type field to given value.


### GetFeatures

`func (o *ResponseGeocoding) GetFeatures() []ResponseGeocodingGeoJsonFeature`

GetFeatures returns the Features field if non-nil, zero value otherwise.

### GetFeaturesOk

`func (o *ResponseGeocoding) GetFeaturesOk() (*[]ResponseGeocodingGeoJsonFeature, bool)`

GetFeaturesOk returns a tuple with the Features field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeatures

`func (o *ResponseGeocoding) SetFeatures(v []ResponseGeocodingGeoJsonFeature)`

SetFeatures sets Features field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


