/*
 * request_range_no_max_results.h
 *
 * 
 */

#ifndef _request_range_no_max_results_H_
#define _request_range_no_max_results_H_

#include <string.h>
#include "cJSON.h"

typedef int bool;
#define true 1
#define false 0



typedef struct request_range_no_max_results_t {
        bool enabled; //boolean
        int width; //numeric

} request_range_no_max_results_t;

request_range_no_max_results_t *request_range_no_max_results_create(
        bool enabled,
        int width
);

void request_range_no_max_results_free(request_range_no_max_results_t *request_range_no_max_results);

request_range_no_max_results_t *request_range_no_max_results_parseFromJSON(char *jsonString);

cJSON *request_range_no_max_results_convertToJSON(request_range_no_max_results_t *request_range_no_max_results);

#endif /* _request_range_no_max_results_H_ */

