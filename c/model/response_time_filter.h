/*
 * response_time_filter.h
 *
 * 
 */

#ifndef _response_time_filter_H_
#define _response_time_filter_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_result.h"




typedef struct response_time_filter_t {
        list_t *results; //nonprimitive container

} response_time_filter_t;

response_time_filter_t *response_time_filter_create(
        list_t *results
);

void response_time_filter_free(response_time_filter_t *response_time_filter);

response_time_filter_t *response_time_filter_parseFromJSON(char *jsonString);

cJSON *response_time_filter_convertToJSON(response_time_filter_t *response_time_filter);

#endif /* _response_time_filter_H_ */

