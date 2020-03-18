#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_distance_breakdown_item.h"


    char* moderesponse_distance_breakdown_item_ToString(mode_e mode){
    char *modeArray[] =  { "car","parking","boarding","walk","bike","train","rail_national","rail_overground","rail_underground","rail_dlr","bus","cable_car","plane","ferry","coach" };
        return modeArray[mode];
    }

    mode_e moderesponse_distance_breakdown_item_FromString(char* mode){
    int stringToReturn = 0;
    char *modeArray[] =  { "car","parking","boarding","walk","bike","train","rail_national","rail_overground","rail_underground","rail_dlr","bus","cable_car","plane","ferry","coach" };
    size_t sizeofArray = sizeof(modeArray) / sizeof(modeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(mode, modeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
    }

response_distance_breakdown_item_t *response_distance_breakdown_item_create(
    int distance
    ) {
    response_distance_breakdown_item_t *response_distance_breakdown_item_local_var = malloc(sizeof(response_distance_breakdown_item_t));
    if (!response_distance_breakdown_item_local_var) {
        return NULL;
    }
    response_distance_breakdown_item_local_var->mode = mode;
    response_distance_breakdown_item_local_var->distance = distance;

    return response_distance_breakdown_item_local_var;
}


void response_distance_breakdown_item_free(response_distance_breakdown_item_t *response_distance_breakdown_item) {
    listEntry_t *listEntry;
    free(response_distance_breakdown_item);
}

cJSON *response_distance_breakdown_item_convertToJSON(response_distance_breakdown_item_t *response_distance_breakdown_item) {
    cJSON *item = cJSON_CreateObject();

    // response_distance_breakdown_item->mode
    


    // response_distance_breakdown_item->distance
    if (!response_distance_breakdown_item->distance) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "distance", response_distance_breakdown_item->distance) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_distance_breakdown_item_t *response_distance_breakdown_item_parseFromJSON(cJSON *response_distance_breakdown_itemJSON){

    response_distance_breakdown_item_t *response_distance_breakdown_item_local_var = NULL;

    // response_distance_breakdown_item->mode
    cJSON *mode = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "mode");
    if (!mode) {
        goto end;
    }


    // response_distance_breakdown_item->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "distance");
    if (!distance) {
        goto end;
    }

    
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }


    response_distance_breakdown_item_local_var = response_distance_breakdown_item_create (
        distance->valuedouble
        );

    return response_distance_breakdown_item_local_var;
end:
    return NULL;

}
