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

                typedef enum  {  public_transport, driving, driving+public_transport } type_e;

        char* type_ToString(type_e type);

        type_e type_FromString(char* type);


typedef struct request_transportation_fast_t {
    type_e type; //enum

} request_transportation_fast_t;

request_transportation_fast_t *request_transportation_fast_create(
    type_e type
);

void request_transportation_fast_free(request_transportation_fast_t *request_transportation_fast);

request_transportation_fast_t *request_transportation_fast_parseFromJSON(cJSON *request_transportation_fastJSON);

cJSON *request_transportation_fast_convertToJSON(request_transportation_fast_t *request_transportation_fast);

#endif /* _request_transportation_fast_H_ */

