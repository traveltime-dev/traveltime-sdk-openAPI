/*
 * response_geocoding_geometry.h
 *
 * 
 */

#ifndef _response_geocoding_geometry_H_
#define _response_geocoding_geometry_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct response_geocoding_geometry_t {
    char *type; // string
    list_t *coordinates; //primitive container

} response_geocoding_geometry_t;

response_geocoding_geometry_t *response_geocoding_geometry_create(
    char *type,
    list_t *coordinates
);

void response_geocoding_geometry_free(response_geocoding_geometry_t *response_geocoding_geometry);

response_geocoding_geometry_t *response_geocoding_geometry_parseFromJSON(cJSON *response_geocoding_geometryJSON);

cJSON *response_geocoding_geometry_convertToJSON(response_geocoding_geometry_t *response_geocoding_geometry);

#endif /* _response_geocoding_geometry_H_ */

