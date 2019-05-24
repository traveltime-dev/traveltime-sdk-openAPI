/*
 * request_time_filter_postcodes_property.h
 *
 * 
 */

#ifndef _request_time_filter_postcodes_property_H_
#define _request_time_filter_postcodes_property_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"


typedef enum  {  travel_time, distance } request_time_filter_postcodes_property_e;

char* request_time_filter_postcodes_property_ToString(request_time_filter_postcodes_property_e request_time_filter_postcodes_property);

request_time_filter_postcodes_property_e request_time_filter_postcodes_property_FromString(char* request_time_filter_postcodes_property);

cJSON *request_time_filter_postcodes_property_convertToJSON(request_time_filter_postcodes_property_e request_time_filter_postcodes_property);

request_time_filter_postcodes_property_e request_time_filter_postcodes_property_parseFromJSON(cJSON *request_time_filter_postcodes_propertyJSON);

#endif /* _request_time_filter_postcodes_property_H_ */

