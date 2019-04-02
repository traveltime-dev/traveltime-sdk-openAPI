/*
 * response_time_map_properties.h
 *
 * 
 */

#ifndef _response_time_map_properties_H_
#define _response_time_map_properties_H_

#include <string.h>
#include "cJSON.h"

typedef int bool;
#define true 1
#define false 0



typedef struct response_time_map_properties_t {
        bool is_only_walking; //boolean

} response_time_map_properties_t;

response_time_map_properties_t *response_time_map_properties_create(
        bool is_only_walking
);

void response_time_map_properties_free(response_time_map_properties_t *response_time_map_properties);

response_time_map_properties_t *response_time_map_properties_parseFromJSON(char *jsonString);

cJSON *response_time_map_properties_convertToJSON(response_time_map_properties_t *response_time_map_properties);

#endif /* _response_time_map_properties_H_ */

