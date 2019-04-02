#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_transportation_fast.h"

char* typerequest_transportation_fast_ToString(type_e type){
    char *typeArray[] =  { "public_transport","driving","driving+public_transport" };
    return typeArray[type];

}

type_e typerequest_transportation_fast_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "public_transport","driving","driving+public_transport" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
}

request_transportation_fast_t *request_transportation_fast_create(
    type_e type
    ) {
	request_transportation_fast_t *request_transportation_fast = malloc(sizeof(request_transportation_fast_t));
	request_transportation_fast->type = type;

	return request_transportation_fast;
}


void request_transportation_fast_free(request_transportation_fast_t *request_transportation_fast) {
    listEntry_t *listEntry;

	free(request_transportation_fast);
}

cJSON *request_transportation_fast_convertToJSON(request_transportation_fast_t *request_transportation_fast) {
	cJSON *item = cJSON_CreateObject();
	// request_transportation_fast->type
    if(cJSON_AddStringToObject(item, "type", typerequest_transportation_fast_ToString(request_transportation_fast->type)) == NULL) {
    goto fail; //String
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_transportation_fast_t *request_transportation_fast_parseFromJSON(char *jsonString){

    request_transportation_fast_t *request_transportation_fast = NULL;
    cJSON *request_transportation_fastJSON = cJSON_Parse(jsonString);
    if(request_transportation_fastJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_transportation_fast->type
    type_e typeVariable;
    cJSON *type = cJSON_GetObjectItemCaseSensitive(request_transportation_fastJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    typeVariable = typerequest_transportation_fast_FromString(type->valuestring);


    request_transportation_fast = request_transportation_fast_create (
        typeVariable
        );
 cJSON_Delete(request_transportation_fastJSON);
    return request_transportation_fast;
end:
    cJSON_Delete(request_transportation_fastJSON);
    return NULL;

}

