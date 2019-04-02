/*
 * response_route_part.h
 *
 * 
 */

#ifndef _response_route_part_H_
#define _response_route_part_H_

#include <string.h>
#include "cJSON.h"
#include "coords.h"
#include "list.h"
#include "response_transportation_mode.h"


typedef enum  {  basic, start_end, road, public_transport } type_e;

char* typeresponse_route_part_ToString(type_e type);

type_e typeresponse_route_part_FromString(char* type);

typedef struct response_route_part_t {
        char *id; //no enum string
        type_e type; //enum string
        response_transportation_mode_t *mode; //nonprimitive
        char *directions; //no enum string
        int distance; //numeric
        int travel_time; //numeric
        list_t *coords; //nonprimitive container
        char *direction; //no enum string
        char *road; //no enum string
        char *turn; //no enum string
        char *line; //no enum string
        char *departure_station; //no enum string
        char *arrival_station; //no enum string
        char *departs_at; //no enum string
        char *arrives_at; //no enum string
        int num_stops; //numeric

} response_route_part_t;

response_route_part_t *response_route_part_create(
        char *id,
        type_e type,
        response_transportation_mode_t *mode,
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

response_route_part_t *response_route_part_parseFromJSON(char *jsonString);

cJSON *response_route_part_convertToJSON(response_route_part_t *response_route_part);

#endif /* _response_route_part_H_ */

