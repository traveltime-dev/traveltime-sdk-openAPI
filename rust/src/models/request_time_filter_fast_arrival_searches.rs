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
pub struct RequestTimeFilterFastArrivalSearches {
    #[serde(rename = "many_to_one", skip_serializing_if = "Option::is_none")]
    pub many_to_one: Option<Vec<crate::models::RequestTimeFilterFastArrivalManyToOneSearch>>,
    #[serde(rename = "one_to_many", skip_serializing_if = "Option::is_none")]
    pub one_to_many: Option<Vec<crate::models::RequestTimeFilterFastArrivalOneToManySearch>>,
}

impl RequestTimeFilterFastArrivalSearches {
    pub fn new() -> RequestTimeFilterFastArrivalSearches {
        RequestTimeFilterFastArrivalSearches {
            many_to_one: None,
            one_to_many: None,
        }
    }
}


