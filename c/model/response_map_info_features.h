/*
 * response_map_info_features.h
 *
 * 
 */

#ifndef _response_map_info_features_H_
#define _response_map_info_features_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_map_info_features_t response_map_info_features_t;

#include "response_map_info_features_public_transport.h"



typedef struct response_map_info_features_t {
    struct response_map_info_features_public_transport_t *public_transport; //model
    int fares; //boolean
    int postcodes; //boolean

} response_map_info_features_t;

response_map_info_features_t *response_map_info_features_create(
    response_map_info_features_public_transport_t *public_transport,
    int fares,
    int postcodes
);

void response_map_info_features_free(response_map_info_features_t *response_map_info_features);

response_map_info_features_t *response_map_info_features_parseFromJSON(cJSON *response_map_info_featuresJSON);

cJSON *response_map_info_features_convertToJSON(response_map_info_features_t *response_map_info_features);

#endif /* _response_map_info_features_H_ */

