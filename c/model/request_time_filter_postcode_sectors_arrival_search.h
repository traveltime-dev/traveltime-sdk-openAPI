/*
 * request_time_filter_postcode_sectors_arrival_search.h
 *
 * 
 */

#ifndef _request_time_filter_postcode_sectors_arrival_search_H_
#define _request_time_filter_postcode_sectors_arrival_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_range_full.h"
#include "request_time_filter_postcode_sectors_property.h"
#include "request_transportation.h"



typedef struct request_time_filter_postcode_sectors_arrival_search_t {
    char *id; // string
    request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *arrival_time; //date time
    double reachable_postcodes_threshold; //numeric
    list_t *properties; //nonprimitive container
    request_range_full_t *range; //model

} request_time_filter_postcode_sectors_arrival_search_t;

request_time_filter_postcode_sectors_arrival_search_t *request_time_filter_postcode_sectors_arrival_search_create(
    char *id,
    request_transportation_t *transportation,
    int travel_time,
    char *arrival_time,
    double reachable_postcodes_threshold,
    list_t *properties,
    request_range_full_t *range
);

void request_time_filter_postcode_sectors_arrival_search_free(request_time_filter_postcode_sectors_arrival_search_t *request_time_filter_postcode_sectors_arrival_search);

request_time_filter_postcode_sectors_arrival_search_t *request_time_filter_postcode_sectors_arrival_search_parseFromJSON(cJSON *request_time_filter_postcode_sectors_arrival_searchJSON);

cJSON *request_time_filter_postcode_sectors_arrival_search_convertToJSON(request_time_filter_postcode_sectors_arrival_search_t *request_time_filter_postcode_sectors_arrival_search);

#endif /* _request_time_filter_postcode_sectors_arrival_search_H_ */

