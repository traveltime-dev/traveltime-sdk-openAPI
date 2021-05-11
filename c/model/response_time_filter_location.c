#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_location.h"



response_time_filter_location_t *response_time_filter_location_create(
    char *id,
    list_t *properties
    ) {
    response_time_filter_location_t *response_time_filter_location_local_var = malloc(sizeof(response_time_filter_location_t));
    if (!response_time_filter_location_local_var) {
        return NULL;
    }
    response_time_filter_location_local_var->id = id;
    response_time_filter_location_local_var->properties = properties;

    return response_time_filter_location_local_var;
}


void response_time_filter_location_free(response_time_filter_location_t *response_time_filter_location) {
    if(NULL == response_time_filter_location){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_location->id) {
        free(response_time_filter_location->id);
        response_time_filter_location->id = NULL;
    }
    if (response_time_filter_location->properties) {
        list_ForEach(listEntry, response_time_filter_location->properties) {
            response_time_filter_properties_free(listEntry->data);
        }
        list_free(response_time_filter_location->properties);
        response_time_filter_location->properties = NULL;
    }
    free(response_time_filter_location);
}

cJSON *response_time_filter_location_convertToJSON(response_time_filter_location_t *response_time_filter_location) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_location->id
    if (!response_time_filter_location->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", response_time_filter_location->id) == NULL) {
    goto fail; //String
    }


    // response_time_filter_location->properties
    if (!response_time_filter_location->properties) {
        goto fail;
    }
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (response_time_filter_location->properties) {
    list_ForEach(propertiesListEntry, response_time_filter_location->properties) {
    cJSON *itemLocal = response_time_filter_properties_convertToJSON(propertiesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(properties, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_filter_location_t *response_time_filter_location_parseFromJSON(cJSON *response_time_filter_locationJSON){

    response_time_filter_location_t *response_time_filter_location_local_var = NULL;

    // response_time_filter_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_time_filter_locationJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // response_time_filter_location->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_filter_locationJSON, "properties");
    if (!properties) {
        goto end;
    }

    list_t *propertiesList;
    
    cJSON *properties_local_nonprimitive;
    if(!cJSON_IsArray(properties)){
        goto end; //nonprimitive container
    }

    propertiesList = list_create();

    cJSON_ArrayForEach(properties_local_nonprimitive,properties )
    {
        if(!cJSON_IsObject(properties_local_nonprimitive)){
            goto end;
        }
        response_time_filter_properties_t *propertiesItem = response_time_filter_properties_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, propertiesItem);
    }


    response_time_filter_location_local_var = response_time_filter_location_create (
        strdup(id->valuestring),
        propertiesList
        );

    return response_time_filter_location_local_var;
end:
    return NULL;

}
