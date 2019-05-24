/*
 * request_time_map_arrival_search.h
 *
 * 
 */

#ifndef _request_time_map_arrival_search_H_
#define _request_time_map_arrival_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "coords.h"
#include "request_range_no_max_results.h"
#include "request_time_map_property.h"
#include "request_transportation.h"



typedef struct request_time_map_arrival_search_t {
    char *id; // string
    coords_t *coords; //model
    request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *arrival_time; //date time
    list_t *properties; //nonprimitive container
    request_range_no_max_results_t *range; //model

} request_time_map_arrival_search_t;

request_time_map_arrival_search_t *request_time_map_arrival_search_create(
    char *id,
    coords_t *coords,
    request_transportation_t *transportation,
    int travel_time,
    char *arrival_time,
    list_t *properties,
    request_range_no_max_results_t *range
);

void request_time_map_arrival_search_free(request_time_map_arrival_search_t *request_time_map_arrival_search);

request_time_map_arrival_search_t *request_time_map_arrival_search_parseFromJSON(cJSON *request_time_map_arrival_searchJSON);

cJSON *request_time_map_arrival_search_convertToJSON(request_time_map_arrival_search_t *request_time_map_arrival_search);

#endif /* _request_time_map_arrival_search_H_ */

