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

type ResponseTimeFilterPostcodeDistrictProperties struct {

	TravelTimeReachable ResponseTravelTimeStatistics `json:"travel_time_reachable,omitempty"`

	TravelTimeAll ResponseTravelTimeStatistics `json:"travel_time_all,omitempty"`

	Coverage float64 `json:"coverage,omitempty"`
}
