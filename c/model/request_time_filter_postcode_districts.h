/*
 * request_time_filter_postcode_districts.h
 *
 * 
 */

#ifndef _request_time_filter_postcode_districts_H_
#define _request_time_filter_postcode_districts_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_time_filter_postcode_districts_t request_time_filter_postcode_districts_t;

#include "request_time_filter_postcode_districts_arrival_search.h"
#include "request_time_filter_postcode_districts_departure_search.h"



typedef struct request_time_filter_postcode_districts_t {
    list_t *departure_searches; //nonprimitive container
    list_t *arrival_searches; //nonprimitive container

} request_time_filter_postcode_districts_t;

request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_create(
    list_t *departure_searches,
    list_t *arrival_searches
);

void request_time_filter_postcode_districts_free(request_time_filter_postcode_districts_t *request_time_filter_postcode_districts);

request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_parseFromJSON(cJSON *request_time_filter_postcode_districtsJSON);

cJSON *request_time_filter_postcode_districts_convertToJSON(request_time_filter_postcode_districts_t *request_time_filter_postcode_districts);

#endif /* _request_time_filter_postcode_districts_H_ */

