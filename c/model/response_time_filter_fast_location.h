/*
 * response_time_filter_fast_location.h
 *
 * 
 */

#ifndef _response_time_filter_fast_location_H_
#define _response_time_filter_fast_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_fast_location_t response_time_filter_fast_location_t;

#include "response_time_filter_fast_properties.h"



typedef struct response_time_filter_fast_location_t {
    char *id; // string
    list_t *properties; //nonprimitive container

} response_time_filter_fast_location_t;

response_time_filter_fast_location_t *response_time_filter_fast_location_create(
    char *id,
    list_t *properties
);

void response_time_filter_fast_location_free(response_time_filter_fast_location_t *response_time_filter_fast_location);

response_time_filter_fast_location_t *response_time_filter_fast_location_parseFromJSON(cJSON *response_time_filter_fast_locationJSON);

cJSON *response_time_filter_fast_location_convertToJSON(response_time_filter_fast_location_t *response_time_filter_fast_location);

#endif /* _response_time_filter_fast_location_H_ */

