/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeMap {
    #[serde(rename = "departure_searches", skip_serializing_if = "Option::is_none")]
    pub departure_searches: Option<Vec<crate::models::RequestTimeMapDepartureSearch>>,
    #[serde(rename = "arrival_searches", skip_serializing_if = "Option::is_none")]
    pub arrival_searches: Option<Vec<crate::models::RequestTimeMapArrivalSearch>>,
    #[serde(rename = "unions", skip_serializing_if = "Option::is_none")]
    pub unions: Option<Vec<crate::models::RequestUnionOnIntersection>>,
    #[serde(rename = "intersections", skip_serializing_if = "Option::is_none")]
    pub intersections: Option<Vec<crate::models::RequestUnionOnIntersection>>,
}

impl RequestTimeMap {
    pub fn new() -> RequestTimeMap {
        RequestTimeMap {
            departure_searches: None,
            arrival_searches: None,
            unions: None,
            intersections: None,
        }
    }
}


