/*
 * response_supported_location.h
 *
 * 
 */

#ifndef _response_supported_location_H_
#define _response_supported_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_supported_location_t response_supported_location_t;




typedef struct response_supported_location_t {
    char *id; // string
    char *map_name; // string

} response_supported_location_t;

response_supported_location_t *response_supported_location_create(
    char *id,
    char *map_name
);

void response_supported_location_free(response_supported_location_t *response_supported_location);

response_supported_location_t *response_supported_location_parseFromJSON(cJSON *response_supported_locationJSON);

cJSON *response_supported_location_convertToJSON(response_supported_location_t *response_supported_location);

#endif /* _response_supported_location_H_ */

