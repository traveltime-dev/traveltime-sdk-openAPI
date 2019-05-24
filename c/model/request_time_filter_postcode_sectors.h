/*
 * request_time_filter_postcode_sectors.h
 *
 * 
 */

#ifndef _request_time_filter_postcode_sectors_H_
#define _request_time_filter_postcode_sectors_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_time_filter_postcode_sectors_arrival_search.h"
#include "request_time_filter_postcode_sectors_departure_search.h"



typedef struct request_time_filter_postcode_sectors_t {
    list_t *departure_searches; //nonprimitive container
    list_t *arrival_searches; //nonprimitive container

} request_time_filter_postcode_sectors_t;

request_time_filter_postcode_sectors_t *request_time_filter_postcode_sectors_create(
    list_t *departure_searches,
    list_t *arrival_searches
);

void request_time_filter_postcode_sectors_free(request_time_filter_postcode_sectors_t *request_time_filter_postcode_sectors);

request_time_filter_postcode_sectors_t *request_time_filter_postcode_sectors_parseFromJSON(cJSON *request_time_filter_postcode_sectorsJSON);

cJSON *request_time_filter_postcode_sectors_convertToJSON(request_time_filter_postcode_sectors_t *request_time_filter_postcode_sectors);

#endif /* _request_time_filter_postcode_sectors_H_ */

