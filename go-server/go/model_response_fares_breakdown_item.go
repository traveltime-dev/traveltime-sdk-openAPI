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

type ResponseFaresBreakdownItem struct {

	Modes []ResponseTransportationMode `json:"modes"`

	RoutePartIds []int32 `json:"route_part_ids"`

	Tickets []ResponseFareTicket `json:"tickets"`
}
