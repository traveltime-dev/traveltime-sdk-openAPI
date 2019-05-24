/*
 * response_time_filter_fast_properties.h
 *
 * 
 */

#ifndef _response_time_filter_fast_properties_H_
#define _response_time_filter_fast_properties_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_fares_fast.h"



typedef struct response_time_filter_fast_properties_t {
    int travel_time; //numeric
    response_fares_fast_t *fares; //model

} response_time_filter_fast_properties_t;

response_time_filter_fast_properties_t *response_time_filter_fast_properties_create(
    int travel_time,
    response_fares_fast_t *fares
);

void response_time_filter_fast_properties_free(response_time_filter_fast_properties_t *response_time_filter_fast_properties);

response_time_filter_fast_properties_t *response_time_filter_fast_properties_parseFromJSON(cJSON *response_time_filter_fast_propertiesJSON);

cJSON *response_time_filter_fast_properties_convertToJSON(response_time_filter_fast_properties_t *response_time_filter_fast_properties);

#endif /* _response_time_filter_fast_properties_H_ */

