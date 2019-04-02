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
pub struct ResponseTimeMapWktResult {
  #[serde(rename = "search_id")]
  search_id: String,
  #[serde(rename = "shape")]
  shape: String,
  #[serde(rename = "properties")]
  properties: ::models::ResponseTimeMapProperties
}

impl ResponseTimeMapWktResult {
  pub fn new(search_id: String, shape: String, properties: ::models::ResponseTimeMapProperties) -> ResponseTimeMapWktResult {
    ResponseTimeMapWktResult {
      search_id: search_id,
      shape: shape,
      properties: properties
    }
  }

  pub fn set_search_id(&mut self, search_id: String) {
    self.search_id = search_id;
  }

  pub fn with_search_id(mut self, search_id: String) -> ResponseTimeMapWktResult {
    self.search_id = search_id;
    self
  }

  pub fn search_id(&self) -> &String {
    &self.search_id
  }


  pub fn set_shape(&mut self, shape: String) {
    self.shape = shape;
  }

  pub fn with_shape(mut self, shape: String) -> ResponseTimeMapWktResult {
    self.shape = shape;
    self
  }

  pub fn shape(&self) -> &String {
    &self.shape
  }


  pub fn set_properties(&mut self, properties: ::models::ResponseTimeMapProperties) {
    self.properties = properties;
  }

  pub fn with_properties(mut self, properties: ::models::ResponseTimeMapProperties) -> ResponseTimeMapWktResult {
    self.properties = properties;
    self
  }

  pub fn properties(&self) -> &::models::ResponseTimeMapProperties {
    &self.properties
  }


}


