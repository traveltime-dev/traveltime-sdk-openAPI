#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_shape.h"



response_shape_t *response_shape_create(
    list_t *shell,
    list_t *holes
    ) {
	response_shape_t *response_shape_local_var = malloc(sizeof(response_shape_t));
    if (!response_shape_local_var) {
        return NULL;
    }
	response_shape_local_var->shell = shell;
	response_shape_local_var->holes = holes;

	return response_shape_local_var;
}


void response_shape_free(response_shape_t *response_shape) {
    listEntry_t *listEntry;
	list_ForEach(listEntry, response_shape->shell) {
		coords_free(listEntry->data);
	}
	list_free(response_shape->shell);
	list_ForEach(listEntry, response_shape->holes) {
		free(listEntry->data);
	}
	list_free(response_shape->holes);
	free(response_shape);
}

cJSON *response_shape_convertToJSON(response_shape_t *response_shape) {
	cJSON *item = cJSON_CreateObject();

	// response_shape->shell
    if (!response_shape->shell) {
        goto fail;
    }
    
    cJSON *shell = cJSON_AddArrayToObject(item, "shell");
    if(shell == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shellListEntry;
    if (response_shape->shell) {
    list_ForEach(shellListEntry, response_shape->shell) {
    cJSON *itemLocal = coords_convertToJSON(shellListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shell, itemLocal);
    }
    }


	// response_shape->holes
    if (!response_shape->holes) {
        goto fail;
    }
    
	cJSON *holes = cJSON_AddArrayToObject(item, "holes");
	if(holes == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *holesListEntry;
    list_ForEach(holesListEntry, response_shape->holes) {
    if(cJSON_AddNumberToObject(holes, "", *(double *)holesListEntry->data) == NULL)
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

response_shape_t *response_shape_parseFromJSON(cJSON *response_shapeJSON){

    response_shape_t *response_shape_local_var = NULL;

    // response_shape->shell
    cJSON *shell = cJSON_GetObjectItemCaseSensitive(response_shapeJSON, "shell");
    if (!shell) {
        goto end;
    }

    list_t *shellList;
    
    cJSON *shell_local_nonprimitive;
    if(!cJSON_IsArray(shell)){
        goto end; //nonprimitive container
    }

    shellList = list_create();

    cJSON_ArrayForEach(shell_local_nonprimitive,shell )
    {
        if(!cJSON_IsObject(shell_local_nonprimitive)){
            goto end;
        }
        coords_t *shellItem = coords_parseFromJSON(shell_local_nonprimitive);

        list_addElement(shellList, shellItem);
    }

    // response_shape->holes
    cJSON *holes = cJSON_GetObjectItemCaseSensitive(response_shapeJSON, "holes");
    if (!holes) {
        goto end;
    }

    list_t *holesList;
    
    cJSON *holes_local;
    if(!cJSON_IsArray(holes)) {
        goto end;//primitive container
    }
    holesList = list_create();

    cJSON_ArrayForEach(holes_local, holes)
    {
        if(!cJSON_IsNumber(holes_local))
        {
            goto end;
        }
        list_addElement(holesList , &holes_local->valuedouble);
    }


    response_shape_local_var = response_shape_create (
        shellList,
        holesList
        );

    return response_shape_local_var;
end:
    return NULL;

}
