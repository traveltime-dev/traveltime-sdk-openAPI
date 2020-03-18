/*
 * request_routes_arrival_search.h
 *
 * 
 */

#ifndef _request_routes_arrival_search_H_
#define _request_routes_arrival_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_range_full.h"
#include "request_routes_property.h"
#include "request_transportation.h"

// Enum  for request_routes_arrival_search

typedef enum  { traveltime_platform_api_request_routes_arrival_search__NULL = 0, traveltime_platform_api_request_routes_arrival_search__travel_time, traveltime_platform_api_request_routes_arrival_search__distance, traveltime_platform_api_request_routes_arrival_search__fares, traveltime_platform_api_request_routes_arrival_search__route } traveltime_platform_api_request_routes_arrival_search__e;

char* request_routes_arrival_search_properties_ToString(traveltime_platform_api_request_routes_arrival_search__e properties);

traveltime_platform_api_request_routes_arrival_search__e request_routes_arrival_search_properties_FromString(char* properties);



typedef struct request_routes_arrival_search_t {
    char *id; // string
    list_t *departure_location_ids; //primitive container
    char *arrival_location_id; // string
    struct request_transportation_t *transportation; //model
    char *arrival_time; //date time
    list_t *properties; //nonprimitive container
    struct request_range_full_t *range; //model

} request_routes_arrival_search_t;

request_routes_arrival_search_t *request_routes_arrival_search_create(
    char *id,
    list_t *departure_location_ids,
    char *arrival_location_id,
    request_transportation_t *transportation,
    char *arrival_time,
    list_t *properties,
    request_range_full_t *range
);

void request_routes_arrival_search_free(request_routes_arrival_search_t *request_routes_arrival_search);

request_routes_arrival_search_t *request_routes_arrival_search_parseFromJSON(cJSON *request_routes_arrival_searchJSON);

cJSON *request_routes_arrival_search_convertToJSON(request_routes_arrival_search_t *request_routes_arrival_search);

#endif /* _request_routes_arrival_search_H_ */

