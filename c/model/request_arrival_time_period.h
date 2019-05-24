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


typedef enum  {  weekday_morning } request_arrival_time_period_e;

char* request_arrival_time_period_ToString(request_arrival_time_period_e request_arrival_time_period);

request_arrival_time_period_e request_arrival_time_period_FromString(char* request_arrival_time_period);

cJSON *request_arrival_time_period_convertToJSON(request_arrival_time_period_e request_arrival_time_period);

request_arrival_time_period_e request_arrival_time_period_parseFromJSON(cJSON *request_arrival_time_periodJSON);

#endif /* _request_arrival_time_period_H_ */

