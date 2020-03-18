/*
 * response_geocoding_properties.h
 *
 * 
 */

#ifndef _response_geocoding_properties_H_
#define _response_geocoding_properties_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_map_info_features.h"



typedef struct response_geocoding_properties_t {
    char *name; // string
    char *label; // string
    double score; //numeric
    char *house_number; // string
    char *street; // string
    char *region; // string
    char *region_code; // string
    char *neighbourhood; // string
    char *county; // string
    char *macroregion; // string
    char *city; // string
    char *country; // string
    char *country_code; // string
    char *continent; // string
    char *postcode; // string
    struct response_map_info_features_t *features; //model

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

response_geocoding_properties_t *response_geocoding_properties_parseFromJSON(cJSON *response_geocoding_propertiesJSON);

cJSON *response_geocoding_properties_convertToJSON(response_geocoding_properties_t *response_geocoding_properties);

#endif /* _response_geocoding_properties_H_ */

