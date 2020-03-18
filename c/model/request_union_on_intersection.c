#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_union_on_intersection.h"



request_union_on_intersection_t *request_union_on_intersection_create(
    char *id,
    list_t *search_ids
    ) {
    request_union_on_intersection_t *request_union_on_intersection_local_var = malloc(sizeof(request_union_on_intersection_t));
    if (!request_union_on_intersection_local_var) {
        return NULL;
    }
    request_union_on_intersection_local_var->id = id;
    request_union_on_intersection_local_var->search_ids = search_ids;

    return request_union_on_intersection_local_var;
}


void request_union_on_intersection_free(request_union_on_intersection_t *request_union_on_intersection) {
    listEntry_t *listEntry;
    free(request_union_on_intersection->id);
    list_ForEach(listEntry, request_union_on_intersection->search_ids) {
        free(listEntry->data);
    }
    list_free(request_union_on_intersection->search_ids);
    free(request_union_on_intersection);
}

cJSON *request_union_on_intersection_convertToJSON(request_union_on_intersection_t *request_union_on_intersection) {
    cJSON *item = cJSON_CreateObject();

    // request_union_on_intersection->id
    if (!request_union_on_intersection->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_union_on_intersection->id) == NULL) {
    goto fail; //String
    }


    // request_union_on_intersection->search_ids
    if (!request_union_on_intersection->search_ids) {
        goto fail;
    }
    
    cJSON *search_ids = cJSON_AddArrayToObject(item, "search_ids");
    if(search_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *search_idsListEntry;
    list_ForEach(search_idsListEntry, request_union_on_intersection->search_ids) {
    if(cJSON_AddStringToObject(search_ids, "", (char*)search_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_union_on_intersection_t *request_union_on_intersection_parseFromJSON(cJSON *request_union_on_intersectionJSON){

    request_union_on_intersection_t *request_union_on_intersection_local_var = NULL;

    // request_union_on_intersection->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_union_on_intersectionJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_union_on_intersection->search_ids
    cJSON *search_ids = cJSON_GetObjectItemCaseSensitive(request_union_on_intersectionJSON, "search_ids");
    if (!search_ids) {
        goto end;
    }

    list_t *search_idsList;
    
    cJSON *search_ids_local;
    if(!cJSON_IsArray(search_ids)) {
        goto end;//primitive container
    }
    search_idsList = list_create();

    cJSON_ArrayForEach(search_ids_local, search_ids)
    {
        if(!cJSON_IsString(search_ids_local))
        {
            goto end;
        }
        list_addElement(search_idsList , strdup(search_ids_local->valuestring));
    }


    request_union_on_intersection_local_var = request_union_on_intersection_create (
        strdup(id->valuestring),
        search_idsList
        );

    return request_union_on_intersection_local_var;
end:
    return NULL;

}
