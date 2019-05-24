/*
 * response_map_info.h
 *
 * 
 */

#ifndef _response_map_info_H_
#define _response_map_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_map_info_map.h"



typedef struct response_map_info_t {
    list_t *maps; //nonprimitive container

} response_map_info_t;

response_map_info_t *response_map_info_create(
    list_t *maps
);

void response_map_info_free(response_map_info_t *response_map_info);

response_map_info_t *response_map_info_parseFromJSON(cJSON *response_map_infoJSON);

cJSON *response_map_info_convertToJSON(response_map_info_t *response_map_info);

#endif /* _response_map_info_H_ */

