/*
 * response_time_filter_postcode_district_properties.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_district_properties_H_
#define _response_time_filter_postcode_district_properties_H_

#include <string.h>
#include "cJSON.h"
#include "response_travel_time_statistics.h"




typedef struct response_time_filter_postcode_district_properties_t {
        response_travel_time_statistics_t *travel_time_reachable; //nonprimitive
        response_travel_time_statistics_t *travel_time_all; //nonprimitive
        double coverage; //numeric

} response_time_filter_postcode_district_properties_t;

response_time_filter_postcode_district_properties_t *response_time_filter_postcode_district_properties_create(
        response_travel_time_statistics_t *travel_time_reachable,
        response_travel_time_statistics_t *travel_time_all,
        double coverage
);

void response_time_filter_postcode_district_properties_free(response_time_filter_postcode_district_properties_t *response_time_filter_postcode_district_properties);

response_time_filter_postcode_district_properties_t *response_time_filter_postcode_district_properties_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_district_properties_convertToJSON(response_time_filter_postcode_district_properties_t *response_time_filter_postcode_district_properties);

#endif /* _response_time_filter_postcode_district_properties_H_ */

