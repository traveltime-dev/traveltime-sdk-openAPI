/*
 * request_routes_property.h
 *
 * 
 */

#ifndef _request_routes_property_H_
#define _request_routes_property_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_routes_property_t request_routes_property_t;


// Enum  for request_routes_property

typedef enum { traveltime_api_request_routes_property__NULL = 0, traveltime_api_request_routes_property__travel_time, traveltime_api_request_routes_property__distance, traveltime_api_request_routes_property__fares, traveltime_api_request_routes_property__route } traveltime_api_request_routes_property__e;

char* request_routes_property_request_routes_property_ToString(traveltime_api_request_routes_property__e request_routes_property);

traveltime_api_request_routes_property__e request_routes_property_request_routes_property_FromString(char* request_routes_property);

//cJSON *request_routes_property_request_routes_property_convertToJSON(traveltime_api_request_routes_property__e request_routes_property);

//traveltime_api_request_routes_property__e request_routes_property_request_routes_property_parseFromJSON(cJSON *request_routes_propertyJSON);

#endif /* _request_routes_property_H_ */

