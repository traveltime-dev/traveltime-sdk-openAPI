/*
 * response_map_info_map.h
 *
 * 
 */

#ifndef _response_map_info_map_H_
#define _response_map_info_map_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_map_info_features.h"



typedef struct response_map_info_map_t {
    char *name; // string
    response_map_info_features_t *features; //model

} response_map_info_map_t;

response_map_info_map_t *response_map_info_map_create(
    char *name,
    response_map_info_features_t *features
);

void response_map_info_map_free(response_map_info_map_t *response_map_info_map);

response_map_info_map_t *response_map_info_map_parseFromJSON(cJSON *response_map_info_mapJSON);

cJSON *response_map_info_map_convertToJSON(response_map_info_map_t *response_map_info_map);

#endif /* _response_map_info_map_H_ */

