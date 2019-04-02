/*
 * request_routes_departure_search.h
 *
 * 
 */

#ifndef _request_routes_departure_search_H_
#define _request_routes_departure_search_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_range_full.h"
#include "request_routes_property.h"
#include "request_transportation.h"




typedef struct request_routes_departure_search_t {
        char *id; //no enum string
        char *departure_location_id; //no enum string
        list_t *arrival_location_ids; //primitive container
        request_transportation_t *transportation; //nonprimitive
        char *departure_time; //date time string
        list_t *properties; //nonprimitive container
        request_range_full_t *range; //nonprimitive

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

request_routes_departure_search_t *request_routes_departure_search_parseFromJSON(char *jsonString);

cJSON *request_routes_departure_search_convertToJSON(request_routes_departure_search_t *request_routes_departure_search);

#endif /* _request_routes_departure_search_H_ */

