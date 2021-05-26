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

import (
	"time"
)

type RequestTimeMapDepartureSearch struct {

	Id string `json:"id"`

	Coords Coords `json:"coords"`

	Transportation RequestTransportation `json:"transportation"`

	TravelTime int32 `json:"travel_time"`

	DepartureTime time.Time `json:"departure_time"`

	Properties []RequestTimeMapProperty `json:"properties,omitempty"`

	Range RequestRangeNoMaxResults `json:"range,omitempty"`

	LevelOfDetail RequestLevelOfDetail `json:"level_of_detail,omitempty"`
}
