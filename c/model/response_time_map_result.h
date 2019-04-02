/*
 * response_time_map_result.h
 *
 * 
 */

#ifndef _response_time_map_result_H_
#define _response_time_map_result_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_shape.h"
#include "response_time_map_properties.h"




typedef struct response_time_map_result_t {
        char *search_id; //no enum string
        list_t *shapes; //nonprimitive container
        response_time_map_properties_t *properties; //nonprimitive

} response_time_map_result_t;

response_time_map_result_t *response_time_map_result_create(
        char *search_id,
        list_t *shapes,
        response_time_map_properties_t *properties
);

void response_time_map_result_free(response_time_map_result_t *response_time_map_result);

response_time_map_result_t *response_time_map_result_parseFromJSON(char *jsonString);

cJSON *response_time_map_result_convertToJSON(response_time_map_result_t *response_time_map_result);

#endif /* _response_time_map_result_H_ */

