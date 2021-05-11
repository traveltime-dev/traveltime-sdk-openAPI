/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.2.2
 * Contact: support@igeolise.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type ResponseRoutesProperties struct {

	TravelTime int32 `json:"travel_time,omitempty"`

	Distance int32 `json:"distance,omitempty"`

	Fares ResponseFares `json:"fares,omitempty"`

	Route ResponseRoute `json:"route,omitempty"`
}
