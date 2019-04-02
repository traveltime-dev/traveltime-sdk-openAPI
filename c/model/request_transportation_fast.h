/*
 * request_transportation_fast.h
 *
 * 
 */

#ifndef _request_transportation_fast_H_
#define _request_transportation_fast_H_

#include <string.h>
#include "cJSON.h"


typedef enum  {  public_transport, driving, driving+public_transport } type_e;

char* typerequest_transportation_fast_ToString(type_e type);

type_e typerequest_transportation_fast_FromString(char* type);

typedef struct request_transportation_fast_t {
        type_e type; //enum string

} request_transportation_fast_t;

request_transportation_fast_t *request_transportation_fast_create(
        type_e type
);

void request_transportation_fast_free(request_transportation_fast_t *request_transportation_fast);

request_transportation_fast_t *request_transportation_fast_parseFromJSON(char *jsonString);

cJSON *request_transportation_fast_convertToJSON(request_transportation_fast_t *request_transportation_fast);

#endif /* _request_transportation_fast_H_ */

