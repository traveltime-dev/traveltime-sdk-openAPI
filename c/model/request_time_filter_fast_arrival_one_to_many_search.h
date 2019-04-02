/*
 * request_time_filter_fast_arrival_one_to_many_search.h
 *
 * 
 */

#ifndef _request_time_filter_fast_arrival_one_to_many_search_H_
#define _request_time_filter_fast_arrival_one_to_many_search_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_arrival_time_period.h"
#include "request_time_filter_fast_property.h"
#include "request_transportation_fast.h"




typedef struct request_time_filter_fast_arrival_one_to_many_search_t {
        char *id; //no enum string
        char *departure_location_id; //no enum string
        list_t *arrival_location_ids; //primitive container
        request_transportation_fast_t *transportation; //nonprimitive
        int travel_time; //numeric
        request_arrival_time_period_t *arrival_time_period; //nonprimitive
        list_t *properties; //nonprimitive container

} request_time_filter_fast_arrival_one_to_many_search_t;

request_time_filter_fast_arrival_one_to_many_search_t *request_time_filter_fast_arrival_one_to_many_search_create(
        char *id,
        char *departure_location_id,
        list_t *arrival_location_ids,
        request_transportation_fast_t *transportation,
        int travel_time,
        request_arrival_time_period_t *arrival_time_period,
        list_t *properties
);

void request_time_filter_fast_arrival_one_to_many_search_free(request_time_filter_fast_arrival_one_to_many_search_t *request_time_filter_fast_arrival_one_to_many_search);

request_time_filter_fast_arrival_one_to_many_search_t *request_time_filter_fast_arrival_one_to_many_search_parseFromJSON(char *jsonString);

cJSON *request_time_filter_fast_arrival_one_to_many_search_convertToJSON(request_time_filter_fast_arrival_one_to_many_search_t *request_time_filter_fast_arrival_one_to_many_search);

#endif /* _request_time_filter_fast_arrival_one_to_many_search_H_ */

