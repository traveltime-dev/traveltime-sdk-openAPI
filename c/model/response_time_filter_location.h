/*
 * response_time_filter_location.h
 *
 * 
 */

#ifndef _response_time_filter_location_H_
#define _response_time_filter_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_location_t response_time_filter_location_t;

#include "response_time_filter_properties.h"



typedef struct response_time_filter_location_t {
    char *id; // string
    list_t *properties; //nonprimitive container

} response_time_filter_location_t;

response_time_filter_location_t *response_time_filter_location_create(
    char *id,
    list_t *properties
);

void response_time_filter_location_free(response_time_filter_location_t *response_time_filter_location);

response_time_filter_location_t *response_time_filter_location_parseFromJSON(cJSON *response_time_filter_locationJSON);

cJSON *response_time_filter_location_convertToJSON(response_time_filter_location_t *response_time_filter_location);

#endif /* _response_time_filter_location_H_ */

