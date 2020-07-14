/*
 * request_arrival_time_period.h
 *
 * 
 */

#ifndef _request_arrival_time_period_H_
#define _request_arrival_time_period_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_arrival_time_period_t request_arrival_time_period_t;


// Enum  for request_arrival_time_period

typedef enum { traveltime_api_request_arrival_time_period__NULL = 0, traveltime_api_request_arrival_time_period__weekday_morning } traveltime_api_request_arrival_time_period__e;

char* request_arrival_time_period_request_arrival_time_period_ToString(traveltime_api_request_arrival_time_period__e request_arrival_time_period);

traveltime_api_request_arrival_time_period__e request_arrival_time_period_request_arrival_time_period_FromString(char* request_arrival_time_period);

//cJSON *request_arrival_time_period_request_arrival_time_period_convertToJSON(traveltime_api_request_arrival_time_period__e request_arrival_time_period);

//traveltime_api_request_arrival_time_period__e request_arrival_time_period_request_arrival_time_period_parseFromJSON(cJSON *request_arrival_time_periodJSON);

#endif /* _request_arrival_time_period_H_ */

