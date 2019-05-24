/*
 * request_time_filter.h
 *
 * 
 */

#ifndef _request_time_filter_H_
#define _request_time_filter_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_location.h"
#include "request_time_filter_arrival_search.h"
#include "request_time_filter_departure_search.h"



typedef struct request_time_filter_t {
    list_t *locations; //nonprimitive container
    list_t *departure_searches; //nonprimitive container
    list_t *arrival_searches; //nonprimitive container

} request_time_filter_t;

request_time_filter_t *request_time_filter_create(
    list_t *locations,
    list_t *departure_searches,
    list_t *arrival_searches
);

void request_time_filter_free(request_time_filter_t *request_time_filter);

request_time_filter_t *request_time_filter_parseFromJSON(cJSON *request_time_filterJSON);

cJSON *request_time_filter_convertToJSON(request_time_filter_t *request_time_filter);

#endif /* _request_time_filter_H_ */

