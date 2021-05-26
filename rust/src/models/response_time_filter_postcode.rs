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
pub struct ResponseTimeFilterPostcode {
    #[serde(rename = "code")]
    pub code: String,
    #[serde(rename = "properties")]
    pub properties: Vec<crate::models::ResponseTimeFilterPostcodesProperties>,
}

impl ResponseTimeFilterPostcode {
    pub fn new(code: String, properties: Vec<crate::models::ResponseTimeFilterPostcodesProperties>) -> ResponseTimeFilterPostcode {
        ResponseTimeFilterPostcode {
            code,
            properties,
        }
    }
}


