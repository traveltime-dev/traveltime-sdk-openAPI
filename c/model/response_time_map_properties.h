/*
 * response_time_map_properties.h
 *
 * 
 */

#ifndef _response_time_map_properties_H_
#define _response_time_map_properties_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_map_properties_t response_time_map_properties_t;




typedef struct response_time_map_properties_t {
    int is_only_walking; //boolean

} response_time_map_properties_t;

response_time_map_properties_t *response_time_map_properties_create(
    int is_only_walking
);

void response_time_map_properties_free(response_time_map_properties_t *response_time_map_properties);

response_time_map_properties_t *response_time_map_properties_parseFromJSON(cJSON *response_time_map_propertiesJSON);

cJSON *response_time_map_properties_convertToJSON(response_time_map_properties_t *response_time_map_properties);

#endif /* _response_time_map_properties_H_ */

