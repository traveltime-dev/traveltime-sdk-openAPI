/*
 * request_time_filter_fast_arrival_many_to_one_search.h
 *
 * 
 */

#ifndef _request_time_filter_fast_arrival_many_to_one_search_H_
#define _request_time_filter_fast_arrival_many_to_one_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_arrival_time_period.h"
#include "request_time_filter_fast_property.h"
#include "request_transportation_fast.h"

// Enum  for request_time_filter_fast_arrival_many_to_one_search

typedef enum  { traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__NULL = 0, traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__weekday_morning } traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e;

char* request_time_filter_fast_arrival_many_to_one_search_arrival_time_period_ToString(traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e arrival_time_period);

traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e request_time_filter_fast_arrival_many_to_one_search_arrival_time_period_FromString(char* arrival_time_period);

// Enum  for request_time_filter_fast_arrival_many_to_one_search

typedef enum  { traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__NULL = 0, traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__travel_time, traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__fares } traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e;

char* request_time_filter_fast_arrival_many_to_one_search_properties_ToString(traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e properties);

traveltime_platform_api_request_time_filter_fast_arrival_many_to_one_search__e request_time_filter_fast_arrival_many_to_one_search_properties_FromString(char* properties);



typedef struct request_time_filter_fast_arrival_many_to_one_search_t {
    char *id; // string
    char *arrival_location_id; // string
    list_t *departure_location_ids; //primitive container
    struct request_transportation_fast_t *transportation; //model
    int travel_time; //numeric
    list_t *properties; //nonprimitive container

} request_time_filter_fast_arrival_many_to_one_search_t;

request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_create(
    char *id,
    char *arrival_location_id,
    list_t *departure_location_ids,
    request_transportation_fast_t *transportation,
    int travel_time,
    list_t *properties
);

void request_time_filter_fast_arrival_many_to_one_search_free(request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search);

request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_parseFromJSON(cJSON *request_time_filter_fast_arrival_many_to_one_searchJSON);

cJSON *request_time_filter_fast_arrival_many_to_one_search_convertToJSON(request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search);

#endif /* _request_time_filter_fast_arrival_many_to_one_search_H_ */

