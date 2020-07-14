/*
 * response_time_filter_postcodes.h
 *
 * 
 */

#ifndef _response_time_filter_postcodes_H_
#define _response_time_filter_postcodes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_postcodes_t response_time_filter_postcodes_t;

#include "response_time_filter_postcodes_result.h"



typedef struct response_time_filter_postcodes_t {
    list_t *results; //nonprimitive container

} response_time_filter_postcodes_t;

response_time_filter_postcodes_t *response_time_filter_postcodes_create(
    list_t *results
);

void response_time_filter_postcodes_free(response_time_filter_postcodes_t *response_time_filter_postcodes);

response_time_filter_postcodes_t *response_time_filter_postcodes_parseFromJSON(cJSON *response_time_filter_postcodesJSON);

cJSON *response_time_filter_postcodes_convertToJSON(response_time_filter_postcodes_t *response_time_filter_postcodes);

#endif /* _response_time_filter_postcodes_H_ */

