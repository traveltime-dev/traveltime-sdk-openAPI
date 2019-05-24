/*
 * request_time_filter_fast_arrival_searches.h
 *
 * 
 */

#ifndef _request_time_filter_fast_arrival_searches_H_
#define _request_time_filter_fast_arrival_searches_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_time_filter_fast_arrival_many_to_one_search.h"
#include "request_time_filter_fast_arrival_one_to_many_search.h"



typedef struct request_time_filter_fast_arrival_searches_t {
    list_t *many_to_one; //nonprimitive container
    list_t *one_to_many; //nonprimitive container

} request_time_filter_fast_arrival_searches_t;

request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_create(
    list_t *many_to_one,
    list_t *one_to_many
);

void request_time_filter_fast_arrival_searches_free(request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches);

request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_parseFromJSON(cJSON *request_time_filter_fast_arrival_searchesJSON);

cJSON *request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches);

#endif /* _request_time_filter_fast_arrival_searches_H_ */

