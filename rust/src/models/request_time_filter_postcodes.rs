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
pub struct RequestTimeFilterPostcodes {
  #[serde(rename = "departure_searches")]
  departure_searches: Option<Vec<::models::RequestTimeFilterPostcodesDepartureSearch>>,
  #[serde(rename = "arrival_searches")]
  arrival_searches: Option<Vec<::models::RequestTimeFilterPostcodesArrivalSearch>>
}

impl RequestTimeFilterPostcodes {
  pub fn new() -> RequestTimeFilterPostcodes {
    RequestTimeFilterPostcodes {
      departure_searches: None,
      arrival_searches: None
    }
  }

  pub fn set_departure_searches(&mut self, departure_searches: Vec<::models::RequestTimeFilterPostcodesDepartureSearch>) {
    self.departure_searches = Some(departure_searches);
  }

  pub fn with_departure_searches(mut self, departure_searches: Vec<::models::RequestTimeFilterPostcodesDepartureSearch>) -> RequestTimeFilterPostcodes {
    self.departure_searches = Some(departure_searches);
    self
  }

  pub fn departure_searches(&self) -> Option<&Vec<::models::RequestTimeFilterPostcodesDepartureSearch>> {
    self.departure_searches.as_ref()
  }

  pub fn reset_departure_searches(&mut self) {
    self.departure_searches = None;
  }

  pub fn set_arrival_searches(&mut self, arrival_searches: Vec<::models::RequestTimeFilterPostcodesArrivalSearch>) {
    self.arrival_searches = Some(arrival_searches);
  }

  pub fn with_arrival_searches(mut self, arrival_searches: Vec<::models::RequestTimeFilterPostcodesArrivalSearch>) -> RequestTimeFilterPostcodes {
    self.arrival_searches = Some(arrival_searches);
    self
  }

  pub fn arrival_searches(&self) -> Option<&Vec<::models::RequestTimeFilterPostcodesArrivalSearch>> {
    self.arrival_searches.as_ref()
  }

  pub fn reset_arrival_searches(&mut self) {
    self.arrival_searches = None;
  }

}


