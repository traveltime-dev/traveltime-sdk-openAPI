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

// Enum  for response_fares_breakdown_item

typedef enum  { traveltime_platform_api_response_fares_breakdown_item__NULL = 0, traveltime_platform_api_response_fares_breakdown_item__car, traveltime_platform_api_response_fares_breakdown_item__parking, traveltime_platform_api_response_fares_breakdown_item__boarding, traveltime_platform_api_response_fares_breakdown_item__walk, traveltime_platform_api_response_fares_breakdown_item__bike, traveltime_platform_api_response_fares_breakdown_item__train, traveltime_platform_api_response_fares_breakdown_item__rail_national, traveltime_platform_api_response_fares_breakdown_item__rail_overground, traveltime_platform_api_response_fares_breakdown_item__rail_underground, traveltime_platform_api_response_fares_breakdown_item__rail_dlr, traveltime_platform_api_response_fares_breakdown_item__bus, traveltime_platform_api_response_fares_breakdown_item__cable_car, traveltime_platform_api_response_fares_breakdown_item__plane, traveltime_platform_api_response_fares_breakdown_item__ferry, traveltime_platform_api_response_fares_breakdown_item__coach } traveltime_platform_api_response_fares_breakdown_item__e;

char* response_fares_breakdown_item_modes_ToString(traveltime_platform_api_response_fares_breakdown_item__e modes);

traveltime_platform_api_response_fares_breakdown_item__e response_fares_breakdown_item_modes_FromString(char* modes);



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

