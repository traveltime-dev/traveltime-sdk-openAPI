/*
 * response_time_filter_postcode_sectors_result.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_sectors_result_H_
#define _response_time_filter_postcode_sectors_result_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_postcode_sectors_result_t response_time_filter_postcode_sectors_result_t;

#include "response_time_filter_postcode_sector.h"



typedef struct response_time_filter_postcode_sectors_result_t {
    char *search_id; // string
    list_t *sectors; //nonprimitive container

} response_time_filter_postcode_sectors_result_t;

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_create(
    char *search_id,
    list_t *sectors
);

void response_time_filter_postcode_sectors_result_free(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result);

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_parseFromJSON(cJSON *response_time_filter_postcode_sectors_resultJSON);

cJSON *response_time_filter_postcode_sectors_result_convertToJSON(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result);

#endif /* _response_time_filter_postcode_sectors_result_H_ */

