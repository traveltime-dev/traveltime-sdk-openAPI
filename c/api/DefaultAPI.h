#include <stdlib.h>
#include <stdio.h>
#include "apiClient.h"
#include "cJSON.h"
#include "request_routes.h"
#include "request_supported_locations.h"
#include "request_time_filter.h"
#include "request_time_filter_fast.h"
#include "request_time_filter_postcode_districts.h"
#include "request_time_filter_postcode_sectors.h"
#include "request_time_filter_postcodes.h"
#include "request_time_map.h"
#include "response_error.h"
#include "response_geocoding.h"
#include "response_map_info.h"
#include "response_routes.h"
#include "response_supported_locations.h"
#include "response_time_filter.h"
#include "response_time_filter_fast.h"
#include "response_time_filter_postcode_districts.h"
#include "response_time_filter_postcode_sectors.h"
#include "response_time_filter_postcodes.h"
#include "response_time_map.h"


response_geocoding_t*
DefaultAPI_geocodingReverseSearch(apiClient_t *apiClient,double focus.lat ,double focus.lng ,char* within.country );



response_geocoding_t*
DefaultAPI_geocodingSearch(apiClient_t *apiClient,char* query ,char* within.country ,double focus.lat ,double focus.lng );



response_map_info_t*
DefaultAPI_mapInfo(apiClient_t *apiClient);



response_routes_t*
DefaultAPI_routes(apiClient_t *apiClient,request_routes_t* request_routes );



response_supported_locations_t*
DefaultAPI_supportedLocations(apiClient_t *apiClient,request_supported_locations_t* request_supported_locations );



response_time_filter_t*
DefaultAPI_timeFilter(apiClient_t *apiClient,request_time_filter_t* request_time_filter );



response_time_filter_fast_t*
DefaultAPI_timeFilterFast(apiClient_t *apiClient,request_time_filter_fast_t* request_time_filter_fast );



response_time_filter_postcode_districts_t*
DefaultAPI_timeFilterPostcodeDistricts(apiClient_t *apiClient,request_time_filter_postcode_districts_t* request_time_filter_postcode_districts );



response_time_filter_postcode_sectors_t*
DefaultAPI_timeFilterPostcodeSectors(apiClient_t *apiClient,request_time_filter_postcode_sectors_t* request_time_filter_postcode_sectors );



response_time_filter_postcodes_t*
DefaultAPI_timeFilterPostcodes(apiClient_t *apiClient,request_time_filter_postcodes_t* request_time_filter_postcodes );



response_time_map_t*
DefaultAPI_timeMap(apiClient_t *apiClient,request_time_map_t* request_time_map );



