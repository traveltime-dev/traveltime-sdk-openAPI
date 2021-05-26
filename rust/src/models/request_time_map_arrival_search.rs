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
pub struct RequestTimeMapArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "coords")]
    pub coords: Box<crate::models::Coords>,
    #[serde(rename = "transportation")]
    pub transportation: Box<crate::models::RequestTransportation>,
    #[serde(rename = "travel_time")]
    pub travel_time: i32,
    #[serde(rename = "arrival_time")]
    pub arrival_time: String,
    #[serde(rename = "properties", skip_serializing_if = "Option::is_none")]
    pub properties: Option<Vec<crate::models::RequestTimeMapProperty>>,
    #[serde(rename = "range", skip_serializing_if = "Option::is_none")]
    pub range: Option<Box<crate::models::RequestRangeNoMaxResults>>,
    #[serde(rename = "level_of_detail", skip_serializing_if = "Option::is_none")]
    pub level_of_detail: Option<Box<crate::models::RequestLevelOfDetail>>,
}

impl RequestTimeMapArrivalSearch {
    pub fn new(id: String, coords: crate::models::Coords, transportation: crate::models::RequestTransportation, travel_time: i32, arrival_time: String) -> RequestTimeMapArrivalSearch {
        RequestTimeMapArrivalSearch {
            id,
            coords: Box::new(coords),
            transportation: Box::new(transportation),
            travel_time,
            arrival_time,
            properties: None,
            range: None,
            level_of_detail: None,
        }
    }
}


