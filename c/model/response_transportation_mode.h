/*
 * response_transportation_mode.h
 *
 * 
 */

#ifndef _response_transportation_mode_H_
#define _response_transportation_mode_H_

#include <string.h>
#include "cJSON.h"




typedef struct response_transportation_mode_t {

} response_transportation_mode_t;

response_transportation_mode_t *response_transportation_mode_create(
);

void response_transportation_mode_free(response_transportation_mode_t *response_transportation_mode);

response_transportation_mode_t *response_transportation_mode_parseFromJSON(char *jsonString);

cJSON *response_transportation_mode_convertToJSON(response_transportation_mode_t *response_transportation_mode);

#endif /* _response_transportation_mode_H_ */

