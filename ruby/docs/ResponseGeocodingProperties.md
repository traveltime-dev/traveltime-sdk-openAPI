# OpenapiClient::ResponseGeocodingProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **label** | **String** |  |  |
| **score** | **Float** |  | [optional] |
| **house_number** | **String** |  | [optional] |
| **street** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **region_code** | **String** |  | [optional] |
| **neighbourhood** | **String** |  | [optional] |
| **county** | **String** |  | [optional] |
| **macroregion** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **continent** | **String** |  | [optional] |
| **postcode** | **String** |  | [optional] |
| **features** | [**ResponseMapInfoFeatures**](ResponseMapInfoFeatures.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseGeocodingProperties.new(
  name: null,
  label: null,
  score: null,
  house_number: null,
  street: null,
  region: null,
  region_code: null,
  neighbourhood: null,
  county: null,
  macroregion: null,
  city: null,
  country: null,
  country_code: null,
  continent: null,
  postcode: null,
  features: null
)
```

