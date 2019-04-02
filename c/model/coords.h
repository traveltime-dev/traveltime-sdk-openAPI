/*
 * coords.h
 *
 * 
 */

#ifndef _coords_H_
#define _coords_H_

#include <string.h>
#include "cJSON.h"




typedef struct coords_t {
        double lat; //numeric
        double lng; //numeric

} coords_t;

coords_t *coords_create(
        double lat,
        double lng
);

void coords_free(coords_t *coords);

coords_t *coords_parseFromJSON(char *jsonString);

cJSON *coords_convertToJSON(coords_t *coords);

#endif /* _coords_H_ */

