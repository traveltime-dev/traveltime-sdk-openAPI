/*
 * TravelTime Platform API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.0.0
 * Contact: support@igeolise.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package traveltimeplatform

type ResponseBox struct {

	MinLat float64 `json:"min_lat"`

	MaxLat float64 `json:"max_lat"`

	MinLng float64 `json:"min_lng"`

	MaxLng float64 `json:"max_lng"`
}