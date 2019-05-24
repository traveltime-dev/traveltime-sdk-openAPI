/*
 * request_routes_departure_search.h
 *
 * 
 */

#ifndef _request_routes_departure_search_H_
#define _request_routes_departure_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_range_full.h"
#include "request_routes_property.h"
#include "request_transportation.h"



typedef struct request_routes_departure_search_t {
    char *id; // string
    char *departure_location_id; // string
    list_t *arrival_location_ids; //primitive container
    request_transportation_t *transportation; //model
    char *departure_time; //date time
    list_t *properties; //nonprimitive container
    request_range_full_t *range; //model

} request_routes_departure_search_t;

request_routes_departure_search_t *request_routes_departure_search_create(
    char *id,
    char *departure_location_id,
    list_t *arrival_location_ids,
    request_transportation_t *transportation,
    char *departure_time,
    list_t *properties,
    request_range_full_t *range
);

void request_routes_departure_search_free(request_routes_departure_search_t *request_routes_departure_search);

request_routes_departure_search_t *request_routes_departure_search_parseFromJSON(cJSON *request_routes_departure_searchJSON);

cJSON *request_routes_departure_search_convertToJSON(request_routes_departure_search_t *request_routes_departure_search);

#endif /* _request_routes_departure_search_H_ */

