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
pub struct ResponseMapInfoFeatures {
    #[serde(rename = "public_transport", skip_serializing_if = "Option::is_none")]
    pub public_transport: Option<Box<crate::models::ResponseMapInfoFeaturesPublicTransport>>,
    #[serde(rename = "fares")]
    pub fares: bool,
    #[serde(rename = "postcodes")]
    pub postcodes: bool,
}

impl ResponseMapInfoFeatures {
    pub fn new(fares: bool, postcodes: bool) -> ResponseMapInfoFeatures {
        ResponseMapInfoFeatures {
            public_transport: None,
            fares,
            postcodes,
        }
    }
}


