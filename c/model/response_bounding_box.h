/*
 * response_bounding_box.h
 *
 * 
 */

#ifndef _response_bounding_box_H_
#define _response_bounding_box_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_box.h"



typedef struct response_bounding_box_t {
    struct response_box_t *envelope; //model
    list_t *boxes; //nonprimitive container

} response_bounding_box_t;

response_bounding_box_t *response_bounding_box_create(
    response_box_t *envelope,
    list_t *boxes
);

void response_bounding_box_free(response_bounding_box_t *response_bounding_box);

response_bounding_box_t *response_bounding_box_parseFromJSON(cJSON *response_bounding_boxJSON);

cJSON *response_bounding_box_convertToJSON(response_bounding_box_t *response_bounding_box);

#endif /* _response_bounding_box_H_ */

