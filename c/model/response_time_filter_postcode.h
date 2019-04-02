/*
 * response_time_filter_postcode.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_H_
#define _response_time_filter_postcode_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_time_filter_postcodes_properties.h"
#include "string.h"




typedef struct response_time_filter_postcode_t {
        char_t *code; //nonprimitive
        list_t *properties; //nonprimitive container

} response_time_filter_postcode_t;

response_time_filter_postcode_t *response_time_filter_postcode_create(
        char_t *code,
        list_t *properties
);

void response_time_filter_postcode_free(response_time_filter_postcode_t *response_time_filter_postcode);

response_time_filter_postcode_t *response_time_filter_postcode_parseFromJSON(char *jsonString);

cJSON *response_time_filter_postcode_convertToJSON(response_time_filter_postcode_t *response_time_filter_postcode);

#endif /* _response_time_filter_postcode_H_ */

