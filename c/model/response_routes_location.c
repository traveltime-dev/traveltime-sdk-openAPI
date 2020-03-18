#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_routes_location.h"



response_routes_location_t *response_routes_location_create(
    char *id,
    list_t *properties
    ) {
    response_routes_location_t *response_routes_location_local_var = malloc(sizeof(response_routes_location_t));
    if (!response_routes_location_local_var) {
        return NULL;
    }
    response_routes_location_local_var->id = id;
    response_routes_location_local_var->properties = properties;

    return response_routes_location_local_var;
}


void response_routes_location_free(response_routes_location_t *response_routes_location) {
    listEntry_t *listEntry;
    free(response_routes_location->id);
    list_ForEach(listEntry, response_routes_location->properties) {
        response_routes_properties_free(listEntry->data);
    }
    list_free(response_routes_location->properties);
    free(response_routes_location);
}

cJSON *response_routes_location_convertToJSON(response_routes_location_t *response_routes_location) {
    cJSON *item = cJSON_CreateObject();

    // response_routes_location->id
    if (!response_routes_location->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", response_routes_location->id) == NULL) {
    goto fail; //String
    }


    // response_routes_location->properties
    if (!response_routes_location->properties) {
        goto fail;
    }
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (response_routes_location->properties) {
    list_ForEach(propertiesListEntry, response_routes_location->properties) {
    cJSON *itemLocal = response_routes_properties_convertToJSON(propertiesListEntry->data);
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

response_routes_location_t *response_routes_location_parseFromJSON(cJSON *response_routes_locationJSON){

    response_routes_location_t *response_routes_location_local_var = NULL;

    // response_routes_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_routes_locationJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // response_routes_location->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_routes_locationJSON, "properties");
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
        response_routes_properties_t *propertiesItem = response_routes_properties_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, propertiesItem);
    }


    response_routes_location_local_var = response_routes_location_create (
        strdup(id->valuestring),
        propertiesList
        );

    return response_routes_location_local_var;
end:
    return NULL;

}
