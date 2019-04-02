/*
 * response_map_info_features.h
 *
 * 
 */

#ifndef _response_map_info_features_H_
#define _response_map_info_features_H_

#include <string.h>
#include "cJSON.h"
#include "response_map_info_features_public_transport.h"

typedef int bool;
#define true 1
#define false 0
typedef int bool;
#define true 1
#define false 0



typedef struct response_map_info_features_t {
        response_map_info_features_public_transport_t *public_transport; //nonprimitive
        bool fares; //boolean
        bool postcodes; //boolean

} response_map_info_features_t;

response_map_info_features_t *response_map_info_features_create(
        response_map_info_features_public_transport_t *public_transport,
        bool fares,
        bool postcodes
);

void response_map_info_features_free(response_map_info_features_t *response_map_info_features);

response_map_info_features_t *response_map_info_features_parseFromJSON(char *jsonString);

cJSON *response_map_info_features_convertToJSON(response_map_info_features_t *response_map_info_features);

#endif /* _response_map_info_features_H_ */

