/*
 * response_time_filter_postcode_sector.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_sector_H_
#define _response_time_filter_postcode_sector_H_

#include <string.h>
#include "cJSON.h"
#include "response_time_filter_postcode_sector_properties.h"
#include "string.h"




typedef struct response_time_filter_postcode_sector_t {
        char_t *code; //nonprimitive
        response_time_filter_postcode_sector_properties_t *properties; //nonprimitive

} response_time_filter_postcode_sector_t;

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_create(
        char_t *code,
        response_time_filter_postcode_sector_properties_t *properties
);

void response_time_filter_postcode_sector_free(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector);

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector);

#endif /* _response_time_filter_postcode_sector_H_ */

