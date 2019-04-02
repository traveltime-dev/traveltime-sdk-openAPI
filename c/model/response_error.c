#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_error.h"
#include "list.h"


response_error_t *response_error_create(
    int http_status,
    int error_code,
    char *description,
    char *documentation_link,
    list_t* additional_info
    // TODO map/hash not supported at the moment
    ) {
	response_error_t *response_error = malloc(sizeof(response_error_t));
	response_error->http_status = http_status;
	response_error->error_code = error_code;
	response_error->description = description;
	response_error->documentation_link = documentation_link;
	response_error->additional_info = additional_info;

	return response_error;
}


void response_error_free(response_error_t *response_error) {
    listEntry_t *listEntry;
    free(response_error->description);
    free(response_error->documentation_link);
	// TODO map/hash not supported at the moment

	free(response_error);
}

cJSON *response_error_convertToJSON(response_error_t *response_error) {
	cJSON *item = cJSON_CreateObject();
	// response_error->http_status
    if(cJSON_AddNumberToObject(item, "http_status", response_error->http_status) == NULL) {
    goto fail; //Numeric
    }

	// response_error->error_code
    if(cJSON_AddNumberToObject(item, "error_code", response_error->error_code) == NULL) {
    goto fail; //Numeric
    }

	// response_error->description
    if(cJSON_AddStringToObject(item, "description", response_error->description) == NULL) {
    goto fail; //String
    }

	// response_error->documentation_link
    if(cJSON_AddStringToObject(item, "documentation_link", response_error->documentation_link) == NULL) {
    goto fail; //String
    }

	// response_error->additional_info
	// map Container
	cJSON *additional_info = cJSON_AddObjectToObject(item, "additional_info");
	if(additional_info == NULL) {
		goto fail; //primitive map container
	}
    cJSON *localMapObject = cJSON_CreateObject(); //Memory free to be implemented in user code
	listEntry_t *additional_infoListEntry;
    list_ForEach(additional_infoListEntry, response_error->additional_info) {
        keyValuePair_t *localKeyValue = (keyValuePair_t*)additional_infoListEntry->data;
        if(cJSON_AddNumberToObject(localMapObject, localKeyValue->key, *(double *)localKeyValue->value) == NULL)
        {
            goto fail;
        }
        cJSON_AddItemToObject(additional_info,"", localMapObject);
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_error_t *response_error_parseFromJSON(char *jsonString){

    response_error_t *response_error = NULL;
    cJSON *response_errorJSON = cJSON_Parse(jsonString);
    if(response_errorJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_error->http_status
    cJSON *http_status = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "http_status");
    if(!cJSON_IsNumber(http_status))
    {
    goto end; //Numeric
    }

    // response_error->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "error_code");
    if(!cJSON_IsNumber(error_code))
    {
    goto end; //Numeric
    }

    // response_error->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "description");
    if(!cJSON_IsString(description) || (description->valuestring == NULL)){
    goto end; //String
    }

    // response_error->documentation_link
    cJSON *documentation_link = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "documentation_link");
    if(!cJSON_IsString(documentation_link) || (documentation_link->valuestring == NULL)){
    goto end; //String
    }

    // response_error->additional_info
    // map
    cJSON *list;
    cJSON *additional_infoJSON = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "additional_info");
    if(!cJSON_IsObject(additional_infoJSON)) {
        goto end;//primitive map container
    }
    list_t *listList = list_create();
    keyValuePair_t *localMapKeyPair;
    cJSON_ArrayForEach(list, additional_infoJSON)
    {
        if(!cJSON_IsNumber())
        {
            goto end;
        }
        localMapKeyPair = keyValuePair_create(strdup(->string),&->valuedouble );
        list_addElement(List , localMapKeyPair);

    }


    response_error = response_error_create (
        http_status->valuedouble,
        error_code->valuedouble,
        strdup(description->valuestring),
        strdup(documentation_link->valuestring),
        listList
        );
 cJSON_Delete(response_errorJSON);
    return response_error;
end:
    cJSON_Delete(response_errorJSON);
    return NULL;

}

