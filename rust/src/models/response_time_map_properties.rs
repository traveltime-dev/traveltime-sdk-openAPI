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
pub struct ResponseTimeMapProperties {
  #[serde(rename = "is_only_walking")]
  is_only_walking: Option<bool>
}

impl ResponseTimeMapProperties {
  pub fn new() -> ResponseTimeMapProperties {
    ResponseTimeMapProperties {
      is_only_walking: None
    }
  }

  pub fn set_is_only_walking(&mut self, is_only_walking: bool) {
    self.is_only_walking = Some(is_only_walking);
  }

  pub fn with_is_only_walking(mut self, is_only_walking: bool) -> ResponseTimeMapProperties {
    self.is_only_walking = Some(is_only_walking);
    self
  }

  pub fn is_only_walking(&self) -> Option<&bool> {
    self.is_only_walking.as_ref()
  }

  pub fn reset_is_only_walking(&mut self) {
    self.is_only_walking = None;
  }

}


