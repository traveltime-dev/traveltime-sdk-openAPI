/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type ResponseMapInfoFeatures struct {

	PublicTransport ResponseMapInfoFeaturesPublicTransport `json:"public_transport,omitempty"`

	Fares bool `json:"fares"`

	Postcodes bool `json:"postcodes"`
}
