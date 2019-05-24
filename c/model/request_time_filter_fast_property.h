/*
 * request_time_filter_fast_property.h
 *
 * 
 */

#ifndef _request_time_filter_fast_property_H_
#define _request_time_filter_fast_property_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"


typedef enum  {  travel_time, fares } request_time_filter_fast_property_e;

char* request_time_filter_fast_property_ToString(request_time_filter_fast_property_e request_time_filter_fast_property);

request_time_filter_fast_property_e request_time_filter_fast_property_FromString(char* request_time_filter_fast_property);

cJSON *request_time_filter_fast_property_convertToJSON(request_time_filter_fast_property_e request_time_filter_fast_property);

request_time_filter_fast_property_e request_time_filter_fast_property_parseFromJSON(cJSON *request_time_filter_fast_propertyJSON);

#endif /* _request_time_filter_fast_property_H_ */

