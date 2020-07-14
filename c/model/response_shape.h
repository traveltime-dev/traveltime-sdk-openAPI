/*
 * response_shape.h
 *
 * 
 */

#ifndef _response_shape_H_
#define _response_shape_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_shape_t response_shape_t;

#include "coords.h"



typedef struct response_shape_t {
    list_t *shell; //nonprimitive container
    list_t *holes; //primitive container

} response_shape_t;

response_shape_t *response_shape_create(
    list_t *shell,
    list_t *holes
);

void response_shape_free(response_shape_t *response_shape);

response_shape_t *response_shape_parseFromJSON(cJSON *response_shapeJSON);

cJSON *response_shape_convertToJSON(response_shape_t *response_shape);

#endif /* _response_shape_H_ */

