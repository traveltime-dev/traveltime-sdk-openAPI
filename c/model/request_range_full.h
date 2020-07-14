/*
 * request_range_full.h
 *
 * 
 */

#ifndef _request_range_full_H_
#define _request_range_full_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_range_full_t request_range_full_t;




typedef struct request_range_full_t {
    int enabled; //boolean
    int max_results; //numeric
    int width; //numeric

} request_range_full_t;

request_range_full_t *request_range_full_create(
    int enabled,
    int max_results,
    int width
);

void request_range_full_free(request_range_full_t *request_range_full);

request_range_full_t *request_range_full_parseFromJSON(cJSON *request_range_fullJSON);

cJSON *request_range_full_convertToJSON(request_range_full_t *request_range_full);

#endif /* _request_range_full_H_ */

