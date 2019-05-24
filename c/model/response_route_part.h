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

                typedef enum  {  basic, start_end, road, public_transport } type_e;

        char* type_ToString(type_e type);

        type_e type_FromString(char* type);


typedef struct response_route_part_t {
    char *id; // string
    type_e type; //enum
    response_transportation_mode_e mode; //enum model
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
    type_e type,
    response_transportation_mode_e mode,
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

