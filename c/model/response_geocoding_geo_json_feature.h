/*
 * response_geocoding_geo_json_feature.h
 *
 * 
 */

#ifndef _response_geocoding_geo_json_feature_H_
#define _response_geocoding_geo_json_feature_H_

#include <string.h>
#include "cJSON.h"
#include "response_geocoding_geometry.h"
#include "response_geocoding_properties.h"




typedef struct response_geocoding_geo_json_feature_t {
        char *type; //no enum string
        response_geocoding_geometry_t *geometry; //nonprimitive
        response_geocoding_properties_t *properties; //nonprimitive

} response_geocoding_geo_json_feature_t;

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_create(
        char *type,
        response_geocoding_geometry_t *geometry,
        response_geocoding_properties_t *properties
);

void response_geocoding_geo_json_feature_free(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature);

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_parseFromJSON(char *jsonString);

cJSON *response_geocoding_geo_json_feature_convertToJSON(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature);

#endif /* _response_geocoding_geo_json_feature_H_ */

