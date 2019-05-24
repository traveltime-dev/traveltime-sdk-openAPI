/*
 * request_time_map_property.h
 *
 * 
 */

#ifndef _request_time_map_property_H_
#define _request_time_map_property_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"


typedef enum  {  is_only_walking } request_time_map_property_e;

char* request_time_map_property_ToString(request_time_map_property_e request_time_map_property);

request_time_map_property_e request_time_map_property_FromString(char* request_time_map_property);

cJSON *request_time_map_property_convertToJSON(request_time_map_property_e request_time_map_property);

request_time_map_property_e request_time_map_property_parseFromJSON(cJSON *request_time_map_propertyJSON);

#endif /* _request_time_map_property_H_ */

