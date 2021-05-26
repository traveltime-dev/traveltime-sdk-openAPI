/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodesDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "transportation")]
    pub transportation: Box<crate::models::RequestTransportation>,
    #[serde(rename = "travel_time")]
    pub travel_time: i32,
    #[serde(rename = "departure_time")]
    pub departure_time: String,
    #[serde(rename = "properties")]
    pub properties: Vec<crate::models::RequestTimeFilterPostcodesProperty>,
    #[serde(rename = "range", skip_serializing_if = "Option::is_none")]
    pub range: Option<Box<crate::models::RequestRangeFull>>,
}

impl RequestTimeFilterPostcodesDepartureSearch {
    pub fn new(id: String, transportation: crate::models::RequestTransportation, travel_time: i32, departure_time: String, properties: Vec<crate::models::RequestTimeFilterPostcodesProperty>) -> RequestTimeFilterPostcodesDepartureSearch {
        RequestTimeFilterPostcodesDepartureSearch {
            id,
            transportation: Box::new(transportation),
            travel_time,
            departure_time,
            properties,
            range: None,
        }
    }
}


