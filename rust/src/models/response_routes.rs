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
pub struct ResponseRoutes {
  #[serde(rename = "results")]
  results: Vec<::models::ResponseRoutesResult>
}

impl ResponseRoutes {
  pub fn new(results: Vec<::models::ResponseRoutesResult>) -> ResponseRoutes {
    ResponseRoutes {
      results: results
    }
  }

  pub fn set_results(&mut self, results: Vec<::models::ResponseRoutesResult>) {
    self.results = results;
  }

  pub fn with_results(mut self, results: Vec<::models::ResponseRoutesResult>) -> ResponseRoutes {
    self.results = results;
    self
  }

  pub fn results(&self) -> &Vec<::models::ResponseRoutesResult> {
    &self.results
  }


}


