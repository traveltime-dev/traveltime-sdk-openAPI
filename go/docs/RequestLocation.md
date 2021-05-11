# RequestLocation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Coords** | [**Coords**](Coords.md) |  | 

## Methods

### NewRequestLocation

`func NewRequestLocation(id string, coords Coords, ) *RequestLocation`

NewRequestLocation instantiates a new RequestLocation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestLocationWithDefaults

`func NewRequestLocationWithDefaults() *RequestLocation`

NewRequestLocationWithDefaults instantiates a new RequestLocation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestLocation) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestLocation) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestLocation) SetId(v string)`

SetId sets Id field to given value.


### GetCoords

`func (o *RequestLocation) GetCoords() Coords`

GetCoords returns the Coords field if non-nil, zero value otherwise.

### GetCoordsOk

`func (o *RequestLocation) GetCoordsOk() (*Coords, bool)`

GetCoordsOk returns a tuple with the Coords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoords

`func (o *RequestLocation) SetCoords(v Coords)`

SetCoords sets Coords field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


