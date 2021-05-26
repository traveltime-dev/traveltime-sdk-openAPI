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
pub struct ResponseTimeFilterPostcodeSectorProperties {
    #[serde(rename = "travel_time_reachable", skip_serializing_if = "Option::is_none")]
    pub travel_time_reachable: Option<Box<crate::models::ResponseTravelTimeStatistics>>,
    #[serde(rename = "travel_time_all", skip_serializing_if = "Option::is_none")]
    pub travel_time_all: Option<Box<crate::models::ResponseTravelTimeStatistics>>,
    #[serde(rename = "coverage", skip_serializing_if = "Option::is_none")]
    pub coverage: Option<f64>,
}

impl ResponseTimeFilterPostcodeSectorProperties {
    pub fn new() -> ResponseTimeFilterPostcodeSectorProperties {
        ResponseTimeFilterPostcodeSectorProperties {
            travel_time_reachable: None,
            travel_time_all: None,
            coverage: None,
        }
    }
}


