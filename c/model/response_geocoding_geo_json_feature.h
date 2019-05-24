/*
 * response_geocoding_geo_json_feature.h
 *
 * 
 */

#ifndef _response_geocoding_geo_json_feature_H_
#define _response_geocoding_geo_json_feature_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_geocoding_geometry.h"
#include "response_geocoding_properties.h"



typedef struct response_geocoding_geo_json_feature_t {
    char *type; // string
    response_geocoding_geometry_t *geometry; //model
    response_geocoding_properties_t *properties; //model

} response_geocoding_geo_json_feature_t;

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_create(
    char *type,
    response_geocoding_geometry_t *geometry,
    response_geocoding_properties_t *properties
);

void response_geocoding_geo_json_feature_free(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature);

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_parseFromJSON(cJSON *response_geocoding_geo_json_featureJSON);

cJSON *response_geocoding_geo_json_feature_convertToJSON(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature);

#endif /* _response_geocoding_geo_json_feature_H_ */

