/*
 * request_time_filter_departure_search.h
 *
 * 
 */

#ifndef _request_time_filter_departure_search_H_
#define _request_time_filter_departure_search_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_range_full.h"
#include "request_time_filter_property.h"
#include "request_transportation.h"




typedef struct request_time_filter_departure_search_t {
        char *id; //no enum string
        char *departure_location_id; //no enum string
        list_t *arrival_location_ids; //primitive container
        request_transportation_t *transportation; //nonprimitive
        int travel_time; //numeric
        char *departure_time; //date time string
        list_t *properties; //nonprimitive container
        request_range_full_t *range; //nonprimitive

} request_time_filter_departure_search_t;

request_time_filter_departure_search_t *request_time_filter_departure_search_create(
        char *id,
        char *departure_location_id,
        list_t *arrival_location_ids,
        request_transportation_t *transportation,
        int travel_time,
        char *departure_time,
        list_t *properties,
        request_range_full_t *range
);

void request_time_filter_departure_search_free(request_time_filter_departure_search_t *request_time_filter_departure_search);

request_time_filter_departure_search_t *request_time_filter_departure_search_parseFromJSON(char *jsonString);

cJSON *request_time_filter_departure_search_convertToJSON(request_time_filter_departure_search_t *request_time_filter_departure_search);

#endif /* _request_time_filter_departure_search_H_ */

