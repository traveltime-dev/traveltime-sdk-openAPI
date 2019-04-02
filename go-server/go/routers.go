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

import (
	"fmt"
	"net/http"
	"strings"

	"github.com/gorilla/mux"
)

type Route struct {
	Name        string
	Method      string
	Pattern     string
	HandlerFunc http.HandlerFunc
}

type Routes []Route

func NewRouter() *mux.Router {
	router := mux.NewRouter().StrictSlash(true)
	for _, route := range routes {
		var handler http.Handler
		handler = route.HandlerFunc
		handler = Logger(handler, route.Name)

		router.
			Methods(route.Method).
			Path(route.Pattern).
			Name(route.Name).
			Handler(handler)
	}

	return router
}

func Index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

var routes = Routes{
	{
		"Index",
		"GET",
		"/",
		Index,
	},

	{
		"GeocodingReverseSearch",
		strings.ToUpper("Get"),
		"/v4/geocoding/reverse",
		GeocodingReverseSearch,
	},

	{
		"GeocodingSearch",
		strings.ToUpper("Get"),
		"/v4/geocoding/search",
		GeocodingSearch,
	},

	{
		"MapInfo",
		strings.ToUpper("Get"),
		"/v4/map-info",
		MapInfo,
	},

	{
		"Routes",
		strings.ToUpper("Post"),
		"/v4/routes",
		Routes,
	},

	{
		"SupportedLocations",
		strings.ToUpper("Post"),
		"/v4/supported-locations",
		SupportedLocations,
	},

	{
		"TimeFilter",
		strings.ToUpper("Post"),
		"/v4/time-filter",
		TimeFilter,
	},

	{
		"TimeFilterFast",
		strings.ToUpper("Post"),
		"/v4/time-filter/fast",
		TimeFilterFast,
	},

	{
		"TimeFilterPostcodeDistricts",
		strings.ToUpper("Post"),
		"/v4/time-filter/postcode-districts",
		TimeFilterPostcodeDistricts,
	},

	{
		"TimeFilterPostcodeSectors",
		strings.ToUpper("Post"),
		"/v4/time-filter/postcode-sectors",
		TimeFilterPostcodeSectors,
	},

	{
		"TimeFilterPostcodes",
		strings.ToUpper("Post"),
		"/v4/time-filter/postcodes",
		TimeFilterPostcodes,
	},

	{
		"TimeMap",
		strings.ToUpper("Post"),
		"/v4/time-map",
		TimeMap,
	},
}