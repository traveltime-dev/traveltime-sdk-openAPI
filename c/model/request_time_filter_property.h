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
#include "../include/binary.h"

typedef struct request_time_filter_property_t request_time_filter_property_t;


// Enum  for request_time_filter_property

typedef enum { traveltime_api_request_time_filter_property__NULL = 0, traveltime_api_request_time_filter_property__travel_time, traveltime_api_request_time_filter_property__distance, traveltime_api_request_time_filter_property__distance_breakdown, traveltime_api_request_time_filter_property__fares, traveltime_api_request_time_filter_property__route } traveltime_api_request_time_filter_property__e;

char* request_time_filter_property_request_time_filter_property_ToString(traveltime_api_request_time_filter_property__e request_time_filter_property);

traveltime_api_request_time_filter_property__e request_time_filter_property_request_time_filter_property_FromString(char* request_time_filter_property);

//cJSON *request_time_filter_property_request_time_filter_property_convertToJSON(traveltime_api_request_time_filter_property__e request_time_filter_property);

//traveltime_api_request_time_filter_property__e request_time_filter_property_request_time_filter_property_parseFromJSON(cJSON *request_time_filter_propertyJSON);

#endif /* _request_time_filter_property_H_ */

