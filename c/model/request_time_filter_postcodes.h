/*
 * request_time_filter_postcodes.h
 *
 * 
 */

#ifndef _request_time_filter_postcodes_H_
#define _request_time_filter_postcodes_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_time_filter_postcodes_arrival_search.h"
#include "request_time_filter_postcodes_departure_search.h"




typedef struct request_time_filter_postcodes_t {
        list_t *departure_searches; //nonprimitive container
        list_t *arrival_searches; //nonprimitive container

} request_time_filter_postcodes_t;

request_time_filter_postcodes_t *request_time_filter_postcodes_create(
        list_t *departure_searches,
        list_t *arrival_searches
);

void request_time_filter_postcodes_free(request_time_filter_postcodes_t *request_time_filter_postcodes);

request_time_filter_postcodes_t *request_time_filter_postcodes_parseFromJSON(char *jsonString);

cJSON *request_time_filter_postcodes_convertToJSON(request_time_filter_postcodes_t *request_time_filter_postcodes);

#endif /* _request_time_filter_postcodes_H_ */

