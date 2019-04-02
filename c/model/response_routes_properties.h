/*
 * response_routes_properties.h
 *
 * 
 */

#ifndef _response_routes_properties_H_
#define _response_routes_properties_H_

#include <string.h>
#include "cJSON.h"
#include "response_fares.h"
#include "response_route.h"




typedef struct response_routes_properties_t {
        int travel_time; //numeric
        int distance; //numeric
        response_fares_t *fares; //nonprimitive
        response_route_t *route; //nonprimitive

} response_routes_properties_t;

response_routes_properties_t *response_routes_properties_create(
        int travel_time,
        int distance,
        response_fares_t *fares,
        response_route_t *route
);

void response_routes_properties_free(response_routes_properties_t *response_routes_properties);

response_routes_properties_t *response_routes_properties_parseFromJSON(char *jsonString);

cJSON *response_routes_properties_convertToJSON(response_routes_properties_t *response_routes_properties);

#endif /* _response_routes_properties_H_ */

