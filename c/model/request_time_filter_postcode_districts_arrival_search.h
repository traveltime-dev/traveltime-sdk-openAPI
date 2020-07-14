/*
 * request_time_filter_postcode_districts_arrival_search.h
 *
 * 
 */

#ifndef _request_time_filter_postcode_districts_arrival_search_H_
#define _request_time_filter_postcode_districts_arrival_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_time_filter_postcode_districts_arrival_search_t request_time_filter_postcode_districts_arrival_search_t;

#include "request_range_full.h"
#include "request_time_filter_postcode_districts_property.h"
#include "request_transportation.h"

// Enum  for request_time_filter_postcode_districts_arrival_search

typedef enum  { traveltime_api_request_time_filter_postcode_districts_arrival_search__NULL = 0, traveltime_api_request_time_filter_postcode_districts_arrival_search__travel_time_reachable, traveltime_api_request_time_filter_postcode_districts_arrival_search__travel_time_all, traveltime_api_request_time_filter_postcode_districts_arrival_search__coverage } traveltime_api_request_time_filter_postcode_districts_arrival_search__e;

char* request_time_filter_postcode_districts_arrival_search_properties_ToString(traveltime_api_request_time_filter_postcode_districts_arrival_search__e properties);

traveltime_api_request_time_filter_postcode_districts_arrival_search__e request_time_filter_postcode_districts_arrival_search_properties_FromString(char* properties);



typedef struct request_time_filter_postcode_districts_arrival_search_t {
    char *id; // string
    struct request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *arrival_time; //date time
    double reachable_postcodes_threshold; //numeric
    list_t *properties; //nonprimitive container
    struct request_range_full_t *range; //model

} request_time_filter_postcode_districts_arrival_search_t;

request_time_filter_postcode_districts_arrival_search_t *request_time_filter_postcode_districts_arrival_search_create(
    char *id,
    request_transportation_t *transportation,
    int travel_time,
    char *arrival_time,
    double reachable_postcodes_threshold,
    list_t *properties,
    request_range_full_t *range
);

void request_time_filter_postcode_districts_arrival_search_free(request_time_filter_postcode_districts_arrival_search_t *request_time_filter_postcode_districts_arrival_search);

request_time_filter_postcode_districts_arrival_search_t *request_time_filter_postcode_districts_arrival_search_parseFromJSON(cJSON *request_time_filter_postcode_districts_arrival_searchJSON);

cJSON *request_time_filter_postcode_districts_arrival_search_convertToJSON(request_time_filter_postcode_districts_arrival_search_t *request_time_filter_postcode_districts_arrival_search);

#endif /* _request_time_filter_postcode_districts_arrival_search_H_ */

