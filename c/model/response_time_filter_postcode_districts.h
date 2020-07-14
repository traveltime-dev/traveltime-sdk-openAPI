/*
 * response_time_filter_postcode_districts.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_districts_H_
#define _response_time_filter_postcode_districts_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_postcode_districts_t response_time_filter_postcode_districts_t;

#include "response_time_filter_postcode_districts_result.h"



typedef struct response_time_filter_postcode_districts_t {
    list_t *results; //nonprimitive container

} response_time_filter_postcode_districts_t;

response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_create(
    list_t *results
);

void response_time_filter_postcode_districts_free(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts);

response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_parseFromJSON(cJSON *response_time_filter_postcode_districtsJSON);

cJSON *response_time_filter_postcode_districts_convertToJSON(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts);

#endif /* _response_time_filter_postcode_districts_H_ */

