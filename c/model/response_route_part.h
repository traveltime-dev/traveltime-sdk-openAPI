/*
 * response_route_part.h
 *
 * 
 */

#ifndef _response_route_part_H_
#define _response_route_part_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "coords.h"
#include "response_transportation_mode.h"

// Enum TYPE for response_route_part

typedef enum  { traveltime_platform_api_response_route_part_TYPE_NULL = 0, traveltime_platform_api_response_route_part_TYPE_basic, traveltime_platform_api_response_route_part_TYPE_start_end, traveltime_platform_api_response_route_part_TYPE_road, traveltime_platform_api_response_route_part_TYPE_public_transport } traveltime_platform_api_response_route_part_TYPE_e;

char* response_route_part_type_ToString(traveltime_platform_api_response_route_part_TYPE_e type);

traveltime_platform_api_response_route_part_TYPE_e response_route_part_type_FromString(char* type);

// Enum  for response_route_part

typedef enum  { traveltime_platform_api_response_route_part__NULL = 0, traveltime_platform_api_response_route_part__car, traveltime_platform_api_response_route_part__parking, traveltime_platform_api_response_route_part__boarding, traveltime_platform_api_response_route_part__walk, traveltime_platform_api_response_route_part__bike, traveltime_platform_api_response_route_part__train, traveltime_platform_api_response_route_part__rail_national, traveltime_platform_api_response_route_part__rail_overground, traveltime_platform_api_response_route_part__rail_underground, traveltime_platform_api_response_route_part__rail_dlr, traveltime_platform_api_response_route_part__bus, traveltime_platform_api_response_route_part__cable_car, traveltime_platform_api_response_route_part__plane, traveltime_platform_api_response_route_part__ferry, traveltime_platform_api_response_route_part__coach } traveltime_platform_api_response_route_part__e;

char* response_route_part_mode_ToString(traveltime_platform_api_response_route_part__e mode);

traveltime_platform_api_response_route_part__e response_route_part_mode_FromString(char* mode);



typedef struct response_route_part_t {
    char *id; // string
    traveltime_platform_api_response_route_part_TYPE_e type; //enum
    char *directions; // string
    int distance; //numeric
    int travel_time; //numeric
    list_t *coords; //nonprimitive container
    char *direction; // string
    char *road; // string
    char *turn; // string
    char *line; // string
    char *departure_station; // string
    char *arrival_station; // string
    char *departs_at; // string
    char *arrives_at; // string
    int num_stops; //numeric

} response_route_part_t;

response_route_part_t *response_route_part_create(
    char *id,
    traveltime_platform_api_response_route_part_TYPE_e type,
    char *directions,
    int distance,
    int travel_time,
    list_t *coords,
    char *direction,
    char *road,
    char *turn,
    char *line,
    char *departure_station,
    char *arrival_station,
    char *departs_at,
    char *arrives_at,
    int num_stops
);

void response_route_part_free(response_route_part_t *response_route_part);

response_route_part_t *response_route_part_parseFromJSON(cJSON *response_route_partJSON);

cJSON *response_route_part_convertToJSON(response_route_part_t *response_route_part);

#endif /* _response_route_part_H_ */

