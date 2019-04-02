/*
 * request_supported_locations.h
 *
 * 
 */

#ifndef _request_supported_locations_H_
#define _request_supported_locations_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "request_location.h"




typedef struct request_supported_locations_t {
        list_t *locations; //nonprimitive container

} request_supported_locations_t;

request_supported_locations_t *request_supported_locations_create(
        list_t *locations
);

void request_supported_locations_free(request_supported_locations_t *request_supported_locations);

request_supported_locations_t *request_supported_locations_parseFromJSON(char *jsonString);

cJSON *request_supported_locations_convertToJSON(request_supported_locations_t *request_supported_locations);

#endif /* _request_supported_locations_H_ */

