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

import (
	"context"
	"net/http"
	"errors"
)

// DefaultApiService is a service that implents the logic for the DefaultApiServicer
// This service should implement the business logic for every endpoint for the DefaultApi API. 
// Include any external packages or services that will be required by this service.
type DefaultApiService struct {
}

// NewDefaultApiService creates a default api service
func NewDefaultApiService() DefaultApiServicer {
	return &DefaultApiService{}
}

// GeocodingReverseSearch - 
func (s *DefaultApiService) GeocodingReverseSearch(ctx context.Context, lat float64, lng float64, withinCountry string) (ImplResponse, error) {
	// TODO - update GeocodingReverseSearch with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseGeocoding{}) or use other options such as http.Ok ...
	//return Response(200, ResponseGeocoding{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("GeocodingReverseSearch method not implemented")
}

// GeocodingSearch - 
func (s *DefaultApiService) GeocodingSearch(ctx context.Context, query string, focusLat float64, focusLng float64, withinCountry string) (ImplResponse, error) {
	// TODO - update GeocodingSearch with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseGeocoding{}) or use other options such as http.Ok ...
	//return Response(200, ResponseGeocoding{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("GeocodingSearch method not implemented")
}

// MapInfo - 
func (s *DefaultApiService) MapInfo(ctx context.Context) (ImplResponse, error) {
	// TODO - update MapInfo with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseMapInfo{}) or use other options such as http.Ok ...
	//return Response(200, ResponseMapInfo{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("MapInfo method not implemented")
}

// Routes - 
func (s *DefaultApiService) Routes(ctx context.Context, requestRoutes RequestRoutes) (ImplResponse, error) {
	// TODO - update Routes with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseRoutes{}) or use other options such as http.Ok ...
	//return Response(200, ResponseRoutes{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("Routes method not implemented")
}

// SupportedLocations - 
func (s *DefaultApiService) SupportedLocations(ctx context.Context, requestSupportedLocations RequestSupportedLocations) (ImplResponse, error) {
	// TODO - update SupportedLocations with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseSupportedLocations{}) or use other options such as http.Ok ...
	//return Response(200, ResponseSupportedLocations{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("SupportedLocations method not implemented")
}

// TimeFilter - 
func (s *DefaultApiService) TimeFilter(ctx context.Context, requestTimeFilter RequestTimeFilter) (ImplResponse, error) {
	// TODO - update TimeFilter with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeFilter{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeFilter{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeFilter method not implemented")
}

// TimeFilterFast - 
func (s *DefaultApiService) TimeFilterFast(ctx context.Context, requestTimeFilterFast RequestTimeFilterFast) (ImplResponse, error) {
	// TODO - update TimeFilterFast with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeFilterFast{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeFilterFast{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeFilterFast method not implemented")
}

// TimeFilterPostcodeDistricts - 
func (s *DefaultApiService) TimeFilterPostcodeDistricts(ctx context.Context, requestTimeFilterPostcodeDistricts RequestTimeFilterPostcodeDistricts) (ImplResponse, error) {
	// TODO - update TimeFilterPostcodeDistricts with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeFilterPostcodeDistricts{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeFilterPostcodeDistricts{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeFilterPostcodeDistricts method not implemented")
}

// TimeFilterPostcodeSectors - 
func (s *DefaultApiService) TimeFilterPostcodeSectors(ctx context.Context, requestTimeFilterPostcodeSectors RequestTimeFilterPostcodeSectors) (ImplResponse, error) {
	// TODO - update TimeFilterPostcodeSectors with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeFilterPostcodeSectors{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeFilterPostcodeSectors{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeFilterPostcodeSectors method not implemented")
}

// TimeFilterPostcodes - 
func (s *DefaultApiService) TimeFilterPostcodes(ctx context.Context, requestTimeFilterPostcodes RequestTimeFilterPostcodes) (ImplResponse, error) {
	// TODO - update TimeFilterPostcodes with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeFilterPostcodes{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeFilterPostcodes{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeFilterPostcodes method not implemented")
}

// TimeMap - 
func (s *DefaultApiService) TimeMap(ctx context.Context, requestTimeMap RequestTimeMap) (ImplResponse, error) {
	// TODO - update TimeMap with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, ResponseTimeMap{}) or use other options such as http.Ok ...
	//return Response(200, ResponseTimeMap{}), nil

	//TODO: Uncomment the next line to return response Response(0, ResponseError{}) or use other options such as http.Ok ...
	//return Response(0, ResponseError{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("TimeMap method not implemented")
}

