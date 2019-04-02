/*
 * response_time_filter_postcode_sectors_result.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_sectors_result_H_
#define _response_time_filter_postcode_sectors_result_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_postcode_sector.h"




typedef struct response_time_filter_postcode_sectors_result_t {
        char *search_id; //no enum string
        list_t *sectors; //nonprimitive container

} response_time_filter_postcode_sectors_result_t;

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_create(
        char *search_id,
        list_t *sectors
);

void response_time_filter_postcode_sectors_result_free(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result);

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_sectors_result_convertToJSON(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result);

#endif /* _response_time_filter_postcode_sectors_result_H_ */

