# ResponseGeocodingGeoJsonFeature

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Geometry** | [**ResponseGeocodingGeometry**](ResponseGeocodingGeometry.md) |  | 
**Properties** | [**ResponseGeocodingProperties**](ResponseGeocodingProperties.md) |  | 

## Methods

### NewResponseGeocodingGeoJsonFeature

`func NewResponseGeocodingGeoJsonFeature(type_ string, geometry ResponseGeocodingGeometry, properties ResponseGeocodingProperties, ) *ResponseGeocodingGeoJsonFeature`

NewResponseGeocodingGeoJsonFeature instantiates a new ResponseGeocodingGeoJsonFeature object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseGeocodingGeoJsonFeatureWithDefaults

`func NewResponseGeocodingGeoJsonFeatureWithDefaults() *ResponseGeocodingGeoJsonFeature`

NewResponseGeocodingGeoJsonFeatureWithDefaults instantiates a new ResponseGeocodingGeoJsonFeature object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ResponseGeocodingGeoJsonFeature) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ResponseGeocodingGeoJsonFeature) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ResponseGeocodingGeoJsonFeature) SetType(v string)`

SetType sets Type field to given value.


### GetGeometry

`func (o *ResponseGeocodingGeoJsonFeature) GetGeometry() ResponseGeocodingGeometry`

GetGeometry returns the Geometry field if non-nil, zero value otherwise.

### GetGeometryOk

`func (o *ResponseGeocodingGeoJsonFeature) GetGeometryOk() (*ResponseGeocodingGeometry, bool)`

GetGeometryOk returns a tuple with the Geometry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeometry

`func (o *ResponseGeocodingGeoJsonFeature) SetGeometry(v ResponseGeocodingGeometry)`

SetGeometry sets Geometry field to given value.


### GetProperties

`func (o *ResponseGeocodingGeoJsonFeature) GetProperties() ResponseGeocodingProperties`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *ResponseGeocodingGeoJsonFeature) GetPropertiesOk() (*ResponseGeocodingProperties, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *ResponseGeocodingGeoJsonFeature) SetProperties(v ResponseGeocodingProperties)`

SetProperties sets Properties field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


