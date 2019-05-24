#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_error.h"



response_error_t *response_error_create(
    int http_status,
    int error_code,
    char *description,
    char *documentation_link,
    list_t* additional_info
    ) {
	response_error_t *response_error_local_var = malloc(sizeof(response_error_t));
    if (!response_error_local_var) {
        return NULL;
    }
	response_error_local_var->http_status = http_status;
	response_error_local_var->error_code = error_code;
	response_error_local_var->description = description;
	response_error_local_var->documentation_link = documentation_link;
	response_error_local_var->additional_info = additional_info;

	return response_error_local_var;
}


void response_error_free(response_error_t *response_error) {
    listEntry_t *listEntry;
    free(response_error->description);
    free(response_error->documentation_link);
	list_ForEach(listEntry, response_error->additional_info) {
		keyValuePair_t *localMapKeyPair = (keyValuePair_t*) listEntry->data;
        free (localKeyValue->key);
        free (localKeyValue->value);
	}
	list_free(response_error->additional_info);
	free(response_error);
}

cJSON *response_error_convertToJSON(response_error_t *response_error) {
	cJSON *item = cJSON_CreateObject();

	// response_error->http_status
    if(response_error->http_status) { 
    if(cJSON_AddNumberToObject(item, "http_status", response_error->http_status) == NULL) {
    goto fail; //Numeric
    }
     } 


	// response_error->error_code
    if(response_error->error_code) { 
    if(cJSON_AddNumberToObject(item, "error_code", response_error->error_code) == NULL) {
    goto fail; //Numeric
    }
     } 


	// response_error->description
    if(response_error->description) { 
    if(cJSON_AddStringToObject(item, "description", response_error->description) == NULL) {
    goto fail; //String
    }
     } 


	// response_error->documentation_link
    if(response_error->documentation_link) { 
    if(cJSON_AddStringToObject(item, "documentation_link", response_error->documentation_link) == NULL) {
    goto fail; //String
    }
     } 


	// response_error->additional_info
    if(response_error->additional_info) { 
	cJSON *additional_info = cJSON_AddObjectToObject(item, "additional_info");
	if(additional_info == NULL) {
		goto fail; //primitive map container
	}
    cJSON *localMapObject = cJSON_CreateObject(); //Memory free to be implemented in user code
	listEntry_t *additional_infoListEntry;
    if (response_error->additional_info) {
    list_ForEach(additional_infoListEntry, response_error->additional_info) {
        keyValuePair_t *localKeyValue = (keyValuePair_t*)additional_infoListEntry->data;
        if(cJSON_AddNumberToObject(localMapObject, localKeyValue->key, *(double *)localKeyValue->value) == NULL)
        {
            goto fail;
        }
        cJSON_AddItemToObject(additional_info,"", localMapObject);
    }
    }
     } 

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_error_t *response_error_parseFromJSON(cJSON *response_errorJSON){

    response_error_t *response_error_local_var = NULL;

    // response_error->http_status
    cJSON *http_status = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "http_status");
    if (http_status) { 
    if(!cJSON_IsNumber(http_status))
    {
    goto end; //Numeric
    }
    }

    // response_error->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "error_code");
    if (error_code) { 
    if(!cJSON_IsNumber(error_code))
    {
    goto end; //Numeric
    }
    }

    // response_error->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description))
    {
    goto end; //String
    }
    }

    // response_error->documentation_link
    cJSON *documentation_link = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "documentation_link");
    if (documentation_link) { 
    if(!cJSON_IsString(documentation_link))
    {
    goto end; //String
    }
    }

    // response_error->additional_info
    cJSON *additional_info = cJSON_GetObjectItemCaseSensitive(response_errorJSON, "additional_info");
    list_t *List;
    if (additional_info) { 
    cJSON *_local_map;
    if(!cJSON_IsObject(additional_info)) {
        goto end;//primitive map container
    }
    List = list_create();
    keyValuePair_t *localMapKeyPair;
    cJSON_ArrayForEach(_local_map, additional_info)
    {
        if(!cJSON_IsNumber(_local_map))
        {
            goto end;
        }
        localMapKeyPair = keyValuePair_create(strdup(_local_map->string),&_local_map->valuedouble );
        list_addElement(List , localMapKeyPair);
    }
    }


    response_error_local_var = response_error_create (
        http_status ? http_status->valuedouble : 0,
        error_code ? error_code->valuedouble : 0,
        description ? strdup(description->valuestring) : NULL,
        documentation_link ? strdup(documentation_link->valuestring) : NULL,
        additional_info ? List : NULL
        );

    return response_error_local_var;
end:
    return NULL;

}
