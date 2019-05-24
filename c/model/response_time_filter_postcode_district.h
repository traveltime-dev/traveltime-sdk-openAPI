/*
 * response_time_filter_postcode_district.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_district_H_
#define _response_time_filter_postcode_district_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_time_filter_postcode_district_properties.h"
#include "string.h"



typedef struct response_time_filter_postcode_district_t {
    char_t *code; //model
    response_time_filter_postcode_district_properties_t *properties; //model

} response_time_filter_postcode_district_t;

response_time_filter_postcode_district_t *response_time_filter_postcode_district_create(
    char_t *code,
    response_time_filter_postcode_district_properties_t *properties
);

void response_time_filter_postcode_district_free(response_time_filter_postcode_district_t *response_time_filter_postcode_district);

response_time_filter_postcode_district_t *response_time_filter_postcode_district_parseFromJSON(cJSON *response_time_filter_postcode_districtJSON);

cJSON *response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_t *response_time_filter_postcode_district);

#endif /* _response_time_filter_postcode_district_H_ */

