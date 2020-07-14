/*
 * response_time_map_result.h
 *
 * 
 */

#ifndef _response_time_map_result_H_
#define _response_time_map_result_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_map_result_t response_time_map_result_t;

#include "response_shape.h"
#include "response_time_map_properties.h"



typedef struct response_time_map_result_t {
    char *search_id; // string
    list_t *shapes; //nonprimitive container
    struct response_time_map_properties_t *properties; //model

} response_time_map_result_t;

response_time_map_result_t *response_time_map_result_create(
    char *search_id,
    list_t *shapes,
    response_time_map_properties_t *properties
);

void response_time_map_result_free(response_time_map_result_t *response_time_map_result);

response_time_map_result_t *response_time_map_result_parseFromJSON(cJSON *response_time_map_resultJSON);

cJSON *response_time_map_result_convertToJSON(response_time_map_result_t *response_time_map_result);

#endif /* _response_time_map_result_H_ */

