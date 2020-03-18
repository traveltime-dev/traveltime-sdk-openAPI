/*
 * request_time_filter_departure_search.h
 *
 * 
 */

#ifndef _request_time_filter_departure_search_H_
#define _request_time_filter_departure_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_range_full.h"
#include "request_time_filter_property.h"
#include "request_transportation.h"

                    typedef enum  {  travel_time, distance, distance_breakdown, fares, route } properties_e;

            char* properties_ToString(properties_e properties);

            properties_e properties_FromString(char* properties);


typedef struct request_time_filter_departure_search_t {
    char *id; // string
    char *departure_location_id; // string
    list_t *arrival_location_ids; //primitive container
    struct request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *departure_time; //date time
    list_t *properties; //nonprimitive container
    struct request_range_full_t *range; //model

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

request_time_filter_departure_search_t *request_time_filter_departure_search_parseFromJSON(cJSON *request_time_filter_departure_searchJSON);

cJSON *request_time_filter_departure_search_convertToJSON(request_time_filter_departure_search_t *request_time_filter_departure_search);

#endif /* _request_time_filter_departure_search_H_ */

