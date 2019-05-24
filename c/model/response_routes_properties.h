/*
 * response_routes_properties.h
 *
 * 
 */

#ifndef _response_routes_properties_H_
#define _response_routes_properties_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_fares.h"
#include "response_route.h"



typedef struct response_routes_properties_t {
    int travel_time; //numeric
    int distance; //numeric
    response_fares_t *fares; //model
    response_route_t *route; //model

} response_routes_properties_t;

response_routes_properties_t *response_routes_properties_create(
    int travel_time,
    int distance,
    response_fares_t *fares,
    response_route_t *route
);

void response_routes_properties_free(response_routes_properties_t *response_routes_properties);

response_routes_properties_t *response_routes_properties_parseFromJSON(cJSON *response_routes_propertiesJSON);

cJSON *response_routes_properties_convertToJSON(response_routes_properties_t *response_routes_properties);

#endif /* _response_routes_properties_H_ */

