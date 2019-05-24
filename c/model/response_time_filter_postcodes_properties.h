/*
 * response_time_filter_postcodes_properties.h
 *
 * 
 */

#ifndef _response_time_filter_postcodes_properties_H_
#define _response_time_filter_postcodes_properties_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct response_time_filter_postcodes_properties_t {
    int travel_time; //numeric
    int distance; //numeric

} response_time_filter_postcodes_properties_t;

response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_create(
    int travel_time,
    int distance
);

void response_time_filter_postcodes_properties_free(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties);

response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_parseFromJSON(cJSON *response_time_filter_postcodes_propertiesJSON);

cJSON *response_time_filter_postcodes_properties_convertToJSON(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties);

#endif /* _response_time_filter_postcodes_properties_H_ */

