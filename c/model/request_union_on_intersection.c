#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_union_on_intersection.h"
#include "list.h"


request_union_on_intersection_t *request_union_on_intersection_create(
    char *id,
    list_t *search_ids
    ) {
	request_union_on_intersection_t *request_union_on_intersection = malloc(sizeof(request_union_on_intersection_t));
	request_union_on_intersection->id = id;
	request_union_on_intersection->search_ids = search_ids;

	return request_union_on_intersection;
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
    if(cJSON_AddStringToObject(item, "id", request_union_on_intersection->id) == NULL) {
    goto fail; //String
    }

	// request_union_on_intersection->search_ids
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
	cJSON_Delete(item);
	return NULL;
}

request_union_on_intersection_t *request_union_on_intersection_parseFromJSON(char *jsonString){

    request_union_on_intersection_t *request_union_on_intersection = NULL;
    cJSON *request_union_on_intersectionJSON = cJSON_Parse(jsonString);
    if(request_union_on_intersectionJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_union_on_intersection->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_union_on_intersectionJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // request_union_on_intersection->search_ids
    cJSON *search_ids;
    cJSON *search_idsJSON = cJSON_GetObjectItemCaseSensitive(request_union_on_intersectionJSON, "search_ids");
    if(!cJSON_IsArray(search_idsJSON)) {
        goto end;//primitive container
    }
    list_t *search_idsList = list_create();

    cJSON_ArrayForEach(search_ids, search_idsJSON)
    {
        if(!cJSON_IsString(search_ids))
        {
            goto end;
        }
        list_addElement(search_idsList , strdup(search_ids->valuestring));

    }


    request_union_on_intersection = request_union_on_intersection_create (
        strdup(id->valuestring),
        search_idsList
        );
 cJSON_Delete(request_union_on_intersectionJSON);
    return request_union_on_intersection;
end:
    cJSON_Delete(request_union_on_intersectionJSON);
    return NULL;

}
