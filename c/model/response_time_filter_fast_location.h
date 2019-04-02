/*
 * response_time_filter_fast_location.h
 *
 * 
 */

#ifndef _response_time_filter_fast_location_H_
#define _response_time_filter_fast_location_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_fast_properties.h"




typedef struct response_time_filter_fast_location_t {
        char *id; //no enum string
        list_t *properties; //nonprimitive container

} response_time_filter_fast_location_t;

response_time_filter_fast_location_t *response_time_filter_fast_location_create(
        char *id,
        list_t *properties
);

void response_time_filter_fast_location_free(response_time_filter_fast_location_t *response_time_filter_fast_location);

response_time_filter_fast_location_t *response_time_filter_fast_location_parseFromJSON(char *jsonString);

cJSON *response_time_filter_fast_location_convertToJSON(response_time_filter_fast_location_t *response_time_filter_fast_location);

#endif /* _response_time_filter_fast_location_H_ */

