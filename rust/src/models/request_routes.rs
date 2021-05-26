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
pub struct RequestRoutes {
    #[serde(rename = "locations")]
    pub locations: Vec<crate::models::RequestLocation>,
    #[serde(rename = "departure_searches", skip_serializing_if = "Option::is_none")]
    pub departure_searches: Option<Vec<crate::models::RequestRoutesDepartureSearch>>,
    #[serde(rename = "arrival_searches", skip_serializing_if = "Option::is_none")]
    pub arrival_searches: Option<Vec<crate::models::RequestRoutesArrivalSearch>>,
}

impl RequestRoutes {
    pub fn new(locations: Vec<crate::models::RequestLocation>) -> RequestRoutes {
        RequestRoutes {
            locations,
            departure_searches: None,
            arrival_searches: None,
        }
    }
}


