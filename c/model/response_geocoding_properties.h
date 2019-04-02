/*
 * response_geocoding_properties.h
 *
 * 
 */

#ifndef _response_geocoding_properties_H_
#define _response_geocoding_properties_H_

#include <string.h>
#include "cJSON.h"
#include "response_map_info_features.h"




typedef struct response_geocoding_properties_t {
        char *name; //no enum string
        char *label; //no enum string
        double score; //numeric
        char *house_number; //no enum string
        char *street; //no enum string
        char *region; //no enum string
        char *region_code; //no enum string
        char *neighbourhood; //no enum string
        char *county; //no enum string
        char *macroregion; //no enum string
        char *city; //no enum string
        char *country; //no enum string
        char *country_code; //no enum string
        char *continent; //no enum string
        char *postcode; //no enum string
        response_map_info_features_t *features; //nonprimitive

} response_geocoding_properties_t;

response_geocoding_properties_t *response_geocoding_properties_create(
        char *name,
        char *label,
        double score,
        char *house_number,
        char *street,
        char *region,
        char *region_code,
        char *neighbourhood,
        char *county,
        char *macroregion,
        char *city,
        char *country,
        char *country_code,
        char *continent,
        char *postcode,
        response_map_info_features_t *features
);

void response_geocoding_properties_free(response_geocoding_properties_t *response_geocoding_properties);

response_geocoding_properties_t *response_geocoding_properties_parseFromJSON(char *jsonString);

cJSON *response_geocoding_properties_convertToJSON(response_geocoding_properties_t *response_geocoding_properties);

#endif /* _response_geocoding_properties_H_ */

