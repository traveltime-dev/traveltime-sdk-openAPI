/*
 * response_travel_time_statistics.h
 *
 * 
 */

#ifndef _response_travel_time_statistics_H_
#define _response_travel_time_statistics_H_

#include <string.h>
#include "cJSON.h"




typedef struct response_travel_time_statistics_t {
        int min; //numeric
        int max; //numeric
        int mean; //numeric
        int median; //numeric

} response_travel_time_statistics_t;

response_travel_time_statistics_t *response_travel_time_statistics_create(
        int min,
        int max,
        int mean,
        int median
);

void response_travel_time_statistics_free(response_travel_time_statistics_t *response_travel_time_statistics);

response_travel_time_statistics_t *response_travel_time_statistics_parseFromJSON(char *jsonString);

cJSON *response_travel_time_statistics_convertToJSON(response_travel_time_statistics_t *response_travel_time_statistics);

#endif /* _response_travel_time_statistics_H_ */
