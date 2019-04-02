/*
 * request_routes_property.h
 *
 * 
 */

#ifndef _request_routes_property_H_
#define _request_routes_property_H_

#include <string.h>
#include "cJSON.h"




typedef struct request_routes_property_t {

} request_routes_property_t;

request_routes_property_t *request_routes_property_create(
);

void request_routes_property_free(request_routes_property_t *request_routes_property);

request_routes_property_t *request_routes_property_parseFromJSON(char *jsonString);

cJSON *request_routes_property_convertToJSON(request_routes_property_t *request_routes_property);

#endif /* _request_routes_property_H_ */

