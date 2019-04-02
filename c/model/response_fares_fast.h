/*
 * response_fares_fast.h
 *
 * 
 */

#ifndef _response_fares_fast_H_
#define _response_fares_fast_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_fare_ticket.h"




typedef struct response_fares_fast_t {
        list_t *tickets_total; //nonprimitive container

} response_fares_fast_t;

response_fares_fast_t *response_fares_fast_create(
        list_t *tickets_total
);

void response_fares_fast_free(response_fares_fast_t *response_fares_fast);

response_fares_fast_t *response_fares_fast_parseFromJSON(char *jsonString);

cJSON *response_fares_fast_convertToJSON(response_fares_fast_t *response_fares_fast);

#endif /* _response_fares_fast_H_ */

