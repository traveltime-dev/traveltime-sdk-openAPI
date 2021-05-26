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
pub struct ResponseBoundingBox {
    #[serde(rename = "envelope")]
    pub envelope: Box<crate::models::ResponseBox>,
    #[serde(rename = "boxes")]
    pub boxes: Vec<crate::models::ResponseBox>,
}

impl ResponseBoundingBox {
    pub fn new(envelope: crate::models::ResponseBox, boxes: Vec<crate::models::ResponseBox>) -> ResponseBoundingBox {
        ResponseBoundingBox {
            envelope: Box::new(envelope),
            boxes,
        }
    }
}


