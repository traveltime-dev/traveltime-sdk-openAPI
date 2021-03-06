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

type RequestTimeFilter struct {

	Locations []RequestLocation `json:"locations"`

	DepartureSearches []RequestTimeFilterDepartureSearch `json:"departure_searches,omitempty"`

	ArrivalSearches []RequestTimeFilterArrivalSearch `json:"arrival_searches,omitempty"`
}
