/*
 * request_time_filter_postcode_sectors_property.h
 *
 * 
 */

#ifndef _request_time_filter_postcode_sectors_property_H_
#define _request_time_filter_postcode_sectors_property_H_

#include <string.h>
#include "cJSON.h"




typedef struct request_time_filter_postcode_sectors_property_t {

} request_time_filter_postcode_sectors_property_t;

request_time_filter_postcode_sectors_property_t *request_time_filter_postcode_sectors_property_create(
);

void request_time_filter_postcode_sectors_property_free(request_time_filter_postcode_sectors_property_t *request_time_filter_postcode_sectors_property);

request_time_filter_postcode_sectors_property_t *request_time_filter_postcode_sectors_property_parseFromJSON(char *jsonString);

cJSON *request_time_filter_postcode_sectors_property_convertToJSON(request_time_filter_postcode_sectors_property_t *request_time_filter_postcode_sectors_property);

#endif /* _request_time_filter_postcode_sectors_property_H_ */

