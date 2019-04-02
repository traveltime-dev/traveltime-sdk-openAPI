#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_arrival_time_period.h"


request_arrival_time_period_t *request_arrival_time_period_create(
    ) {
	request_arrival_time_period_t *request_arrival_time_period = malloc(sizeof(request_arrival_time_period_t));

	return request_arrival_time_period;
}


void request_arrival_time_period_free(request_arrival_time_period_t *request_arrival_time_period) {
    listEntry_t *listEntry;

	free(request_arrival_time_period);
}

cJSON *request_arrival_time_period_convertToJSON(request_arrival_time_period_t *request_arrival_time_period) {
	cJSON *item = cJSON_CreateObject();
	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_arrival_time_period_t *request_arrival_time_period_parseFromJSON(char *jsonString){

    request_arrival_time_period_t *request_arrival_time_period = NULL;
    cJSON *request_arrival_time_periodJSON = cJSON_Parse(jsonString);
    if(request_arrival_time_periodJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }


    request_arrival_time_period = request_arrival_time_period_create (
        );
 cJSON_Delete(request_arrival_time_periodJSON);
    return request_arrival_time_period;
end:
    cJSON_Delete(request_arrival_time_periodJSON);
    return NULL;

}

