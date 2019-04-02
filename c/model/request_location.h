/*
 * request_location.h
 *
 * 
 */

#ifndef _request_location_H_
#define _request_location_H_

#include <string.h>
#include "cJSON.h"
#include "coords.h"




typedef struct request_location_t {
        char *id; //no enum string
        coords_t *coords; //nonprimitive

} request_location_t;

request_location_t *request_location_create(
        char *id,
        coords_t *coords
);

void request_location_free(request_location_t *request_location);

request_location_t *request_location_parseFromJSON(char *jsonString);

cJSON *request_location_convertToJSON(request_location_t *request_location);

#endif /* _request_location_H_ */

