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
pub struct ResponseRoutesProperties {
    #[serde(rename = "travel_time", skip_serializing_if = "Option::is_none")]
    pub travel_time: Option<i32>,
    #[serde(rename = "distance", skip_serializing_if = "Option::is_none")]
    pub distance: Option<i32>,
    #[serde(rename = "fares", skip_serializing_if = "Option::is_none")]
    pub fares: Option<Box<crate::models::ResponseFares>>,
    #[serde(rename = "route", skip_serializing_if = "Option::is_none")]
    pub route: Option<Box<crate::models::ResponseRoute>>,
}

impl ResponseRoutesProperties {
    pub fn new() -> ResponseRoutesProperties {
        ResponseRoutesProperties {
            travel_time: None,
            distance: None,
            fares: None,
            route: None,
        }
    }
}


