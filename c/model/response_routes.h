/*
 * response_routes.h
 *
 * 
 */

#ifndef _response_routes_H_
#define _response_routes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_routes_t response_routes_t;

#include "response_routes_result.h"



typedef struct response_routes_t {
    list_t *results; //nonprimitive container

} response_routes_t;

response_routes_t *response_routes_create(
    list_t *results
);

void response_routes_free(response_routes_t *response_routes);

response_routes_t *response_routes_parseFromJSON(cJSON *response_routesJSON);

cJSON *response_routes_convertToJSON(response_routes_t *response_routes);

#endif /* _response_routes_H_ */

