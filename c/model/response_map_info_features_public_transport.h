/*
 * response_map_info_features_public_transport.h
 *
 * 
 */

#ifndef _response_map_info_features_public_transport_H_
#define _response_map_info_features_public_transport_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_map_info_features_public_transport_t response_map_info_features_public_transport_t;




typedef struct response_map_info_features_public_transport_t {
    char *date_start; //date time
    char *date_end; //date time

} response_map_info_features_public_transport_t;

response_map_info_features_public_transport_t *response_map_info_features_public_transport_create(
    char *date_start,
    char *date_end
);

void response_map_info_features_public_transport_free(response_map_info_features_public_transport_t *response_map_info_features_public_transport);

response_map_info_features_public_transport_t *response_map_info_features_public_transport_parseFromJSON(cJSON *response_map_info_features_public_transportJSON);

cJSON *response_map_info_features_public_transport_convertToJSON(response_map_info_features_public_transport_t *response_map_info_features_public_transport);

#endif /* _response_map_info_features_public_transport_H_ */

