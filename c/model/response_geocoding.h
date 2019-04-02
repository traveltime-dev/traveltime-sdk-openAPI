/*
 * response_geocoding.h
 *
 * 
 */

#ifndef _response_geocoding_H_
#define _response_geocoding_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_geocoding_geo_json_feature.h"




typedef struct response_geocoding_t {
        char *type; //no enum string
        list_t *features; //nonprimitive container

} response_geocoding_t;

response_geocoding_t *response_geocoding_create(
        char *type,
        list_t *features
);

void response_geocoding_free(response_geocoding_t *response_geocoding);

response_geocoding_t *response_geocoding_parseFromJSON(char *jsonString);

cJSON *response_geocoding_convertToJSON(response_geocoding_t *response_geocoding);

#endif /* _response_geocoding_H_ */

