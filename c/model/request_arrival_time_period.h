/*
 * request_arrival_time_period.h
 *
 * 
 */

#ifndef _request_arrival_time_period_H_
#define _request_arrival_time_period_H_

#include <string.h>
#include "cJSON.h"




typedef struct request_arrival_time_period_t {

} request_arrival_time_period_t;

request_arrival_time_period_t *request_arrival_time_period_create(
);

void request_arrival_time_period_free(request_arrival_time_period_t *request_arrival_time_period);

request_arrival_time_period_t *request_arrival_time_period_parseFromJSON(char *jsonString);

cJSON *request_arrival_time_period_convertToJSON(request_arrival_time_period_t *request_arrival_time_period);

#endif /* _request_arrival_time_period_H_ */

