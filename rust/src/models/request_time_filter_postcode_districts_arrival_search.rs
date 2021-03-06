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
pub struct RequestTimeFilterPostcodeDistrictsArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "transportation")]
    pub transportation: Box<crate::models::RequestTransportation>,
    #[serde(rename = "travel_time")]
    pub travel_time: i32,
    #[serde(rename = "arrival_time")]
    pub arrival_time: String,
    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,
    #[serde(rename = "properties")]
    pub properties: Vec<crate::models::RequestTimeFilterPostcodeDistrictsProperty>,
    #[serde(rename = "range", skip_serializing_if = "Option::is_none")]
    pub range: Option<Box<crate::models::RequestRangeFull>>,
}

impl RequestTimeFilterPostcodeDistrictsArrivalSearch {
    pub fn new(id: String, transportation: crate::models::RequestTransportation, travel_time: i32, arrival_time: String, reachable_postcodes_threshold: f64, properties: Vec<crate::models::RequestTimeFilterPostcodeDistrictsProperty>) -> RequestTimeFilterPostcodeDistrictsArrivalSearch {
        RequestTimeFilterPostcodeDistrictsArrivalSearch {
            id,
            transportation: Box::new(transportation),
            travel_time,
            arrival_time,
            reachable_postcodes_threshold,
            properties,
            range: None,
        }
    }
}


