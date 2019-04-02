#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_routes_property.h"


request_routes_property_t *request_routes_property_create(
    ) {
	request_routes_property_t *request_routes_property = malloc(sizeof(request_routes_property_t));

	return request_routes_property;
}


void request_routes_property_free(request_routes_property_t *request_routes_property) {
    listEntry_t *listEntry;

	free(request_routes_property);
}

cJSON *request_routes_property_convertToJSON(request_routes_property_t *request_routes_property) {
	cJSON *item = cJSON_CreateObject();
	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_routes_property_t *request_routes_property_parseFromJSON(char *jsonString){

    request_routes_property_t *request_routes_property = NULL;
    cJSON *request_routes_propertyJSON = cJSON_Parse(jsonString);
    if(request_routes_propertyJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }


    request_routes_property = request_routes_property_create (
        );
 cJSON_Delete(request_routes_propertyJSON);
    return request_routes_property;
end:
    cJSON_Delete(request_routes_propertyJSON);
    return NULL;

}

