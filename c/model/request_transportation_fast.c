#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_transportation_fast.h"


char* typerequest_transportation_fast_ToString(traveltime_api_request_transportation_fast_TYPE_e type) {
    char* typeArray[] =  { "NULL", "public_transport", "driving", "driving+public_transport" };
	return typeArray[type];
}

traveltime_api_request_transportation_fast_TYPE_e typerequest_transportation_fast_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "public_transport", "driving", "driving+public_transport" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

request_transportation_fast_t *request_transportation_fast_create(
    traveltime_api_request_transportation_fast_TYPE_e type
    ) {
    request_transportation_fast_t *request_transportation_fast_local_var = malloc(sizeof(request_transportation_fast_t));
    if (!request_transportation_fast_local_var) {
        return NULL;
    }
    request_transportation_fast_local_var->type = type;

    return request_transportation_fast_local_var;
}


void request_transportation_fast_free(request_transportation_fast_t *request_transportation_fast) {
    if(NULL == request_transportation_fast){
        return ;
    }
    listEntry_t *listEntry;
    free(request_transportation_fast);
}

cJSON *request_transportation_fast_convertToJSON(request_transportation_fast_t *request_transportation_fast) {
    cJSON *item = cJSON_CreateObject();

    // request_transportation_fast->type
    
    if(cJSON_AddStringToObject(item, "type", typerequest_transportation_fast_ToString(request_transportation_fast->type)) == NULL)
    {
    goto fail; //Enum
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_transportation_fast_t *request_transportation_fast_parseFromJSON(cJSON *request_transportation_fastJSON){

    request_transportation_fast_t *request_transportation_fast_local_var = NULL;

    // request_transportation_fast->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(request_transportation_fastJSON, "type");
    if (!type) {
        goto end;
    }

    traveltime_api_request_transportation_fast_TYPE_e typeVariable;
    
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = typerequest_transportation_fast_FromString(type->valuestring);


    request_transportation_fast_local_var = request_transportation_fast_create (
        typeVariable
        );

    return request_transportation_fast_local_var;
end:
    return NULL;

}
