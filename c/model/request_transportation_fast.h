/*
 * request_transportation_fast.h
 *
 * 
 */

#ifndef _request_transportation_fast_H_
#define _request_transportation_fast_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_transportation_fast_t request_transportation_fast_t;


// Enum TYPE for request_transportation_fast

typedef enum  { traveltime_api_request_transportation_fast_TYPE_NULL = 0, traveltime_api_request_transportation_fast_TYPE_public_transport, traveltime_api_request_transportation_fast_TYPE_driving, traveltime_api_request_transportation_fast_TYPE_driving+public_transport } traveltime_api_request_transportation_fast_TYPE_e;

char* request_transportation_fast_type_ToString(traveltime_api_request_transportation_fast_TYPE_e type);

traveltime_api_request_transportation_fast_TYPE_e request_transportation_fast_type_FromString(char* type);



typedef struct request_transportation_fast_t {
    traveltime_api_request_transportation_fast_TYPE_e type; //enum

} request_transportation_fast_t;

request_transportation_fast_t *request_transportation_fast_create(
    traveltime_api_request_transportation_fast_TYPE_e type
);

void request_transportation_fast_free(request_transportation_fast_t *request_transportation_fast);

request_transportation_fast_t *request_transportation_fast_parseFromJSON(cJSON *request_transportation_fastJSON);

cJSON *request_transportation_fast_convertToJSON(request_transportation_fast_t *request_transportation_fast);

#endif /* _request_transportation_fast_H_ */

