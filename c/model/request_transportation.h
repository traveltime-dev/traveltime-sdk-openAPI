/*
 * request_transportation.h
 *
 * 
 */

#ifndef _request_transportation_H_
#define _request_transportation_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"

// Enum TYPE for request_transportation

typedef enum  { traveltime_platform_api_request_transportation_TYPE_NULL = 0, traveltime_platform_api_request_transportation_TYPE_cycling, traveltime_platform_api_request_transportation_TYPE_driving, traveltime_platform_api_request_transportation_TYPE_driving+train, traveltime_platform_api_request_transportation_TYPE_public_transport, traveltime_platform_api_request_transportation_TYPE_walking, traveltime_platform_api_request_transportation_TYPE_coach, traveltime_platform_api_request_transportation_TYPE_bus, traveltime_platform_api_request_transportation_TYPE_train, traveltime_platform_api_request_transportation_TYPE_ferry, traveltime_platform_api_request_transportation_TYPE_driving+ferry, traveltime_platform_api_request_transportation_TYPE_cycling+ferry } traveltime_platform_api_request_transportation_TYPE_e;

char* request_transportation_type_ToString(traveltime_platform_api_request_transportation_TYPE_e type);

traveltime_platform_api_request_transportation_TYPE_e request_transportation_type_FromString(char* type);



typedef struct request_transportation_t {
    traveltime_platform_api_request_transportation_TYPE_e type; //enum
    int pt_change_delay; //numeric
    int walking_time; //numeric
    int driving_time_to_station; //numeric
    int parking_time; //numeric
    int boarding_time; //numeric

} request_transportation_t;

request_transportation_t *request_transportation_create(
    traveltime_platform_api_request_transportation_TYPE_e type,
    int pt_change_delay,
    int walking_time,
    int driving_time_to_station,
    int parking_time,
    int boarding_time
);

void request_transportation_free(request_transportation_t *request_transportation);

request_transportation_t *request_transportation_parseFromJSON(cJSON *request_transportationJSON);

cJSON *request_transportation_convertToJSON(request_transportation_t *request_transportation);

#endif /* _request_transportation_H_ */

