/*
 * response_time_filter_location.h
 *
 * 
 */

#ifndef _response_time_filter_location_H_
#define _response_time_filter_location_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_properties.h"




typedef struct response_time_filter_location_t {
        char *id; //no enum string
        list_t *properties; //nonprimitive container

} response_time_filter_location_t;

response_time_filter_location_t *response_time_filter_location_create(
        char *id,
        list_t *properties
);

void response_time_filter_location_free(response_time_filter_location_t *response_time_filter_location);

response_time_filter_location_t *response_time_filter_location_parseFromJSON(char *jsonString);

cJSON *response_time_filter_location_convertToJSON(response_time_filter_location_t *response_time_filter_location);

#endif /* _response_time_filter_location_H_ */

