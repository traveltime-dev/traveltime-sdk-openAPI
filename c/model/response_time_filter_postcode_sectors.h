/*
 * response_time_filter_postcode_sectors.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_sectors_H_
#define _response_time_filter_postcode_sectors_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_postcode_sectors_result.h"




typedef struct response_time_filter_postcode_sectors_t {
        list_t *results; //nonprimitive container

} response_time_filter_postcode_sectors_t;

response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_create(
        list_t *results
);

void response_time_filter_postcode_sectors_free(response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors);

response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_sectors_convertToJSON(response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors);

#endif /* _response_time_filter_postcode_sectors_H_ */

