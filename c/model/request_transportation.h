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

                typedef enum  {  cycling, driving, driving+train, public_transport, walking, coach, bus, train, ferry, driving+ferry, cycling+ferry } type_e;

        char* type_ToString(type_e type);

        type_e type_FromString(char* type);


typedef struct request_transportation_t {
    type_e type; //enum
    int pt_change_delay; //numeric
    int walking_time; //numeric
    int driving_time_to_station; //numeric
    int parking_time; //numeric
    int boarding_time; //numeric

} request_transportation_t;

request_transportation_t *request_transportation_create(
    type_e type,
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

