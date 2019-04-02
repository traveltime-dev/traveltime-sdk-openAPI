#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_fast_arrival_searches.h"
#include "list.h"
#include "request_time_filter_fast_arrival_many_to_one_search.h"
#include "request_time_filter_fast_arrival_one_to_many_search.h"


request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_create(
    list_t *many_to_one,
    list_t *one_to_many
    ) {
	request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches = malloc(sizeof(request_time_filter_fast_arrival_searches_t));
	request_time_filter_fast_arrival_searches->many_to_one = many_to_one;
	request_time_filter_fast_arrival_searches->one_to_many = one_to_many;

	return request_time_filter_fast_arrival_searches;
}


void request_time_filter_fast_arrival_searches_free(request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, request_time_filter_fast_arrival_searches->many_to_one) {
		request_time_filter_fast_arrival_many_to_one_search_free(listEntry->data);
	}
	list_free(request_time_filter_fast_arrival_searches->many_to_one);
		list_ForEach(listEntry, request_time_filter_fast_arrival_searches->one_to_many) {
		request_time_filter_fast_arrival_one_to_many_search_free(listEntry->data);
	}
	list_free(request_time_filter_fast_arrival_searches->one_to_many);

	free(request_time_filter_fast_arrival_searches);
}

cJSON *request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches) {
	cJSON *item = cJSON_CreateObject();
	// request_time_filter_fast_arrival_searches->many_to_one
    cJSON *many_to_one = cJSON_AddArrayToObject(item, "many_to_one");
	if(many_to_one == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *many_to_oneListEntry;
	list_ForEach(many_to_oneListEntry, request_time_filter_fast_arrival_searches->many_to_one) {
		cJSON *item = request_time_filter_fast_arrival_many_to_one_search_convertToJSON(many_to_oneListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(many_to_one, item);
	}

	// request_time_filter_fast_arrival_searches->one_to_many
    cJSON *one_to_many = cJSON_AddArrayToObject(item, "one_to_many");
	if(one_to_many == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *one_to_manyListEntry;
	list_ForEach(one_to_manyListEntry, request_time_filter_fast_arrival_searches->one_to_many) {
		cJSON *item = request_time_filter_fast_arrival_one_to_many_search_convertToJSON(one_to_manyListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(one_to_many, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_parseFromJSON(char *jsonString){

    request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches = NULL;
    cJSON *request_time_filter_fast_arrival_searchesJSON = cJSON_Parse(jsonString);
    if(request_time_filter_fast_arrival_searchesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_filter_fast_arrival_searches->many_to_one
    cJSON *many_to_one;
    cJSON *many_to_oneJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_searchesJSON,"many_to_one");
    if(!cJSON_IsArray(many_to_oneJSON)){
        goto end; //nonprimitive container
    }

    list_t *many_to_oneList = list_create();

    cJSON_ArrayForEach(many_to_one,many_to_oneJSON )
    {
        if(!cJSON_IsObject(many_to_one)){
            goto end;
        }
		char *JSONData = cJSON_Print(many_to_one);
        request_time_filter_fast_arrival_many_to_one_search_t *many_to_oneItem = request_time_filter_fast_arrival_many_to_one_search_parseFromJSON(JSONData);

        list_addElement(many_to_oneList, many_to_oneItem);
        free(JSONData);
    }

    // request_time_filter_fast_arrival_searches->one_to_many
    cJSON *one_to_many;
    cJSON *one_to_manyJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_searchesJSON,"one_to_many");
    if(!cJSON_IsArray(one_to_manyJSON)){
        goto end; //nonprimitive container
    }

    list_t *one_to_manyList = list_create();

    cJSON_ArrayForEach(one_to_many,one_to_manyJSON )
    {
        if(!cJSON_IsObject(one_to_many)){
            goto end;
        }
		char *JSONData = cJSON_Print(one_to_many);
        request_time_filter_fast_arrival_one_to_many_search_t *one_to_manyItem = request_time_filter_fast_arrival_one_to_many_search_parseFromJSON(JSONData);

        list_addElement(one_to_manyList, one_to_manyItem);
        free(JSONData);
    }


    request_time_filter_fast_arrival_searches = request_time_filter_fast_arrival_searches_create (
        many_to_oneList,
        one_to_manyList
        );
 cJSON_Delete(request_time_filter_fast_arrival_searchesJSON);
    return request_time_filter_fast_arrival_searches;
end:
    cJSON_Delete(request_time_filter_fast_arrival_searchesJSON);
    return NULL;

}

