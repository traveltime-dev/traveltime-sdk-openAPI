/*
 * request_time_map_departure_search.h
 *
 * 
 */

#ifndef _request_time_map_departure_search_H_
#define _request_time_map_departure_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_time_map_departure_search_t request_time_map_departure_search_t;

#include "coords.h"
#include "request_level_of_detail.h"
#include "request_range_no_max_results.h"
#include "request_time_map_property.h"
#include "request_transportation.h"

// Enum  for request_time_map_departure_search

typedef enum  { traveltime_api_request_time_map_departure_search__NULL = 0, traveltime_api_request_time_map_departure_search__is_only_walking } traveltime_api_request_time_map_departure_search__e;

char* request_time_map_departure_search_properties_ToString(traveltime_api_request_time_map_departure_search__e properties);

traveltime_api_request_time_map_departure_search__e request_time_map_departure_search_properties_FromString(char* properties);



typedef struct request_time_map_departure_search_t {
    char *id; // string
    struct coords_t *coords; //model
    struct request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *departure_time; //date time
    list_t *properties; //nonprimitive container
    struct request_range_no_max_results_t *range; //model
    struct request_level_of_detail_t *level_of_detail; //model

} request_time_map_departure_search_t;

request_time_map_departure_search_t *request_time_map_departure_search_create(
    char *id,
    coords_t *coords,
    request_transportation_t *transportation,
    int travel_time,
    char *departure_time,
    list_t *properties,
    request_range_no_max_results_t *range,
    request_level_of_detail_t *level_of_detail
);

void request_time_map_departure_search_free(request_time_map_departure_search_t *request_time_map_departure_search);

request_time_map_departure_search_t *request_time_map_departure_search_parseFromJSON(cJSON *request_time_map_departure_searchJSON);

cJSON *request_time_map_departure_search_convertToJSON(request_time_map_departure_search_t *request_time_map_departure_search);

#endif /* _request_time_map_departure_search_H_ */

