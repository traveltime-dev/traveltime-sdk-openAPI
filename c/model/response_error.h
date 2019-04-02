/*
 * response_error.h
 *
 * 
 */

#ifndef _response_error_H_
#define _response_error_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"




typedef struct response_error_t {
        int http_status; //numeric
        int error_code; //numeric
        char *description; //no enum string
        char *documentation_link; //no enum string
        list_t* additional_info;
        // TODO map/hash not supported at the moment

} response_error_t;

response_error_t *response_error_create(
        int http_status,
        int error_code,
        char *description,
        char *documentation_link,
        list_t* additional_info
        // TODO map/hash not supported at the moment
);

void response_error_free(response_error_t *response_error);

response_error_t *response_error_parseFromJSON(char *jsonString);

cJSON *response_error_convertToJSON(response_error_t *response_error);

#endif /* _response_error_H_ */

