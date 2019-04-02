/*
 * response_time_filter_postcode_district.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_district_H_
#define _response_time_filter_postcode_district_H_

#include <string.h>
#include "cJSON.h"
#include "response_time_filter_postcode_district_properties.h"
#include "string.h"




typedef struct response_time_filter_postcode_district_t {
        char_t *code; //nonprimitive
        response_time_filter_postcode_district_properties_t *properties; //nonprimitive

} response_time_filter_postcode_district_t;

response_time_filter_postcode_district_t *response_time_filter_postcode_district_create(
        char_t *code,
        response_time_filter_postcode_district_properties_t *properties
);

void response_time_filter_postcode_district_free(response_time_filter_postcode_district_t *response_time_filter_postcode_district);

response_time_filter_postcode_district_t *response_time_filter_postcode_district_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_t *response_time_filter_postcode_district);

#endif /* _response_time_filter_postcode_district_H_ */

