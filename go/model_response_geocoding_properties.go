/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.2
 * Contact: support@igeolise.com
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// ResponseGeocodingProperties struct for ResponseGeocodingProperties
type ResponseGeocodingProperties struct {
	Name string `json:"name"`
	Label string `json:"label"`
	Score *float64 `json:"score,omitempty"`
	HouseNumber *string `json:"house_number,omitempty"`
	Street *string `json:"street,omitempty"`
	Region *string `json:"region,omitempty"`
	RegionCode *string `json:"region_code,omitempty"`
	Neighbourhood *string `json:"neighbourhood,omitempty"`
	County *string `json:"county,omitempty"`
	Macroregion *string `json:"macroregion,omitempty"`
	City *string `json:"city,omitempty"`
	Country *string `json:"country,omitempty"`
	CountryCode *string `json:"country_code,omitempty"`
	Continent *string `json:"continent,omitempty"`
	Postcode *string `json:"postcode,omitempty"`
	Features *ResponseMapInfoFeatures `json:"features,omitempty"`
}

// NewResponseGeocodingProperties instantiates a new ResponseGeocodingProperties object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewResponseGeocodingProperties(name string, label string) *ResponseGeocodingProperties {
	this := ResponseGeocodingProperties{}
	this.Name = name
	this.Label = label
	return &this
}

// NewResponseGeocodingPropertiesWithDefaults instantiates a new ResponseGeocodingProperties object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewResponseGeocodingPropertiesWithDefaults() *ResponseGeocodingProperties {
	this := ResponseGeocodingProperties{}
	return &this
}

// GetName returns the Name field value
func (o *ResponseGeocodingProperties) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetNameOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *ResponseGeocodingProperties) SetName(v string) {
	o.Name = v
}

// GetLabel returns the Label field value
func (o *ResponseGeocodingProperties) GetLabel() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Label
}

// GetLabelOk returns a tuple with the Label field value
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetLabelOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Label, true
}

// SetLabel sets field value
func (o *ResponseGeocodingProperties) SetLabel(v string) {
	o.Label = v
}

// GetScore returns the Score field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetScore() float64 {
	if o == nil || o.Score == nil {
		var ret float64
		return ret
	}
	return *o.Score
}

// GetScoreOk returns a tuple with the Score field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetScoreOk() (*float64, bool) {
	if o == nil || o.Score == nil {
		return nil, false
	}
	return o.Score, true
}

// HasScore returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasScore() bool {
	if o != nil && o.Score != nil {
		return true
	}

	return false
}

// SetScore gets a reference to the given float64 and assigns it to the Score field.
func (o *ResponseGeocodingProperties) SetScore(v float64) {
	o.Score = &v
}

// GetHouseNumber returns the HouseNumber field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetHouseNumber() string {
	if o == nil || o.HouseNumber == nil {
		var ret string
		return ret
	}
	return *o.HouseNumber
}

// GetHouseNumberOk returns a tuple with the HouseNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetHouseNumberOk() (*string, bool) {
	if o == nil || o.HouseNumber == nil {
		return nil, false
	}
	return o.HouseNumber, true
}

// HasHouseNumber returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasHouseNumber() bool {
	if o != nil && o.HouseNumber != nil {
		return true
	}

	return false
}

// SetHouseNumber gets a reference to the given string and assigns it to the HouseNumber field.
func (o *ResponseGeocodingProperties) SetHouseNumber(v string) {
	o.HouseNumber = &v
}

// GetStreet returns the Street field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetStreet() string {
	if o == nil || o.Street == nil {
		var ret string
		return ret
	}
	return *o.Street
}

// GetStreetOk returns a tuple with the Street field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetStreetOk() (*string, bool) {
	if o == nil || o.Street == nil {
		return nil, false
	}
	return o.Street, true
}

// HasStreet returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasStreet() bool {
	if o != nil && o.Street != nil {
		return true
	}

	return false
}

// SetStreet gets a reference to the given string and assigns it to the Street field.
func (o *ResponseGeocodingProperties) SetStreet(v string) {
	o.Street = &v
}

// GetRegion returns the Region field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetRegion() string {
	if o == nil || o.Region == nil {
		var ret string
		return ret
	}
	return *o.Region
}

// GetRegionOk returns a tuple with the Region field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetRegionOk() (*string, bool) {
	if o == nil || o.Region == nil {
		return nil, false
	}
	return o.Region, true
}

// HasRegion returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasRegion() bool {
	if o != nil && o.Region != nil {
		return true
	}

	return false
}

// SetRegion gets a reference to the given string and assigns it to the Region field.
func (o *ResponseGeocodingProperties) SetRegion(v string) {
	o.Region = &v
}

// GetRegionCode returns the RegionCode field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetRegionCode() string {
	if o == nil || o.RegionCode == nil {
		var ret string
		return ret
	}
	return *o.RegionCode
}

// GetRegionCodeOk returns a tuple with the RegionCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetRegionCodeOk() (*string, bool) {
	if o == nil || o.RegionCode == nil {
		return nil, false
	}
	return o.RegionCode, true
}

// HasRegionCode returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasRegionCode() bool {
	if o != nil && o.RegionCode != nil {
		return true
	}

	return false
}

// SetRegionCode gets a reference to the given string and assigns it to the RegionCode field.
func (o *ResponseGeocodingProperties) SetRegionCode(v string) {
	o.RegionCode = &v
}

// GetNeighbourhood returns the Neighbourhood field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetNeighbourhood() string {
	if o == nil || o.Neighbourhood == nil {
		var ret string
		return ret
	}
	return *o.Neighbourhood
}

// GetNeighbourhoodOk returns a tuple with the Neighbourhood field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetNeighbourhoodOk() (*string, bool) {
	if o == nil || o.Neighbourhood == nil {
		return nil, false
	}
	return o.Neighbourhood, true
}

// HasNeighbourhood returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasNeighbourhood() bool {
	if o != nil && o.Neighbourhood != nil {
		return true
	}

	return false
}

// SetNeighbourhood gets a reference to the given string and assigns it to the Neighbourhood field.
func (o *ResponseGeocodingProperties) SetNeighbourhood(v string) {
	o.Neighbourhood = &v
}

// GetCounty returns the County field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetCounty() string {
	if o == nil || o.County == nil {
		var ret string
		return ret
	}
	return *o.County
}

// GetCountyOk returns a tuple with the County field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetCountyOk() (*string, bool) {
	if o == nil || o.County == nil {
		return nil, false
	}
	return o.County, true
}

// HasCounty returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasCounty() bool {
	if o != nil && o.County != nil {
		return true
	}

	return false
}

// SetCounty gets a reference to the given string and assigns it to the County field.
func (o *ResponseGeocodingProperties) SetCounty(v string) {
	o.County = &v
}

// GetMacroregion returns the Macroregion field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetMacroregion() string {
	if o == nil || o.Macroregion == nil {
		var ret string
		return ret
	}
	return *o.Macroregion
}

// GetMacroregionOk returns a tuple with the Macroregion field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetMacroregionOk() (*string, bool) {
	if o == nil || o.Macroregion == nil {
		return nil, false
	}
	return o.Macroregion, true
}

// HasMacroregion returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasMacroregion() bool {
	if o != nil && o.Macroregion != nil {
		return true
	}

	return false
}

// SetMacroregion gets a reference to the given string and assigns it to the Macroregion field.
func (o *ResponseGeocodingProperties) SetMacroregion(v string) {
	o.Macroregion = &v
}

// GetCity returns the City field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetCity() string {
	if o == nil || o.City == nil {
		var ret string
		return ret
	}
	return *o.City
}

// GetCityOk returns a tuple with the City field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetCityOk() (*string, bool) {
	if o == nil || o.City == nil {
		return nil, false
	}
	return o.City, true
}

// HasCity returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasCity() bool {
	if o != nil && o.City != nil {
		return true
	}

	return false
}

// SetCity gets a reference to the given string and assigns it to the City field.
func (o *ResponseGeocodingProperties) SetCity(v string) {
	o.City = &v
}

// GetCountry returns the Country field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetCountry() string {
	if o == nil || o.Country == nil {
		var ret string
		return ret
	}
	return *o.Country
}

// GetCountryOk returns a tuple with the Country field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetCountryOk() (*string, bool) {
	if o == nil || o.Country == nil {
		return nil, false
	}
	return o.Country, true
}

// HasCountry returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasCountry() bool {
	if o != nil && o.Country != nil {
		return true
	}

	return false
}

// SetCountry gets a reference to the given string and assigns it to the Country field.
func (o *ResponseGeocodingProperties) SetCountry(v string) {
	o.Country = &v
}

// GetCountryCode returns the CountryCode field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetCountryCode() string {
	if o == nil || o.CountryCode == nil {
		var ret string
		return ret
	}
	return *o.CountryCode
}

// GetCountryCodeOk returns a tuple with the CountryCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetCountryCodeOk() (*string, bool) {
	if o == nil || o.CountryCode == nil {
		return nil, false
	}
	return o.CountryCode, true
}

// HasCountryCode returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasCountryCode() bool {
	if o != nil && o.CountryCode != nil {
		return true
	}

	return false
}

// SetCountryCode gets a reference to the given string and assigns it to the CountryCode field.
func (o *ResponseGeocodingProperties) SetCountryCode(v string) {
	o.CountryCode = &v
}

// GetContinent returns the Continent field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetContinent() string {
	if o == nil || o.Continent == nil {
		var ret string
		return ret
	}
	return *o.Continent
}

// GetContinentOk returns a tuple with the Continent field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetContinentOk() (*string, bool) {
	if o == nil || o.Continent == nil {
		return nil, false
	}
	return o.Continent, true
}

// HasContinent returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasContinent() bool {
	if o != nil && o.Continent != nil {
		return true
	}

	return false
}

// SetContinent gets a reference to the given string and assigns it to the Continent field.
func (o *ResponseGeocodingProperties) SetContinent(v string) {
	o.Continent = &v
}

// GetPostcode returns the Postcode field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetPostcode() string {
	if o == nil || o.Postcode == nil {
		var ret string
		return ret
	}
	return *o.Postcode
}

// GetPostcodeOk returns a tuple with the Postcode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetPostcodeOk() (*string, bool) {
	if o == nil || o.Postcode == nil {
		return nil, false
	}
	return o.Postcode, true
}

// HasPostcode returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasPostcode() bool {
	if o != nil && o.Postcode != nil {
		return true
	}

	return false
}

// SetPostcode gets a reference to the given string and assigns it to the Postcode field.
func (o *ResponseGeocodingProperties) SetPostcode(v string) {
	o.Postcode = &v
}

// GetFeatures returns the Features field value if set, zero value otherwise.
func (o *ResponseGeocodingProperties) GetFeatures() ResponseMapInfoFeatures {
	if o == nil || o.Features == nil {
		var ret ResponseMapInfoFeatures
		return ret
	}
	return *o.Features
}

// GetFeaturesOk returns a tuple with the Features field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ResponseGeocodingProperties) GetFeaturesOk() (*ResponseMapInfoFeatures, bool) {
	if o == nil || o.Features == nil {
		return nil, false
	}
	return o.Features, true
}

// HasFeatures returns a boolean if a field has been set.
func (o *ResponseGeocodingProperties) HasFeatures() bool {
	if o != nil && o.Features != nil {
		return true
	}

	return false
}

// SetFeatures gets a reference to the given ResponseMapInfoFeatures and assigns it to the Features field.
func (o *ResponseGeocodingProperties) SetFeatures(v ResponseMapInfoFeatures) {
	o.Features = &v
}

func (o ResponseGeocodingProperties) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["label"] = o.Label
	}
	if o.Score != nil {
		toSerialize["score"] = o.Score
	}
	if o.HouseNumber != nil {
		toSerialize["house_number"] = o.HouseNumber
	}
	if o.Street != nil {
		toSerialize["street"] = o.Street
	}
	if o.Region != nil {
		toSerialize["region"] = o.Region
	}
	if o.RegionCode != nil {
		toSerialize["region_code"] = o.RegionCode
	}
	if o.Neighbourhood != nil {
		toSerialize["neighbourhood"] = o.Neighbourhood
	}
	if o.County != nil {
		toSerialize["county"] = o.County
	}
	if o.Macroregion != nil {
		toSerialize["macroregion"] = o.Macroregion
	}
	if o.City != nil {
		toSerialize["city"] = o.City
	}
	if o.Country != nil {
		toSerialize["country"] = o.Country
	}
	if o.CountryCode != nil {
		toSerialize["country_code"] = o.CountryCode
	}
	if o.Continent != nil {
		toSerialize["continent"] = o.Continent
	}
	if o.Postcode != nil {
		toSerialize["postcode"] = o.Postcode
	}
	if o.Features != nil {
		toSerialize["features"] = o.Features
	}
	return json.Marshal(toSerialize)
}

type NullableResponseGeocodingProperties struct {
	value *ResponseGeocodingProperties
	isSet bool
}

func (v NullableResponseGeocodingProperties) Get() *ResponseGeocodingProperties {
	return v.value
}

func (v *NullableResponseGeocodingProperties) Set(val *ResponseGeocodingProperties) {
	v.value = val
	v.isSet = true
}

func (v NullableResponseGeocodingProperties) IsSet() bool {
	return v.isSet
}

func (v *NullableResponseGeocodingProperties) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableResponseGeocodingProperties(val *ResponseGeocodingProperties) *NullableResponseGeocodingProperties {
	return &NullableResponseGeocodingProperties{value: val, isSet: true}
}

func (v NullableResponseGeocodingProperties) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableResponseGeocodingProperties) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


