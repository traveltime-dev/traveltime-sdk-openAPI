/*
 * request_range_no_max_results.h
 *
 * 
 */

#ifndef _request_range_no_max_results_H_
#define _request_range_no_max_results_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_range_no_max_results_t request_range_no_max_results_t;




typedef struct request_range_no_max_results_t {
    int enabled; //boolean
    int width; //numeric

} request_range_no_max_results_t;

request_range_no_max_results_t *request_range_no_max_results_create(
    int enabled,
    int width
);

void request_range_no_max_results_free(request_range_no_max_results_t *request_range_no_max_results);

request_range_no_max_results_t *request_range_no_max_results_parseFromJSON(cJSON *request_range_no_max_resultsJSON);

cJSON *request_range_no_max_results_convertToJSON(request_range_no_max_results_t *request_range_no_max_results);

#endif /* _request_range_no_max_results_H_ */

