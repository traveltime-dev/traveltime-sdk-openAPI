#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_box.h"



response_box_t *response_box_create(
    double min_lat,
    double max_lat,
    double min_lng,
    double max_lng
    ) {
    response_box_t *response_box_local_var = malloc(sizeof(response_box_t));
    if (!response_box_local_var) {
        return NULL;
    }
    response_box_local_var->min_lat = min_lat;
    response_box_local_var->max_lat = max_lat;
    response_box_local_var->min_lng = min_lng;
    response_box_local_var->max_lng = max_lng;

    return response_box_local_var;
}


void response_box_free(response_box_t *response_box) {
    if(NULL == response_box){
        return ;
    }
    listEntry_t *listEntry;
    free(response_box);
}

cJSON *response_box_convertToJSON(response_box_t *response_box) {
    cJSON *item = cJSON_CreateObject();

    // response_box->min_lat
    if (!response_box->min_lat) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "min_lat", response_box->min_lat) == NULL) {
    goto fail; //Numeric
    }


    // response_box->max_lat
    if (!response_box->max_lat) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "max_lat", response_box->max_lat) == NULL) {
    goto fail; //Numeric
    }


    // response_box->min_lng
    if (!response_box->min_lng) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "min_lng", response_box->min_lng) == NULL) {
    goto fail; //Numeric
    }


    // response_box->max_lng
    if (!response_box->max_lng) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "max_lng", response_box->max_lng) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_box_t *response_box_parseFromJSON(cJSON *response_boxJSON){

    response_box_t *response_box_local_var = NULL;

    // response_box->min_lat
    cJSON *min_lat = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "min_lat");
    if (!min_lat) {
        goto end;
    }

    
    if(!cJSON_IsNumber(min_lat))
    {
    goto end; //Numeric
    }

    // response_box->max_lat
    cJSON *max_lat = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "max_lat");
    if (!max_lat) {
        goto end;
    }

    
    if(!cJSON_IsNumber(max_lat))
    {
    goto end; //Numeric
    }

    // response_box->min_lng
    cJSON *min_lng = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "min_lng");
    if (!min_lng) {
        goto end;
    }

    
    if(!cJSON_IsNumber(min_lng))
    {
    goto end; //Numeric
    }

    // response_box->max_lng
    cJSON *max_lng = cJSON_GetObjectItemCaseSensitive(response_boxJSON, "max_lng");
    if (!max_lng) {
        goto end;
    }

    
    if(!cJSON_IsNumber(max_lng))
    {
    goto end; //Numeric
    }


    response_box_local_var = response_box_create (
        min_lat->valuedouble,
        max_lat->valuedouble,
        min_lng->valuedouble,
        max_lng->valuedouble
        );

    return response_box_local_var;
end:
    return NULL;

}
