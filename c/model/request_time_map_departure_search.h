/*
 * request_time_map_departure_search.h
 *
 * 
 */

#ifndef _request_time_map_departure_search_H_
#define _request_time_map_departure_search_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "coords.h"
#include "request_range_no_max_results.h"
#include "request_time_map_property.h"
#include "request_transportation.h"

                    typedef enum  {  is_only_walking } properties_e;

            char* properties_ToString(properties_e properties);

            properties_e properties_FromString(char* properties);


typedef struct request_time_map_departure_search_t {
    char *id; // string
    struct coords_t *coords; //model
    struct request_transportation_t *transportation; //model
    int travel_time; //numeric
    char *departure_time; //date time
    list_t *properties; //nonprimitive container
    struct request_range_no_max_results_t *range; //model

} request_time_map_departure_search_t;

request_time_map_departure_search_t *request_time_map_departure_search_create(
    char *id,
    coords_t *coords,
    request_transportation_t *transportation,
    int travel_time,
    char *departure_time,
    list_t *properties,
    request_range_no_max_results_t *range
);

void request_time_map_departure_search_free(request_time_map_departure_search_t *request_time_map_departure_search);

request_time_map_departure_search_t *request_time_map_departure_search_parseFromJSON(cJSON *request_time_map_departure_searchJSON);

cJSON *request_time_map_departure_search_convertToJSON(request_time_map_departure_search_t *request_time_map_departure_search);

#endif /* _request_time_map_departure_search_H_ */

