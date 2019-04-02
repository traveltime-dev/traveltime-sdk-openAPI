#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_property.h"


request_time_filter_property_t *request_time_filter_property_create(
    ) {
	request_time_filter_property_t *request_time_filter_property = malloc(sizeof(request_time_filter_property_t));

	return request_time_filter_property;
}


void request_time_filter_property_free(request_time_filter_property_t *request_time_filter_property) {
    listEntry_t *listEntry;

	free(request_time_filter_property);
}

cJSON *request_time_filter_property_convertToJSON(request_time_filter_property_t *request_time_filter_property) {
	cJSON *item = cJSON_CreateObject();
	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_time_filter_property_t *request_time_filter_property_parseFromJSON(char *jsonString){

    request_time_filter_property_t *request_time_filter_property = NULL;
    cJSON *request_time_filter_propertyJSON = cJSON_Parse(jsonString);
    if(request_time_filter_propertyJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }


    request_time_filter_property = request_time_filter_property_create (
        );
 cJSON_Delete(request_time_filter_propertyJSON);
    return request_time_filter_property;
end:
    cJSON_Delete(request_time_filter_propertyJSON);
    return NULL;

}

