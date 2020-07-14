# ResponseShape

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Shell** | [**[]Coords**](Coords.md) |  | 
**Holes** | [**[][]Coords**](array.md) |  | 

## Methods

### NewResponseShape

`func NewResponseShape(shell []Coords, holes [][]Coords, ) *ResponseShape`

NewResponseShape instantiates a new ResponseShape object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseShapeWithDefaults

`func NewResponseShapeWithDefaults() *ResponseShape`

NewResponseShapeWithDefaults instantiates a new ResponseShape object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetShell

`func (o *ResponseShape) GetShell() []Coords`

GetShell returns the Shell field if non-nil, zero value otherwise.

### GetShellOk

`func (o *ResponseShape) GetShellOk() (*[]Coords, bool)`

GetShellOk returns a tuple with the Shell field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShell

`func (o *ResponseShape) SetShell(v []Coords)`

SetShell sets Shell field to given value.


### GetHoles

`func (o *ResponseShape) GetHoles() [][]Coords`

GetHoles returns the Holes field if non-nil, zero value otherwise.

### GetHolesOk

`func (o *ResponseShape) GetHolesOk() (*[][]Coords, bool)`

GetHolesOk returns a tuple with the Holes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHoles

`func (o *ResponseShape) SetHoles(v [][]Coords)`

SetHoles sets Holes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


