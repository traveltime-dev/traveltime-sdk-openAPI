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
pub struct RequestTimeFilterPostcodesArrivalSearch {
  #[serde(rename = "id")]
  id: String,
  #[serde(rename = "transportation")]
  transportation: ::models::RequestTransportation,
  #[serde(rename = "travel_time")]
  travel_time: i32,
  #[serde(rename = "arrival_time")]
  arrival_time: String,
  #[serde(rename = "properties")]
  properties: Vec<::models::RequestTimeFilterPostcodesProperty>,
  #[serde(rename = "range")]
  range: Option<::models::RequestRangeFull>
}

impl RequestTimeFilterPostcodesArrivalSearch {
  pub fn new(id: String, transportation: ::models::RequestTransportation, travel_time: i32, arrival_time: String, properties: Vec<::models::RequestTimeFilterPostcodesProperty>) -> RequestTimeFilterPostcodesArrivalSearch {
    RequestTimeFilterPostcodesArrivalSearch {
      id: id,
      transportation: transportation,
      travel_time: travel_time,
      arrival_time: arrival_time,
      properties: properties,
      range: None
    }
  }

  pub fn set_id(&mut self, id: String) {
    self.id = id;
  }

  pub fn with_id(mut self, id: String) -> RequestTimeFilterPostcodesArrivalSearch {
    self.id = id;
    self
  }

  pub fn id(&self) -> &String {
    &self.id
  }


  pub fn set_transportation(&mut self, transportation: ::models::RequestTransportation) {
    self.transportation = transportation;
  }

  pub fn with_transportation(mut self, transportation: ::models::RequestTransportation) -> RequestTimeFilterPostcodesArrivalSearch {
    self.transportation = transportation;
    self
  }

  pub fn transportation(&self) -> &::models::RequestTransportation {
    &self.transportation
  }


  pub fn set_travel_time(&mut self, travel_time: i32) {
    self.travel_time = travel_time;
  }

  pub fn with_travel_time(mut self, travel_time: i32) -> RequestTimeFilterPostcodesArrivalSearch {
    self.travel_time = travel_time;
    self
  }

  pub fn travel_time(&self) -> &i32 {
    &self.travel_time
  }


  pub fn set_arrival_time(&mut self, arrival_time: String) {
    self.arrival_time = arrival_time;
  }

  pub fn with_arrival_time(mut self, arrival_time: String) -> RequestTimeFilterPostcodesArrivalSearch {
    self.arrival_time = arrival_time;
    self
  }

  pub fn arrival_time(&self) -> &String {
    &self.arrival_time
  }


  pub fn set_properties(&mut self, properties: Vec<::models::RequestTimeFilterPostcodesProperty>) {
    self.properties = properties;
  }

  pub fn with_properties(mut self, properties: Vec<::models::RequestTimeFilterPostcodesProperty>) -> RequestTimeFilterPostcodesArrivalSearch {
    self.properties = properties;
    self
  }

  pub fn properties(&self) -> &Vec<::models::RequestTimeFilterPostcodesProperty> {
    &self.properties
  }


  pub fn set_range(&mut self, range: ::models::RequestRangeFull) {
    self.range = Some(range);
  }

  pub fn with_range(mut self, range: ::models::RequestRangeFull) -> RequestTimeFilterPostcodesArrivalSearch {
    self.range = Some(range);
    self
  }

  pub fn range(&self) -> Option<&::models::RequestRangeFull> {
    self.range.as_ref()
  }

  pub fn reset_range(&mut self) {
    self.range = None;
  }

}


