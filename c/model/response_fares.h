/*
 * response_fares.h
 *
 * 
 */

#ifndef _response_fares_H_
#define _response_fares_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_fares_t response_fares_t;

#include "response_fare_ticket.h"
#include "response_fares_breakdown_item.h"



typedef struct response_fares_t {
    list_t *breakdown; //nonprimitive container
    list_t *tickets_total; //nonprimitive container

} response_fares_t;

response_fares_t *response_fares_create(
    list_t *breakdown,
    list_t *tickets_total
);

void response_fares_free(response_fares_t *response_fares);

response_fares_t *response_fares_parseFromJSON(cJSON *response_faresJSON);

cJSON *response_fares_convertToJSON(response_fares_t *response_fares);

#endif /* _response_fares_H_ */

