/*
 * response_time_filter_properties.h
 *
 * 
 */

#ifndef _response_time_filter_properties_H_
#define _response_time_filter_properties_H_

#include <string.h>
#include "cJSON.h"
#include "list.h"
#include "response_distance_breakdown_item.h"
#include "response_fares.h"
#include "response_route.h"




typedef struct response_time_filter_properties_t {
        int travel_time; //numeric
        int distance; //numeric
        list_t *distance_breakdown; //nonprimitive container
        response_fares_t *fares; //nonprimitive
        response_route_t *route; //nonprimitive

} response_time_filter_properties_t;

response_time_filter_properties_t *response_time_filter_properties_create(
        int travel_time,
        int distance,
        list_t *distance_breakdown,
        response_fares_t *fares,
        response_route_t *route
);

void response_time_filter_properties_free(response_time_filter_properties_t *response_time_filter_properties);

response_time_filter_properties_t *response_time_filter_properties_parseFromJSON(char *jsonString);

cJSON *response_time_filter_properties_convertToJSON(response_time_filter_properties_t *response_time_filter_properties);

#endif /* _response_time_filter_properties_H_ */

