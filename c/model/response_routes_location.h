/*
 * response_routes_location.h
 *
 * 
 */

#ifndef _response_routes_location_H_
#define _response_routes_location_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_routes_properties.h"




typedef struct response_routes_location_t {
        char *id; //no enum string
        list_t *properties; //nonprimitive container

} response_routes_location_t;

response_routes_location_t *response_routes_location_create(
        char *id,
        list_t *properties
);

void response_routes_location_free(response_routes_location_t *response_routes_location);

response_routes_location_t *response_routes_location_parseFromJSON(char *jsonString);

cJSON *response_routes_location_convertToJSON(response_routes_location_t *response_routes_location);

#endif /* _response_routes_location_H_ */

