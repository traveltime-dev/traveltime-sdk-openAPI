#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_travel_time_statistics.h"


response_travel_time_statistics_t *response_travel_time_statistics_create(
    int min,
    int max,
    int mean,
    int median
    ) {
	response_travel_time_statistics_t *response_travel_time_statistics = malloc(sizeof(response_travel_time_statistics_t));
	response_travel_time_statistics->min = min;
	response_travel_time_statistics->max = max;
	response_travel_time_statistics->mean = mean;
	response_travel_time_statistics->median = median;

	return response_travel_time_statistics;
}


void response_travel_time_statistics_free(response_travel_time_statistics_t *response_travel_time_statistics) {
    listEntry_t *listEntry;

	free(response_travel_time_statistics);
}

cJSON *response_travel_time_statistics_convertToJSON(response_travel_time_statistics_t *response_travel_time_statistics) {
	cJSON *item = cJSON_CreateObject();
	// response_travel_time_statistics->min
    if(cJSON_AddNumberToObject(item, "min", response_travel_time_statistics->min) == NULL) {
    goto fail; //Numeric
    }

	// response_travel_time_statistics->max
    if(cJSON_AddNumberToObject(item, "max", response_travel_time_statistics->max) == NULL) {
    goto fail; //Numeric
    }

	// response_travel_time_statistics->mean
    if(cJSON_AddNumberToObject(item, "mean", response_travel_time_statistics->mean) == NULL) {
    goto fail; //Numeric
    }

	// response_travel_time_statistics->median
    if(cJSON_AddNumberToObject(item, "median", response_travel_time_statistics->median) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_travel_time_statistics_t *response_travel_time_statistics_parseFromJSON(char *jsonString){

    response_travel_time_statistics_t *response_travel_time_statistics = NULL;
    cJSON *response_travel_time_statisticsJSON = cJSON_Parse(jsonString);
    if(response_travel_time_statisticsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_travel_time_statistics->min
    cJSON *min = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "min");
    if(!cJSON_IsNumber(min))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->max
    cJSON *max = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "max");
    if(!cJSON_IsNumber(max))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->mean
    cJSON *mean = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "mean");
    if(!cJSON_IsNumber(mean))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->median
    cJSON *median = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "median");
    if(!cJSON_IsNumber(median))
    {
    goto end; //Numeric
    }


    response_travel_time_statistics = response_travel_time_statistics_create (
        min->valuedouble,
        max->valuedouble,
        mean->valuedouble,
        median->valuedouble
        );
 cJSON_Delete(response_travel_time_statisticsJSON);
    return response_travel_time_statistics;
end:
    cJSON_Delete(response_travel_time_statisticsJSON);
    return NULL;

}

