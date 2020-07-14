/*
 * response_error.h
 *
 * 
 */

#ifndef _response_error_H_
#define _response_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_error_t response_error_t;




typedef struct response_error_t {
    int http_status; //numeric
    int error_code; //numeric
    char *description; // string
    char *documentation_link; // string
    list_t* additional_info; //map

} response_error_t;

response_error_t *response_error_create(
    int http_status,
    int error_code,
    char *description,
    char *documentation_link,
    list_t* additional_info
);

void response_error_free(response_error_t *response_error);

response_error_t *response_error_parseFromJSON(cJSON *response_errorJSON);

cJSON *response_error_convertToJSON(response_error_t *response_error);

#endif /* _response_error_H_ */

