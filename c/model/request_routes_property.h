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


typedef enum  {  travel_time, distance, fares, route } request_routes_property_e;

char* request_routes_property_ToString(request_routes_property_e request_routes_property);

request_routes_property_e request_routes_property_FromString(char* request_routes_property);

cJSON *request_routes_property_convertToJSON(request_routes_property_e request_routes_property);

request_routes_property_e request_routes_property_parseFromJSON(cJSON *request_routes_propertyJSON);

#endif /* _request_routes_property_H_ */

