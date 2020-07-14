/*
 * response_supported_locations.h
 *
 * 
 */

#ifndef _response_supported_locations_H_
#define _response_supported_locations_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_supported_locations_t response_supported_locations_t;

#include "response_supported_location.h"



typedef struct response_supported_locations_t {
    list_t *locations; //nonprimitive container
    list_t *unsupported_locations; //primitive container

} response_supported_locations_t;

response_supported_locations_t *response_supported_locations_create(
    list_t *locations,
    list_t *unsupported_locations
);

void response_supported_locations_free(response_supported_locations_t *response_supported_locations);

response_supported_locations_t *response_supported_locations_parseFromJSON(cJSON *response_supported_locationsJSON);

cJSON *response_supported_locations_convertToJSON(response_supported_locations_t *response_supported_locations);

#endif /* _response_supported_locations_H_ */

