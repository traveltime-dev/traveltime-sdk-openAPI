/*
 * response_route.h
 *
 * 
 */

#ifndef _response_route_H_
#define _response_route_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_route_part.h"




typedef struct response_route_t {
        char *departure_time; //date time string
        char *arrival_time; //date time string
        list_t *parts; //nonprimitive container

} response_route_t;

response_route_t *response_route_create(
        char *departure_time,
        char *arrival_time,
        list_t *parts
);

void response_route_free(response_route_t *response_route);

response_route_t *response_route_parseFromJSON(char *jsonString);

cJSON *response_route_convertToJSON(response_route_t *response_route);

#endif /* _response_route_H_ */

