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
pub struct ResponseTimeFilterPostcodeSectorsResult {
    #[serde(rename = "search_id")]
    pub search_id: String,
    #[serde(rename = "sectors")]
    pub sectors: Vec<crate::models::ResponseTimeFilterPostcodeSector>,
}

impl ResponseTimeFilterPostcodeSectorsResult {
    pub fn new(search_id: String, sectors: Vec<crate::models::ResponseTimeFilterPostcodeSector>) -> ResponseTimeFilterPostcodeSectorsResult {
        ResponseTimeFilterPostcodeSectorsResult {
            search_id,
            sectors,
        }
    }
}


