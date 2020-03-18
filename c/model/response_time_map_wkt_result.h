/*
 * response_time_map_wkt_result.h
 *
 * 
 */

#ifndef _response_time_map_wkt_result_H_
#define _response_time_map_wkt_result_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_time_map_properties.h"



typedef struct response_time_map_wkt_result_t {
    char *search_id; // string
    char *shape; // string
    struct response_time_map_properties_t *properties; //model

} response_time_map_wkt_result_t;

response_time_map_wkt_result_t *response_time_map_wkt_result_create(
    char *search_id,
    char *shape,
    response_time_map_properties_t *properties
);

void response_time_map_wkt_result_free(response_time_map_wkt_result_t *response_time_map_wkt_result);

response_time_map_wkt_result_t *response_time_map_wkt_result_parseFromJSON(cJSON *response_time_map_wkt_resultJSON);

cJSON *response_time_map_wkt_result_convertToJSON(response_time_map_wkt_result_t *response_time_map_wkt_result);

#endif /* _response_time_map_wkt_result_H_ */

