/*
 * response_time_filter_postcode.h
 *
 * 
 */

#ifndef _response_time_filter_postcode_H_
#define _response_time_filter_postcode_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_filter_postcode_t response_time_filter_postcode_t;

#include "response_time_filter_postcodes_properties.h"



typedef struct response_time_filter_postcode_t {
    char *code; // string
    list_t *properties; //nonprimitive container

} response_time_filter_postcode_t;

response_time_filter_postcode_t *response_time_filter_postcode_create(
    char *code,
    list_t *properties
);

void response_time_filter_postcode_free(response_time_filter_postcode_t *response_time_filter_postcode);

response_time_filter_postcode_t *response_time_filter_postcode_parseFromJSON(cJSON *response_time_filter_postcodeJSON);

cJSON *response_time_filter_postcode_convertToJSON(response_time_filter_postcode_t *response_time_filter_postcode);

#endif /* _response_time_filter_postcode_H_ */

