# ResponseGeocodingProperties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Label** | **string** |  | 
**Score** | Pointer to **float64** |  | [optional] 
**HouseNumber** | Pointer to **string** |  | [optional] 
**Street** | Pointer to **string** |  | [optional] 
**Region** | Pointer to **string** |  | [optional] 
**RegionCode** | Pointer to **string** |  | [optional] 
**Neighbourhood** | Pointer to **string** |  | [optional] 
**County** | Pointer to **string** |  | [optional] 
**Macroregion** | Pointer to **string** |  | [optional] 
**City** | Pointer to **string** |  | [optional] 
**Country** | Pointer to **string** |  | [optional] 
**CountryCode** | Pointer to **string** |  | [optional] 
**Continent** | Pointer to **string** |  | [optional] 
**Postcode** | Pointer to **string** |  | [optional] 
**Features** | Pointer to [**ResponseMapInfoFeatures**](ResponseMapInfoFeatures.md) |  | [optional] 

## Methods

### NewResponseGeocodingProperties

`func NewResponseGeocodingProperties(name string, label string, ) *ResponseGeocodingProperties`

NewResponseGeocodingProperties instantiates a new ResponseGeocodingProperties object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseGeocodingPropertiesWithDefaults

`func NewResponseGeocodingPropertiesWithDefaults() *ResponseGeocodingProperties`

NewResponseGeocodingPropertiesWithDefaults instantiates a new ResponseGeocodingProperties object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ResponseGeocodingProperties) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ResponseGeocodingProperties) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ResponseGeocodingProperties) SetName(v string)`

SetName sets Name field to given value.


### GetLabel

`func (o *ResponseGeocodingProperties) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *ResponseGeocodingProperties) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *ResponseGeocodingProperties) SetLabel(v string)`

SetLabel sets Label field to given value.


### GetScore

`func (o *ResponseGeocodingProperties) GetScore() float64`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *ResponseGeocodingProperties) GetScoreOk() (*float64, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *ResponseGeocodingProperties) SetScore(v float64)`

SetScore sets Score field to given value.

### HasScore

`func (o *ResponseGeocodingProperties) HasScore() bool`

HasScore returns a boolean if a field has been set.

### GetHouseNumber

`func (o *ResponseGeocodingProperties) GetHouseNumber() string`

GetHouseNumber returns the HouseNumber field if non-nil, zero value otherwise.

### GetHouseNumberOk

`func (o *ResponseGeocodingProperties) GetHouseNumberOk() (*string, bool)`

GetHouseNumberOk returns a tuple with the HouseNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHouseNumber

`func (o *ResponseGeocodingProperties) SetHouseNumber(v string)`

SetHouseNumber sets HouseNumber field to given value.

### HasHouseNumber

`func (o *ResponseGeocodingProperties) HasHouseNumber() bool`

HasHouseNumber returns a boolean if a field has been set.

### GetStreet

`func (o *ResponseGeocodingProperties) GetStreet() string`

GetStreet returns the Street field if non-nil, zero value otherwise.

### GetStreetOk

`func (o *ResponseGeocodingProperties) GetStreetOk() (*string, bool)`

GetStreetOk returns a tuple with the Street field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreet

`func (o *ResponseGeocodingProperties) SetStreet(v string)`

SetStreet sets Street field to given value.

### HasStreet

`func (o *ResponseGeocodingProperties) HasStreet() bool`

HasStreet returns a boolean if a field has been set.

### GetRegion

`func (o *ResponseGeocodingProperties) GetRegion() string`

GetRegion returns the Region field if non-nil, zero value otherwise.

### GetRegionOk

`func (o *ResponseGeocodingProperties) GetRegionOk() (*string, bool)`

GetRegionOk returns a tuple with the Region field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegion

`func (o *ResponseGeocodingProperties) SetRegion(v string)`

SetRegion sets Region field to given value.

### HasRegion

`func (o *ResponseGeocodingProperties) HasRegion() bool`

HasRegion returns a boolean if a field has been set.

### GetRegionCode

`func (o *ResponseGeocodingProperties) GetRegionCode() string`

GetRegionCode returns the RegionCode field if non-nil, zero value otherwise.

### GetRegionCodeOk

`func (o *ResponseGeocodingProperties) GetRegionCodeOk() (*string, bool)`

GetRegionCodeOk returns a tuple with the RegionCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegionCode

`func (o *ResponseGeocodingProperties) SetRegionCode(v string)`

SetRegionCode sets RegionCode field to given value.

### HasRegionCode

`func (o *ResponseGeocodingProperties) HasRegionCode() bool`

HasRegionCode returns a boolean if a field has been set.

### GetNeighbourhood

`func (o *ResponseGeocodingProperties) GetNeighbourhood() string`

GetNeighbourhood returns the Neighbourhood field if non-nil, zero value otherwise.

### GetNeighbourhoodOk

`func (o *ResponseGeocodingProperties) GetNeighbourhoodOk() (*string, bool)`

GetNeighbourhoodOk returns a tuple with the Neighbourhood field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeighbourhood

`func (o *ResponseGeocodingProperties) SetNeighbourhood(v string)`

SetNeighbourhood sets Neighbourhood field to given value.

### HasNeighbourhood

`func (o *ResponseGeocodingProperties) HasNeighbourhood() bool`

HasNeighbourhood returns a boolean if a field has been set.

### GetCounty

`func (o *ResponseGeocodingProperties) GetCounty() string`

GetCounty returns the County field if non-nil, zero value otherwise.

### GetCountyOk

`func (o *ResponseGeocodingProperties) GetCountyOk() (*string, bool)`

GetCountyOk returns a tuple with the County field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCounty

`func (o *ResponseGeocodingProperties) SetCounty(v string)`

SetCounty sets County field to given value.

### HasCounty

`func (o *ResponseGeocodingProperties) HasCounty() bool`

HasCounty returns a boolean if a field has been set.

### GetMacroregion

`func (o *ResponseGeocodingProperties) GetMacroregion() string`

GetMacroregion returns the Macroregion field if non-nil, zero value otherwise.

### GetMacroregionOk

`func (o *ResponseGeocodingProperties) GetMacroregionOk() (*string, bool)`

GetMacroregionOk returns a tuple with the Macroregion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMacroregion

`func (o *ResponseGeocodingProperties) SetMacroregion(v string)`

SetMacroregion sets Macroregion field to given value.

### HasMacroregion

`func (o *ResponseGeocodingProperties) HasMacroregion() bool`

HasMacroregion returns a boolean if a field has been set.

### GetCity

`func (o *ResponseGeocodingProperties) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *ResponseGeocodingProperties) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *ResponseGeocodingProperties) SetCity(v string)`

SetCity sets City field to given value.

### HasCity

`func (o *ResponseGeocodingProperties) HasCity() bool`

HasCity returns a boolean if a field has been set.

### GetCountry

`func (o *ResponseGeocodingProperties) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *ResponseGeocodingProperties) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *ResponseGeocodingProperties) SetCountry(v string)`

SetCountry sets Country field to given value.

### HasCountry

`func (o *ResponseGeocodingProperties) HasCountry() bool`

HasCountry returns a boolean if a field has been set.

### GetCountryCode

`func (o *ResponseGeocodingProperties) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *ResponseGeocodingProperties) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *ResponseGeocodingProperties) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *ResponseGeocodingProperties) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetContinent

`func (o *ResponseGeocodingProperties) GetContinent() string`

GetContinent returns the Continent field if non-nil, zero value otherwise.

### GetContinentOk

`func (o *ResponseGeocodingProperties) GetContinentOk() (*string, bool)`

GetContinentOk returns a tuple with the Continent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContinent

`func (o *ResponseGeocodingProperties) SetContinent(v string)`

SetContinent sets Continent field to given value.

### HasContinent

`func (o *ResponseGeocodingProperties) HasContinent() bool`

HasContinent returns a boolean if a field has been set.

### GetPostcode

`func (o *ResponseGeocodingProperties) GetPostcode() string`

GetPostcode returns the Postcode field if non-nil, zero value otherwise.

### GetPostcodeOk

`func (o *ResponseGeocodingProperties) GetPostcodeOk() (*string, bool)`

GetPostcodeOk returns a tuple with the Postcode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostcode

`func (o *ResponseGeocodingProperties) SetPostcode(v string)`

SetPostcode sets Postcode field to given value.

### HasPostcode

`func (o *ResponseGeocodingProperties) HasPostcode() bool`

HasPostcode returns a boolean if a field has been set.

### GetFeatures

`func (o *ResponseGeocodingProperties) GetFeatures() ResponseMapInfoFeatures`

GetFeatures returns the Features field if non-nil, zero value otherwise.

### GetFeaturesOk

`func (o *ResponseGeocodingProperties) GetFeaturesOk() (*ResponseMapInfoFeatures, bool)`

GetFeaturesOk returns a tuple with the Features field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeatures

`func (o *ResponseGeocodingProperties) SetFeatures(v ResponseMapInfoFeatures)`

SetFeatures sets Features field to given value.

### HasFeatures

`func (o *ResponseGeocodingProperties) HasFeatures() bool`

HasFeatures returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


