/*
 * response_time_map.h
 *
 * 
 */

#ifndef _response_time_map_H_
#define _response_time_map_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_map_result.h"




typedef struct response_time_map_t {
        list_t *results; //nonprimitive container

} response_time_map_t;

response_time_map_t *response_time_map_create(
        list_t *results
);

void response_time_map_free(response_time_map_t *response_time_map);

response_time_map_t *response_time_map_parseFromJSON(char *jsonString);

cJSON *response_time_map_convertToJSON(response_time_map_t *response_time_map);

#endif /* _response_time_map_H_ */

