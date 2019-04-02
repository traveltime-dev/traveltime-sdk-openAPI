/*
 * request_routes.h
 *
 * 
 */

#ifndef _request_routes_H_
#define _request_routes_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_location.h"
#include "request_routes_arrival_search.h"
#include "request_routes_departure_search.h"




typedef struct request_routes_t {
        list_t *locations; //nonprimitive container
        list_t *departure_searches; //nonprimitive container
        list_t *arrival_searches; //nonprimitive container

} request_routes_t;

request_routes_t *request_routes_create(
        list_t *locations,
        list_t *departure_searches,
        list_t *arrival_searches
);

void request_routes_free(request_routes_t *request_routes);

request_routes_t *request_routes_parseFromJSON(char *jsonString);

cJSON *request_routes_convertToJSON(request_routes_t *request_routes);

#endif /* _request_routes_H_ */

