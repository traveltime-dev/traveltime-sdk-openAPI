/*
 * response_supported_location.h
 *
 * 
 */

#ifndef _response_supported_location_H_
#define _response_supported_location_H_

#include <string.h>
#include "cJSON.h"




typedef struct response_supported_location_t {
        char *id; //no enum string
        char *map_name; //no enum string

} response_supported_location_t;

response_supported_location_t *response_supported_location_create(
        char *id,
        char *map_name
);

void response_supported_location_free(response_supported_location_t *response_supported_location);

response_supported_location_t *response_supported_location_parseFromJSON(char *jsonString);

cJSON *response_supported_location_convertToJSON(response_supported_location_t *response_supported_location);

#endif /* _response_supported_location_H_ */

