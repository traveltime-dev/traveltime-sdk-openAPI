/*
 * request_union_on_intersection.h
 *
 * 
 */

#ifndef _request_union_on_intersection_H_
#define _request_union_on_intersection_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct request_union_on_intersection_t {
    char *id; // string
    list_t *search_ids; //primitive container

} request_union_on_intersection_t;

request_union_on_intersection_t *request_union_on_intersection_create(
    char *id,
    list_t *search_ids
);

void request_union_on_intersection_free(request_union_on_intersection_t *request_union_on_intersection);

request_union_on_intersection_t *request_union_on_intersection_parseFromJSON(cJSON *request_union_on_intersectionJSON);

cJSON *request_union_on_intersection_convertToJSON(request_union_on_intersection_t *request_union_on_intersection);

#endif /* _request_union_on_intersection_H_ */

