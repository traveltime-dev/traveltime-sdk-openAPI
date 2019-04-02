/*
 * response_routes_result.h
 *
 * 
 */

#ifndef _response_routes_result_H_
#define _response_routes_result_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_routes_location.h"




typedef struct response_routes_result_t {
        char *search_id; //no enum string
        list_t *locations; //nonprimitive container
        list_t *unreachable; //primitive container

} response_routes_result_t;

response_routes_result_t *response_routes_result_create(
        char *search_id,
        list_t *locations,
        list_t *unreachable
);

void response_routes_result_free(response_routes_result_t *response_routes_result);

response_routes_result_t *response_routes_result_parseFromJSON(char *jsonString);

cJSON *response_routes_result_convertToJSON(response_routes_result_t *response_routes_result);

#endif /* _response_routes_result_H_ */

