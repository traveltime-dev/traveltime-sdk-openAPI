/*
 * response_time_filter_fast.h
 *
 * 
 */

#ifndef _response_time_filter_fast_H_
#define _response_time_filter_fast_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_fast_result.h"




typedef struct response_time_filter_fast_t {
        list_t *results; //nonprimitive container

} response_time_filter_fast_t;

response_time_filter_fast_t *response_time_filter_fast_create(
        list_t *results
);

void response_time_filter_fast_free(response_time_filter_fast_t *response_time_filter_fast);

response_time_filter_fast_t *response_time_filter_fast_parseFromJSON(char *jsonString);

cJSON *response_time_filter_fast_convertToJSON(response_time_filter_fast_t *response_time_filter_fast);

#endif /* _response_time_filter_fast_H_ */

