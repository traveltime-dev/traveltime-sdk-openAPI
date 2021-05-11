/*
 * response_time_filter_postcode_sector.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_sector_H_
#define _response_time_filter_postcode_sector_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_postcode_sector_t response_time_filter_postcode_sector_t;

#include "response_time_filter_postcode_sector_properties.h"



typedef struct response_time_filter_postcode_sector_t {
    char *code; // string
    struct response_time_filter_postcode_sector_properties_t *properties; //model

} response_time_filter_postcode_sector_t;

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_create(
    char *code,
    response_time_filter_postcode_sector_properties_t *properties
);

void response_time_filter_postcode_sector_free(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector);

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_parseFromJSON(cJSON *response_time_filter_postcode_sectorJSON);

cJSON *response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector);

#endif /* _response_time_filter_postcode_sector_H_ */

