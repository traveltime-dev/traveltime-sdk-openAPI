/*
 * response_transportation_mode.h
 *
 * 
 */

#ifndef _response_transportation_mode_H_
#define _response_transportation_mode_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"


typedef enum  {  car, parking, boarding, walk, bike, train, rail_national, rail_overground, rail_underground, rail_dlr, bus, cable_car, plane, ferry, coach } response_transportation_mode_e;

char* response_transportation_mode_ToString(response_transportation_mode_e response_transportation_mode);

response_transportation_mode_e response_transportation_mode_FromString(char* response_transportation_mode);

cJSON *response_transportation_mode_convertToJSON(response_transportation_mode_e response_transportation_mode);

response_transportation_mode_e response_transportation_mode_parseFromJSON(cJSON *response_transportation_modeJSON);

#endif /* _response_transportation_mode_H_ */

