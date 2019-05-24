/*
 * request_time_filter_property.h
 *
 * 
 */

#ifndef _request_time_filter_property_H_
#define _request_time_filter_property_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"


typedef enum  {  travel_time, distance, distance_breakdown, fares, route } request_time_filter_property_e;

char* request_time_filter_property_ToString(request_time_filter_property_e request_time_filter_property);

request_time_filter_property_e request_time_filter_property_FromString(char* request_time_filter_property);

cJSON *request_time_filter_property_convertToJSON(request_time_filter_property_e request_time_filter_property);

request_time_filter_property_e request_time_filter_property_parseFromJSON(cJSON *request_time_filter_propertyJSON);

#endif /* _request_time_filter_property_H_ */

