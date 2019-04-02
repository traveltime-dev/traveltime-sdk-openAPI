#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_box.h"


response_box_t *response_box_create(
    double min_lat,
    double max_lat,
    double min_lng,
    double max_lng
    ) {
	response_box_t *response_box = malloc(sizeof(response_box_t));
	response_box->min_lat = min_lat;
	response_box->max_lat = max_lat;
	response_box->min_lng = min_lng;
	response_box->max_lng = max_lng;

	return response_box;
}


void response_box_free(response_box_t *response_box) {
    listEntry_t *listEntry;

	free(response_box);
}

cJSON *response_box_convertToJSON(response_box_t *response_box) {
	cJSON *item = cJSON_CreateObject();
	// response_box->min_lat
    if(cJSON_AddNumberToObject(item, "min_lat", response_box->min_lat) == NULL) {
    goto fail; //Numeric
    }

	// response_box->max_lat
    if(cJSON_AddNumberToObject(item, "max_lat", response_box->max_lat) == NULL) {
    goto fail; //Numeric
    }

	// response_box->min_lng
    if(cJSON_AddNumberToObject(item, "min_lng", response_box->min_lng) == NULL) {
    goto fail; //Numeric
    }

	// response_box->max_lng
    if(cJSON_AddNumberToObject(item, "max_lng", response_box->max_lng) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_box_t *response_box_parseFromJSON(char *jsonString){

    response_box_t *response_box = NULL;
    cJSON *response_boxJSON = cJSON_Parse(jsonString);
    if(response_boxJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_box->min_lat
    cJSON *min_lat = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "min_lat");
    if(!cJSON_IsNumber(min_lat))
    {
    goto end; //Numeric
    }

    // response_box->max_lat
    cJSON *max_lat = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "max_lat");
    if(!cJSON_IsNumber(max_lat))
    {
    goto end; //Numeric
    }

    // response_box->min_lng
    cJSON *min_lng = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "min_lng");
    if(!cJSON_IsNumber(min_lng))
    {
    goto end; //Numeric
    }

    // response_box->max_lng
    cJSON *max_lng = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "max_lng");
    if(!cJSON_IsNumber(max_lng))
    {
    goto end; //Numeric
    }


    response_box = response_box_create (
        min_lat->valuedouble,
        max_lat->valuedouble,
        min_lng->valuedouble,
        max_lng->valuedouble
        );
 cJSON_Delete(response_boxJSON);
    return response_box;
end:
    cJSON_Delete(response_boxJSON);
    return NULL;

}

