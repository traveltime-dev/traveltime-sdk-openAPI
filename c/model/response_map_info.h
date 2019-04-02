/*
 * response_map_info.h
 *
 * 
 */

#ifndef _response_map_info_H_
#define _response_map_info_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_map_info_map.h"




typedef struct response_map_info_t {
        list_t *maps; //nonprimitive container

} response_map_info_t;

response_map_info_t *response_map_info_create(
        list_t *maps
);

void response_map_info_free(response_map_info_t *response_map_info);

response_map_info_t *response_map_info_parseFromJSON(char *jsonString);

cJSON *response_map_info_convertToJSON(response_map_info_t *response_map_info);

#endif /* _response_map_info_H_ */

