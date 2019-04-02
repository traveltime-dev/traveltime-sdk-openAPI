#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_shape.h"
#include "coords.h"
#include "list.h"


response_shape_t *response_shape_create(
    list_t *shell,
    list_t *holes
    ) {
	response_shape_t *response_shape = malloc(sizeof(response_shape_t));
	response_shape->shell = shell;
	response_shape->holes = holes;

	return response_shape;
}


void response_shape_free(response_shape_t *response_shape) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_shape->shell) {
		coords_free(listEntry->data);
	}
	list_free(response_shape->shell);
		list_ForEach(listEntry, response_shape->holes) {
		list_free(listEntry->data);
	}
	list_free(response_shape->holes);

	free(response_shape);
}

cJSON *response_shape_convertToJSON(response_shape_t *response_shape) {
	cJSON *item = cJSON_CreateObject();
	// response_shape->shell
    cJSON *shell = cJSON_AddArrayToObject(item, "shell");
	if(shell == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *shellListEntry;
	list_ForEach(shellListEntry, response_shape->shell) {
		cJSON *item = coords_convertToJSON(shellListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(shell, item);
	}

	// response_shape->holes
    cJSON *holes = cJSON_AddArrayToObject(item, "holes");
	if(holes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *holesListEntry;
	list_ForEach(holesListEntry, response_shape->holes) {
		cJSON *item = list_convertToJSON(holesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(holes, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_shape_t *response_shape_parseFromJSON(char *jsonString){

    response_shape_t *response_shape = NULL;
    cJSON *response_shapeJSON = cJSON_Parse(jsonString);
    if(response_shapeJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_shape->shell
    cJSON *shell;
    cJSON *shellJSON = cJSON_GetObjectItemCaseSensitive(response_shapeJSON,"shell");
    if(!cJSON_IsArray(shellJSON)){
        goto end; //nonprimitive container
    }

    list_t *shellList = list_create();

    cJSON_ArrayForEach(shell,shellJSON )
    {
        if(!cJSON_IsObject(shell)){
            goto end;
        }
		char *JSONData = cJSON_Print(shell);
        coords_t *shellItem = coords_parseFromJSON(JSONData);

        list_addElement(shellList, shellItem);
        free(JSONData);
    }

    // response_shape->holes
    cJSON *holes;
    cJSON *holesJSON = cJSON_GetObjectItemCaseSensitive(response_shapeJSON,"holes");
    if(!cJSON_IsArray(holesJSON)){
        goto end; //nonprimitive container
    }

    list_t *holesList = list_create();

    cJSON_ArrayForEach(holes,holesJSON )
    {
        if(!cJSON_IsObject(holes)){
            goto end;
        }
		char *JSONData = cJSON_Print(holes);
        list_t *holesItem = list_parseFromJSON(JSONData);

        list_addElement(holesList, holesItem);
        free(JSONData);
    }


    response_shape = response_shape_create (
        shellList,
        holesList
        );
 cJSON_Delete(response_shapeJSON);
    return response_shape;
end:
    cJSON_Delete(response_shapeJSON);
    return NULL;

}

