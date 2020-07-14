/*
 * response_routes_location.h
 *
 * 
 */

#ifndef _response_routes_location_H_
#define _response_routes_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_routes_location_t response_routes_location_t;

#include "response_routes_properties.h"



typedef struct response_routes_location_t {
    char *id; // string
    list_t *properties; //nonprimitive container

} response_routes_location_t;

response_routes_location_t *response_routes_location_create(
    char *id,
    list_t *properties
);

void response_routes_location_free(response_routes_location_t *response_routes_location);

response_routes_location_t *response_routes_location_parseFromJSON(cJSON *response_routes_locationJSON);

cJSON *response_routes_location_convertToJSON(response_routes_location_t *response_routes_location);

#endif /* _response_routes_location_H_ */

