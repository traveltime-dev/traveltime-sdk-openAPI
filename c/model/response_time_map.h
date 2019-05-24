/*
 * response_time_map.h
 *
 * 
 */

#ifndef _response_time_map_H_
#define _response_time_map_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_time_map_result.h"



typedef struct response_time_map_t {
    list_t *results; //nonprimitive container

} response_time_map_t;

response_time_map_t *response_time_map_create(
    list_t *results
);

void response_time_map_free(response_time_map_t *response_time_map);

response_time_map_t *response_time_map_parseFromJSON(cJSON *response_time_mapJSON);

cJSON *response_time_map_convertToJSON(response_time_map_t *response_time_map);

#endif /* _response_time_map_H_ */

