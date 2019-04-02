/*
 * response_time_map_wkt.h
 *
 * 
 */

#ifndef _response_time_map_wkt_H_
#define _response_time_map_wkt_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_map_wkt_result.h"




typedef struct response_time_map_wkt_t {
        list_t *results; //nonprimitive container

} response_time_map_wkt_t;

response_time_map_wkt_t *response_time_map_wkt_create(
        list_t *results
);

void response_time_map_wkt_free(response_time_map_wkt_t *response_time_map_wkt);

response_time_map_wkt_t *response_time_map_wkt_parseFromJSON(char *jsonString);

cJSON *response_time_map_wkt_convertToJSON(response_time_map_wkt_t *response_time_map_wkt);

#endif /* _response_time_map_wkt_H_ */

