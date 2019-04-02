/*
 * request_range_full.h
 *
 * 
 */

#ifndef _request_range_full_H_
#define _request_range_full_H_

#include <string.h>
#include "cJSON.h"

typedef int bool;
#define true 1
#define false 0



typedef struct request_range_full_t {
        bool enabled; //boolean
        int max_results; //numeric
        int width; //numeric

} request_range_full_t;

request_range_full_t *request_range_full_create(
        bool enabled,
        int max_results,
        int width
);

void request_range_full_free(request_range_full_t *request_range_full);

request_range_full_t *request_range_full_parseFromJSON(char *jsonString);

cJSON *request_range_full_convertToJSON(request_range_full_t *request_range_full);

#endif /* _request_range_full_H_ */

