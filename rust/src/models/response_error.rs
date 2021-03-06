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
pub struct ResponseError {
    #[serde(rename = "http_status", skip_serializing_if = "Option::is_none")]
    pub http_status: Option<i32>,
    #[serde(rename = "error_code", skip_serializing_if = "Option::is_none")]
    pub error_code: Option<i32>,
    #[serde(rename = "description", skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
    #[serde(rename = "documentation_link", skip_serializing_if = "Option::is_none")]
    pub documentation_link: Option<String>,
    #[serde(rename = "additional_info", skip_serializing_if = "Option::is_none")]
    pub additional_info: Option<::std::collections::HashMap<String, Vec<String>>>,
}

impl ResponseError {
    pub fn new() -> ResponseError {
        ResponseError {
            http_status: None,
            error_code: None,
            description: None,
            documentation_link: None,
            additional_info: None,
        }
    }
}


