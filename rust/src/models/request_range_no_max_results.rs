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
pub struct RequestRangeNoMaxResults {
    #[serde(rename = "enabled")]
    pub enabled: bool,
    #[serde(rename = "width")]
    pub width: i32,
}

impl RequestRangeNoMaxResults {
    pub fn new(enabled: bool, width: i32) -> RequestRangeNoMaxResults {
        RequestRangeNoMaxResults {
            enabled,
            width,
        }
    }
}


