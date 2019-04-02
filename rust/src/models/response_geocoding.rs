/* 
 * TravelTime Platform API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct ResponseGeocoding {
  #[serde(rename = "type")]
  _type: String,
  #[serde(rename = "features")]
  features: Vec<::models::ResponseGeocodingGeoJsonFeature>
}

impl ResponseGeocoding {
  pub fn new(_type: String, features: Vec<::models::ResponseGeocodingGeoJsonFeature>) -> ResponseGeocoding {
    ResponseGeocoding {
      _type: _type,
      features: features
    }
  }

  pub fn set__type(&mut self, _type: String) {
    self._type = _type;
  }

  pub fn with__type(mut self, _type: String) -> ResponseGeocoding {
    self._type = _type;
    self
  }

  pub fn _type(&self) -> &String {
    &self._type
  }


  pub fn set_features(&mut self, features: Vec<::models::ResponseGeocodingGeoJsonFeature>) {
    self.features = features;
  }

  pub fn with_features(mut self, features: Vec<::models::ResponseGeocodingGeoJsonFeature>) -> ResponseGeocoding {
    self.features = features;
    self
  }

  pub fn features(&self) -> &Vec<::models::ResponseGeocodingGeoJsonFeature> {
    &self.features
  }


}


