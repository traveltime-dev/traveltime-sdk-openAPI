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
pub struct ResponseTimeFilterLocation {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "properties")]
    pub properties: Vec<crate::models::ResponseTimeFilterProperties>,
}

impl ResponseTimeFilterLocation {
    pub fn new(id: String, properties: Vec<crate::models::ResponseTimeFilterProperties>) -> ResponseTimeFilterLocation {
        ResponseTimeFilterLocation {
            id,
            properties,
        }
    }
}


