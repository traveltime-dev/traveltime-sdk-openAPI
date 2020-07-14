/*
 * response_time_map_bounding_boxes_result.h
 *
 * 
 */

#ifndef _response_time_map_bounding_boxes_result_H_
#define _response_time_map_bounding_boxes_result_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_map_bounding_boxes_result_t response_time_map_bounding_boxes_result_t;

#include "response_bounding_box.h"
#include "response_time_map_properties.h"



typedef struct response_time_map_bounding_boxes_result_t {
    char *search_id; // string
    list_t *bounding_boxes; //nonprimitive container
    struct response_time_map_properties_t *properties; //model

} response_time_map_bounding_boxes_result_t;

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_create(
    char *search_id,
    list_t *bounding_boxes,
    response_time_map_properties_t *properties
);

void response_time_map_bounding_boxes_result_free(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result);

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_parseFromJSON(cJSON *response_time_map_bounding_boxes_resultJSON);

cJSON *response_time_map_bounding_boxes_result_convertToJSON(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result);

#endif /* _response_time_map_bounding_boxes_result_H_ */

