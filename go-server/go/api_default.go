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
	"encoding/json"
	"net/http"
	"strings"

	"github.com/gorilla/mux"
)

// A DefaultApiController binds http requests to an api service and writes the service results to the http response
type DefaultApiController struct {
	service DefaultApiServicer
}

// NewDefaultApiController creates a default api controller
func NewDefaultApiController(s DefaultApiServicer) Router {
	return &DefaultApiController{service: s}
}

// Routes returns all of the api route for the DefaultApiController
func (c *DefaultApiController) Routes() Routes {
	return Routes{ 
		{
			"GeocodingReverseSearch",
			strings.ToUpper("Get"),
			"/v4/geocoding/reverse",
			c.GeocodingReverseSearch,
		},
		{
			"GeocodingSearch",
			strings.ToUpper("Get"),
			"/v4/geocoding/search",
			c.GeocodingSearch,
		},
		{
			"MapInfo",
			strings.ToUpper("Get"),
			"/v4/map-info",
			c.MapInfo,
		},
		{
			"Routes",
			strings.ToUpper("Post"),
			"/v4/routes",
			c.Routes,
		},
		{
			"SupportedLocations",
			strings.ToUpper("Post"),
			"/v4/supported-locations",
			c.SupportedLocations,
		},
		{
			"TimeFilter",
			strings.ToUpper("Post"),
			"/v4/time-filter",
			c.TimeFilter,
		},
		{
			"TimeFilterFast",
			strings.ToUpper("Post"),
			"/v4/time-filter/fast",
			c.TimeFilterFast,
		},
		{
			"TimeFilterPostcodeDistricts",
			strings.ToUpper("Post"),
			"/v4/time-filter/postcode-districts",
			c.TimeFilterPostcodeDistricts,
		},
		{
			"TimeFilterPostcodeSectors",
			strings.ToUpper("Post"),
			"/v4/time-filter/postcode-sectors",
			c.TimeFilterPostcodeSectors,
		},
		{
			"TimeFilterPostcodes",
			strings.ToUpper("Post"),
			"/v4/time-filter/postcodes",
			c.TimeFilterPostcodes,
		},
		{
			"TimeMap",
			strings.ToUpper("Post"),
			"/v4/time-map",
			c.TimeMap,
		},
	}
}

// GeocodingReverseSearch - 
func (c *DefaultApiController) GeocodingReverseSearch(w http.ResponseWriter, r *http.Request) {
	query := r.URL.Query()
	lat := query.Get("lat")
	lng := query.Get("lng")
	withinCountry := query.Get("withinCountry")
	result, err := c.service.GeocodingReverseSearch(r.Context(), lat, lng, withinCountry)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// GeocodingSearch - 
func (c *DefaultApiController) GeocodingSearch(w http.ResponseWriter, r *http.Request) {
	query := r.URL.Query()
	query := query.Get("query")
	focusLat := query.Get("focusLat")
	focusLng := query.Get("focusLng")
	withinCountry := query.Get("withinCountry")
	result, err := c.service.GeocodingSearch(r.Context(), query, focusLat, focusLng, withinCountry)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// MapInfo - 
func (c *DefaultApiController) MapInfo(w http.ResponseWriter, r *http.Request) {
	result, err := c.service.MapInfo(r.Context())
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// Routes - 
func (c *DefaultApiController) Routes(w http.ResponseWriter, r *http.Request) {
	requestRoutes := &RequestRoutes{}
	if err := json.NewDecoder(r.Body).Decode(&requestRoutes); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.Routes(r.Context(), *requestRoutes)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// SupportedLocations - 
func (c *DefaultApiController) SupportedLocations(w http.ResponseWriter, r *http.Request) {
	requestSupportedLocations := &RequestSupportedLocations{}
	if err := json.NewDecoder(r.Body).Decode(&requestSupportedLocations); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.SupportedLocations(r.Context(), *requestSupportedLocations)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeFilter - 
func (c *DefaultApiController) TimeFilter(w http.ResponseWriter, r *http.Request) {
	requestTimeFilter := &RequestTimeFilter{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeFilter); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeFilter(r.Context(), *requestTimeFilter)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeFilterFast - 
func (c *DefaultApiController) TimeFilterFast(w http.ResponseWriter, r *http.Request) {
	requestTimeFilterFast := &RequestTimeFilterFast{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeFilterFast); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeFilterFast(r.Context(), *requestTimeFilterFast)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeFilterPostcodeDistricts - 
func (c *DefaultApiController) TimeFilterPostcodeDistricts(w http.ResponseWriter, r *http.Request) {
	requestTimeFilterPostcodeDistricts := &RequestTimeFilterPostcodeDistricts{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeFilterPostcodeDistricts); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeFilterPostcodeDistricts(r.Context(), *requestTimeFilterPostcodeDistricts)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeFilterPostcodeSectors - 
func (c *DefaultApiController) TimeFilterPostcodeSectors(w http.ResponseWriter, r *http.Request) {
	requestTimeFilterPostcodeSectors := &RequestTimeFilterPostcodeSectors{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeFilterPostcodeSectors); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeFilterPostcodeSectors(r.Context(), *requestTimeFilterPostcodeSectors)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeFilterPostcodes - 
func (c *DefaultApiController) TimeFilterPostcodes(w http.ResponseWriter, r *http.Request) {
	requestTimeFilterPostcodes := &RequestTimeFilterPostcodes{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeFilterPostcodes); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeFilterPostcodes(r.Context(), *requestTimeFilterPostcodes)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}

// TimeMap - 
func (c *DefaultApiController) TimeMap(w http.ResponseWriter, r *http.Request) {
	requestTimeMap := &RequestTimeMap{}
	if err := json.NewDecoder(r.Body).Decode(&requestTimeMap); err != nil {
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	result, err := c.service.TimeMap(r.Context(), *requestTimeMap)
	// If an error occurred, encode the error with the status code
	if err != nil {
		EncodeJSONResponse(err.Error(), &result.Code, w)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)

}
