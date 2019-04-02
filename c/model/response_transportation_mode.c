#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_transportation_mode.h"


response_transportation_mode_t *response_transportation_mode_create(
    ) {
	response_transportation_mode_t *response_transportation_mode = malloc(sizeof(response_transportation_mode_t));

	return response_transportation_mode;
}


void response_transportation_mode_free(response_transportation_mode_t *response_transportation_mode) {
    listEntry_t *listEntry;

	free(response_transportation_mode);
}

cJSON *response_transportation_mode_convertToJSON(response_transportation_mode_t *response_transportation_mode) {
	cJSON *item = cJSON_CreateObject();
	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_transportation_mode_t *response_transportation_mode_parseFromJSON(char *jsonString){

    response_transportation_mode_t *response_transportation_mode = NULL;
    cJSON *response_transportation_modeJSON = cJSON_Parse(jsonString);
    if(response_transportation_modeJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }


    response_transportation_mode = response_transportation_mode_create (
        );
 cJSON_Delete(response_transportation_modeJSON);
    return response_transportation_mode;
end:
    cJSON_Delete(response_transportation_modeJSON);
    return NULL;

}

