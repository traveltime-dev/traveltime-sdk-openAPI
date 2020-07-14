/*
 * response_box.h
 *
 * 
 */

#ifndef _response_box_H_
#define _response_box_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_box_t response_box_t;




typedef struct response_box_t {
    double min_lat; //numeric
    double max_lat; //numeric
    double min_lng; //numeric
    double max_lng; //numeric

} response_box_t;

response_box_t *response_box_create(
    double min_lat,
    double max_lat,
    double min_lng,
    double max_lng
);

void response_box_free(response_box_t *response_box);

response_box_t *response_box_parseFromJSON(cJSON *response_boxJSON);

cJSON *response_box_convertToJSON(response_box_t *response_box);

#endif /* _response_box_H_ */

