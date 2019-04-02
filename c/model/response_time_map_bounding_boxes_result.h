/*
 * response_time_map_bounding_boxes_result.h
 *
 * 
 */

#ifndef _response_time_map_bounding_boxes_result_H_
#define _response_time_map_bounding_boxes_result_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_bounding_box.h"
#include "response_time_map_properties.h"




typedef struct response_time_map_bounding_boxes_result_t {
        char *search_id; //no enum string
        list_t *bounding_boxes; //nonprimitive container
        response_time_map_properties_t *properties; //nonprimitive

} response_time_map_bounding_boxes_result_t;

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_create(
        char *search_id,
        list_t *bounding_boxes,
        response_time_map_properties_t *properties
);

void response_time_map_bounding_boxes_result_free(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result);

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_parseFromJSON(char *jsonString);

cJSON *response_time_map_bounding_boxes_result_convertToJSON(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result);

#endif /* _response_time_map_bounding_boxes_result_H_ */

