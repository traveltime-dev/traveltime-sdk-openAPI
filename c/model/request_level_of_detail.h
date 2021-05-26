/*
 * request_level_of_detail.h
 *
 * 
 */

#ifndef _request_level_of_detail_H_
#define _request_level_of_detail_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct request_level_of_detail_t request_level_of_detail_t;


// Enum SCALETYPE for request_level_of_detail

typedef enum  { traveltime_api_request_level_of_detail_SCALETYPE_NULL = 0, traveltime_api_request_level_of_detail_SCALETYPE_simple } traveltime_api_request_level_of_detail_SCALETYPE_e;

char* request_level_of_detail_scale_type_ToString(traveltime_api_request_level_of_detail_SCALETYPE_e scale_type);

traveltime_api_request_level_of_detail_SCALETYPE_e request_level_of_detail_scale_type_FromString(char* scale_type);

// Enum LEVEL for request_level_of_detail

typedef enum  { traveltime_api_request_level_of_detail_LEVEL_NULL = 0, traveltime_api_request_level_of_detail_LEVEL_lowest, traveltime_api_request_level_of_detail_LEVEL_low, traveltime_api_request_level_of_detail_LEVEL_medium, traveltime_api_request_level_of_detail_LEVEL_high, traveltime_api_request_level_of_detail_LEVEL_highest } traveltime_api_request_level_of_detail_LEVEL_e;

char* request_level_of_detail_level_ToString(traveltime_api_request_level_of_detail_LEVEL_e level);

traveltime_api_request_level_of_detail_LEVEL_e request_level_of_detail_level_FromString(char* level);



typedef struct request_level_of_detail_t {
    traveltime_api_request_level_of_detail_SCALETYPE_e scale_type; //enum
    traveltime_api_request_level_of_detail_LEVEL_e level; //enum

} request_level_of_detail_t;

request_level_of_detail_t *request_level_of_detail_create(
    traveltime_api_request_level_of_detail_SCALETYPE_e scale_type,
    traveltime_api_request_level_of_detail_LEVEL_e level
);

void request_level_of_detail_free(request_level_of_detail_t *request_level_of_detail);

request_level_of_detail_t *request_level_of_detail_parseFromJSON(cJSON *request_level_of_detailJSON);

cJSON *request_level_of_detail_convertToJSON(request_level_of_detail_t *request_level_of_detail);

#endif /* _request_level_of_detail_H_ */

