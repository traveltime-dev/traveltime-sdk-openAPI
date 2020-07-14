/*
 * response_time_filter.h
 *
 * 
 */

#ifndef _response_time_filter_H_
#define _response_time_filter_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_t response_time_filter_t;

#include "response_time_filter_result.h"



typedef struct response_time_filter_t {
    list_t *results; //nonprimitive container

} response_time_filter_t;

response_time_filter_t *response_time_filter_create(
    list_t *results
);

void response_time_filter_free(response_time_filter_t *response_time_filter);

response_time_filter_t *response_time_filter_parseFromJSON(cJSON *response_time_filterJSON);

cJSON *response_time_filter_convertToJSON(response_time_filter_t *response_time_filter);

#endif /* _response_time_filter_H_ */

