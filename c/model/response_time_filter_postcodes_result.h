/*
 * response_time_filter_postcodes_result.h
 *
 * 
 */

#ifndef _response_time_filter_postcodes_result_H_
#define _response_time_filter_postcodes_result_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_postcode.h"




typedef struct response_time_filter_postcodes_result_t {
        char *search_id; //no enum string
        list_t *postcodes; //nonprimitive container

} response_time_filter_postcodes_result_t;

response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_create(
        char *search_id,
        list_t *postcodes
);

void response_time_filter_postcodes_result_free(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result);

response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcodes_result_convertToJSON(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result);

#endif /* _response_time_filter_postcodes_result_H_ */

