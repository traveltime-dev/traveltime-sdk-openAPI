#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/request_routes.h"
#include "../model/request_supported_locations.h"
#include "../model/request_time_filter.h"
#include "../model/request_time_filter_fast.h"
#include "../model/request_time_filter_postcode_districts.h"
#include "../model/request_time_filter_postcode_sectors.h"
#include "../model/request_time_filter_postcodes.h"
#include "../model/request_time_map.h"
#include "../model/response_error.h"
#include "../model/response_geocoding.h"
#include "../model/response_map_info.h"
#include "../model/response_routes.h"
#include "../model/response_supported_locations.h"
#include "../model/response_time_filter.h"
#include "../model/response_time_filter_fast.h"
#include "../model/response_time_filter_postcode_districts.h"
#include "../model/response_time_filter_postcode_sectors.h"
#include "../model/response_time_filter_postcodes.h"
#include "../model/response_time_map.h"


response_geocoding_t*
DefaultAPI_geocodingReverseSearch(apiClient_t *apiClient ,double lat ,double lng ,char * within.country);


response_geocoding_t*
DefaultAPI_geocodingSearch(apiClient_t *apiClient ,char * query ,double focus.lat ,double focus.lng ,char * within.country);


response_map_info_t*
DefaultAPI_mapInfo(apiClient_t *apiClient);


response_routes_t*
DefaultAPI_routes(apiClient_t *apiClient ,request_routes_t * request_routes);


response_supported_locations_t*
DefaultAPI_supportedLocations(apiClient_t *apiClient ,request_supported_locations_t * request_supported_locations);


response_time_filter_t*
DefaultAPI_timeFilter(apiClient_t *apiClient ,request_time_filter_t * request_time_filter);


response_time_filter_fast_t*
DefaultAPI_timeFilterFast(apiClient_t *apiClient ,request_time_filter_fast_t * request_time_filter_fast);


response_time_filter_postcode_districts_t*
DefaultAPI_timeFilterPostcodeDistricts(apiClient_t *apiClient ,request_time_filter_postcode_districts_t * request_time_filter_postcode_districts);


response_time_filter_postcode_sectors_t*
DefaultAPI_timeFilterPostcodeSectors(apiClient_t *apiClient ,request_time_filter_postcode_sectors_t * request_time_filter_postcode_sectors);


response_time_filter_postcodes_t*
DefaultAPI_timeFilterPostcodes(apiClient_t *apiClient ,request_time_filter_postcodes_t * request_time_filter_postcodes);


response_time_map_t*
DefaultAPI_timeMap(apiClient_t *apiClient ,request_time_map_t * request_time_map);


