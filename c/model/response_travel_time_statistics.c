#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_travel_time_statistics.h"



response_travel_time_statistics_t *response_travel_time_statistics_create(
    int min,
    int max,
    int mean,
    int median
    ) {
	response_travel_time_statistics_t *response_travel_time_statistics_local_var = malloc(sizeof(response_travel_time_statistics_t));
    if (!response_travel_time_statistics_local_var) {
        return NULL;
    }
	response_travel_time_statistics_local_var->min = min;
	response_travel_time_statistics_local_var->max = max;
	response_travel_time_statistics_local_var->mean = mean;
	response_travel_time_statistics_local_var->median = median;

	return response_travel_time_statistics_local_var;
}


void response_travel_time_statistics_free(response_travel_time_statistics_t *response_travel_time_statistics) {
    listEntry_t *listEntry;
	free(response_travel_time_statistics);
}

cJSON *response_travel_time_statistics_convertToJSON(response_travel_time_statistics_t *response_travel_time_statistics) {
	cJSON *item = cJSON_CreateObject();

	// response_travel_time_statistics->min
    if (!response_travel_time_statistics->min) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "min", response_travel_time_statistics->min) == NULL) {
    goto fail; //Numeric
    }


	// response_travel_time_statistics->max
    if (!response_travel_time_statistics->max) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "max", response_travel_time_statistics->max) == NULL) {
    goto fail; //Numeric
    }


	// response_travel_time_statistics->mean
    if (!response_travel_time_statistics->mean) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "mean", response_travel_time_statistics->mean) == NULL) {
    goto fail; //Numeric
    }


	// response_travel_time_statistics->median
    if (!response_travel_time_statistics->median) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "median", response_travel_time_statistics->median) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_travel_time_statistics_t *response_travel_time_statistics_parseFromJSON(cJSON *response_travel_time_statisticsJSON){

    response_travel_time_statistics_t *response_travel_time_statistics_local_var = NULL;

    // response_travel_time_statistics->min
    cJSON *min = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "min");
    if (!min) {
        goto end;
    }

    
    if(!cJSON_IsNumber(min))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->max
    cJSON *max = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "max");
    if (!max) {
        goto end;
    }

    
    if(!cJSON_IsNumber(max))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->mean
    cJSON *mean = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "mean");
    if (!mean) {
        goto end;
    }

    
    if(!cJSON_IsNumber(mean))
    {
    goto end; //Numeric
    }

    // response_travel_time_statistics->median
    cJSON *median = cJSON_GetObjectItemCaseSensitive(response_travel_time_statisticsJSON, "median");
    if (!median) {
        goto end;
    }

    
    if(!cJSON_IsNumber(median))
    {
    goto end; //Numeric
    }


    response_travel_time_statistics_local_var = response_travel_time_statistics_create (
        min->valuedouble,
        max->valuedouble,
        mean->valuedouble,
        median->valuedouble
        );

    return response_travel_time_statistics_local_var;
end:
    return NULL;

}
