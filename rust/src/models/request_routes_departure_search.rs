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
pub struct RequestRoutesDepartureSearch {
  #[serde(rename = "id")]
  id: String,
  #[serde(rename = "departure_location_id")]
  departure_location_id: String,
  #[serde(rename = "arrival_location_ids")]
  arrival_location_ids: Vec<String>,
  #[serde(rename = "transportation")]
  transportation: ::models::RequestTransportation,
  #[serde(rename = "departure_time")]
  departure_time: String,
  #[serde(rename = "properties")]
  properties: Vec<::models::RequestRoutesProperty>,
  #[serde(rename = "range")]
  range: Option<::models::RequestRangeFull>
}

impl RequestRoutesDepartureSearch {
  pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: ::models::RequestTransportation, departure_time: String, properties: Vec<::models::RequestRoutesProperty>) -> RequestRoutesDepartureSearch {
    RequestRoutesDepartureSearch {
      id: id,
      departure_location_id: departure_location_id,
      arrival_location_ids: arrival_location_ids,
      transportation: transportation,
      departure_time: departure_time,
      properties: properties,
      range: None
    }
  }

  pub fn set_id(&mut self, id: String) {
    self.id = id;
  }

  pub fn with_id(mut self, id: String) -> RequestRoutesDepartureSearch {
    self.id = id;
    self
  }

  pub fn id(&self) -> &String {
    &self.id
  }


  pub fn set_departure_location_id(&mut self, departure_location_id: String) {
    self.departure_location_id = departure_location_id;
  }

  pub fn with_departure_location_id(mut self, departure_location_id: String) -> RequestRoutesDepartureSearch {
    self.departure_location_id = departure_location_id;
    self
  }

  pub fn departure_location_id(&self) -> &String {
    &self.departure_location_id
  }


  pub fn set_arrival_location_ids(&mut self, arrival_location_ids: Vec<String>) {
    self.arrival_location_ids = arrival_location_ids;
  }

  pub fn with_arrival_location_ids(mut self, arrival_location_ids: Vec<String>) -> RequestRoutesDepartureSearch {
    self.arrival_location_ids = arrival_location_ids;
    self
  }

  pub fn arrival_location_ids(&self) -> &Vec<String> {
    &self.arrival_location_ids
  }


  pub fn set_transportation(&mut self, transportation: ::models::RequestTransportation) {
    self.transportation = transportation;
  }

  pub fn with_transportation(mut self, transportation: ::models::RequestTransportation) -> RequestRoutesDepartureSearch {
    self.transportation = transportation;
    self
  }

  pub fn transportation(&self) -> &::models::RequestTransportation {
    &self.transportation
  }


  pub fn set_departure_time(&mut self, departure_time: String) {
    self.departure_time = departure_time;
  }

  pub fn with_departure_time(mut self, departure_time: String) -> RequestRoutesDepartureSearch {
    self.departure_time = departure_time;
    self
  }

  pub fn departure_time(&self) -> &String {
    &self.departure_time
  }


  pub fn set_properties(&mut self, properties: Vec<::models::RequestRoutesProperty>) {
    self.properties = properties;
  }

  pub fn with_properties(mut self, properties: Vec<::models::RequestRoutesProperty>) -> RequestRoutesDepartureSearch {
    self.properties = properties;
    self
  }

  pub fn properties(&self) -> &Vec<::models::RequestRoutesProperty> {
    &self.properties
  }


  pub fn set_range(&mut self, range: ::models::RequestRangeFull) {
    self.range = Some(range);
  }

  pub fn with_range(mut self, range: ::models::RequestRangeFull) -> RequestRoutesDepartureSearch {
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


