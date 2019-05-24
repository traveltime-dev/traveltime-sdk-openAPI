/*
 * response_fares_breakdown_item.h
 *
 * 
 */

#ifndef _response_fares_breakdown_item_H_
#define _response_fares_breakdown_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "response_fare_ticket.h"
#include "response_transportation_mode.h"



typedef struct response_fares_breakdown_item_t {
    list_t *modes; //nonprimitive container
    list_t *route_part_ids; //primitive container
    list_t *tickets; //nonprimitive container

} response_fares_breakdown_item_t;

response_fares_breakdown_item_t *response_fares_breakdown_item_create(
    list_t *modes,
    list_t *route_part_ids,
    list_t *tickets
);

void response_fares_breakdown_item_free(response_fares_breakdown_item_t *response_fares_breakdown_item);

response_fares_breakdown_item_t *response_fares_breakdown_item_parseFromJSON(cJSON *response_fares_breakdown_itemJSON);

cJSON *response_fares_breakdown_item_convertToJSON(response_fares_breakdown_item_t *response_fares_breakdown_item);

#endif /* _response_fares_breakdown_item_H_ */

