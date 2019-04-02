/*
 * response_bounding_box.h
 *
 * 
 */

#ifndef _response_bounding_box_H_
#define _response_bounding_box_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_box.h"




typedef struct response_bounding_box_t {
        response_box_t *envelope; //nonprimitive
        list_t *boxes; //nonprimitive container

} response_bounding_box_t;

response_bounding_box_t *response_bounding_box_create(
        response_box_t *envelope,
        list_t *boxes
);

void response_bounding_box_free(response_bounding_box_t *response_bounding_box);

response_bounding_box_t *response_bounding_box_parseFromJSON(char *jsonString);

cJSON *response_bounding_box_convertToJSON(response_bounding_box_t *response_bounding_box);

#endif /* _response_bounding_box_H_ */

