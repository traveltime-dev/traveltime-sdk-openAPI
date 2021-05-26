#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_level_of_detail.h"


char* scale_typerequest_level_of_detail_ToString(traveltime_api_request_level_of_detail_SCALETYPE_e scale_type) {
    char* scale_typeArray[] =  { "NULL", "simple" };
	return scale_typeArray[scale_type];
}

traveltime_api_request_level_of_detail_SCALETYPE_e scale_typerequest_level_of_detail_FromString(char* scale_type){
    int stringToReturn = 0;
    char *scale_typeArray[] =  { "NULL", "simple" };
    size_t sizeofArray = sizeof(scale_typeArray) / sizeof(scale_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(scale_type, scale_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* levelrequest_level_of_detail_ToString(traveltime_api_request_level_of_detail_LEVEL_e level) {
    char* levelArray[] =  { "NULL", "lowest", "low", "medium", "high", "highest" };
	return levelArray[level];
}

traveltime_api_request_level_of_detail_LEVEL_e levelrequest_level_of_detail_FromString(char* level){
    int stringToReturn = 0;
    char *levelArray[] =  { "NULL", "lowest", "low", "medium", "high", "highest" };
    size_t sizeofArray = sizeof(levelArray) / sizeof(levelArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(level, levelArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

request_level_of_detail_t *request_level_of_detail_create(
    traveltime_api_request_level_of_detail_SCALETYPE_e scale_type,
    traveltime_api_request_level_of_detail_LEVEL_e level
    ) {
    request_level_of_detail_t *request_level_of_detail_local_var = malloc(sizeof(request_level_of_detail_t));
    if (!request_level_of_detail_local_var) {
        return NULL;
    }
    request_level_of_detail_local_var->scale_type = scale_type;
    request_level_of_detail_local_var->level = level;

    return request_level_of_detail_local_var;
}


void request_level_of_detail_free(request_level_of_detail_t *request_level_of_detail) {
    if(NULL == request_level_of_detail){
        return ;
    }
    listEntry_t *listEntry;
    free(request_level_of_detail);
}

cJSON *request_level_of_detail_convertToJSON(request_level_of_detail_t *request_level_of_detail) {
    cJSON *item = cJSON_CreateObject();

    // request_level_of_detail->scale_type
    
    if(cJSON_AddStringToObject(item, "scale_type", scale_typerequest_level_of_detail_ToString(request_level_of_detail->scale_type)) == NULL)
    {
    goto fail; //Enum
    }


    // request_level_of_detail->level
    
    if(cJSON_AddStringToObject(item, "level", levelrequest_level_of_detail_ToString(request_level_of_detail->level)) == NULL)
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

request_level_of_detail_t *request_level_of_detail_parseFromJSON(cJSON *request_level_of_detailJSON){

    request_level_of_detail_t *request_level_of_detail_local_var = NULL;

    // request_level_of_detail->scale_type
    cJSON *scale_type = cJSON_GetObjectItemCaseSensitive(request_level_of_detailJSON, "scale_type");
    if (!scale_type) {
        goto end;
    }

    traveltime_api_request_level_of_detail_SCALETYPE_e scale_typeVariable;
    
    if(!cJSON_IsString(scale_type))
    {
    goto end; //Enum
    }
    scale_typeVariable = scale_typerequest_level_of_detail_FromString(scale_type->valuestring);

    // request_level_of_detail->level
    cJSON *level = cJSON_GetObjectItemCaseSensitive(request_level_of_detailJSON, "level");
    if (!level) {
        goto end;
    }

    traveltime_api_request_level_of_detail_LEVEL_e levelVariable;
    
    if(!cJSON_IsString(level))
    {
    goto end; //Enum
    }
    levelVariable = levelrequest_level_of_detail_FromString(level->valuestring);


    request_level_of_detail_local_var = request_level_of_detail_create (
        scale_typeVariable,
        levelVariable
        );

    return request_level_of_detail_local_var;
end:
    return NULL;

}
