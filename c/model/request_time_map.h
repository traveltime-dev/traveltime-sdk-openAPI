/*
 * request_time_map.h
 *
 * 
 */

#ifndef _request_time_map_H_
#define _request_time_map_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "request_time_map_arrival_search.h"
#include "request_time_map_departure_search.h"
#include "request_union_on_intersection.h"



typedef struct request_time_map_t {
    list_t *departure_searches; //nonprimitive container
    list_t *arrival_searches; //nonprimitive container
    list_t *unions; //nonprimitive container
    list_t *intersections; //nonprimitive container

} request_time_map_t;

request_time_map_t *request_time_map_create(
    list_t *departure_searches,
    list_t *arrival_searches,
    list_t *unions,
    list_t *intersections
);

void request_time_map_free(request_time_map_t *request_time_map);

request_time_map_t *request_time_map_parseFromJSON(cJSON *request_time_mapJSON);

cJSON *request_time_map_convertToJSON(request_time_map_t *request_time_map);

#endif /* _request_time_map_H_ */

