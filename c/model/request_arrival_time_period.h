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

// Enum  for request_arrival_time_period

typedef enum { traveltime_platform_api_request_arrival_time_period__NULL = 0, traveltime_platform_api_request_arrival_time_period__weekday_morning } traveltime_platform_api_request_arrival_time_period__e;

char* request_arrival_time_period_request_arrival_time_period_ToString(traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period);

traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period_request_arrival_time_period_FromString(char* request_arrival_time_period);

//cJSON *request_arrival_time_period_request_arrival_time_period_convertToJSON(traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period);

//traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period_request_arrival_time_period_parseFromJSON(cJSON *request_arrival_time_periodJSON);

#endif /* _request_arrival_time_period_H_ */

