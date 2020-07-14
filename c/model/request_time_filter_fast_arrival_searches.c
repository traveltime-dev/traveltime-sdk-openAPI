#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_fast_arrival_searches.h"



request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_create(
    list_t *many_to_one,
    list_t *one_to_many
    ) {
    request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_local_var = malloc(sizeof(request_time_filter_fast_arrival_searches_t));
    if (!request_time_filter_fast_arrival_searches_local_var) {
        return NULL;
    }
    request_time_filter_fast_arrival_searches_local_var->many_to_one = many_to_one;
    request_time_filter_fast_arrival_searches_local_var->one_to_many = one_to_many;

    return request_time_filter_fast_arrival_searches_local_var;
}


void request_time_filter_fast_arrival_searches_free(request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches) {
    if(NULL == request_time_filter_fast_arrival_searches){
        return ;
    }
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
    if(request_time_filter_fast_arrival_searches->many_to_one) { 
    cJSON *many_to_one = cJSON_AddArrayToObject(item, "many_to_one");
    if(many_to_one == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *many_to_oneListEntry;
    if (request_time_filter_fast_arrival_searches->many_to_one) {
    list_ForEach(many_to_oneListEntry, request_time_filter_fast_arrival_searches->many_to_one) {
    cJSON *itemLocal = request_time_filter_fast_arrival_many_to_one_search_convertToJSON(many_to_oneListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(many_to_one, itemLocal);
    }
    }
     } 


    // request_time_filter_fast_arrival_searches->one_to_many
    if(request_time_filter_fast_arrival_searches->one_to_many) { 
    cJSON *one_to_many = cJSON_AddArrayToObject(item, "one_to_many");
    if(one_to_many == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *one_to_manyListEntry;
    if (request_time_filter_fast_arrival_searches->one_to_many) {
    list_ForEach(one_to_manyListEntry, request_time_filter_fast_arrival_searches->one_to_many) {
    cJSON *itemLocal = request_time_filter_fast_arrival_one_to_many_search_convertToJSON(one_to_manyListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(one_to_many, itemLocal);
    }
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_parseFromJSON(cJSON *request_time_filter_fast_arrival_searchesJSON){

    request_time_filter_fast_arrival_searches_t *request_time_filter_fast_arrival_searches_local_var = NULL;

    // request_time_filter_fast_arrival_searches->many_to_one
    cJSON *many_to_one = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_searchesJSON, "many_to_one");
    list_t *many_to_oneList;
    if (many_to_one) { 
    cJSON *many_to_one_local_nonprimitive;
    if(!cJSON_IsArray(many_to_one)){
        goto end; //nonprimitive container
    }

    many_to_oneList = list_create();

    cJSON_ArrayForEach(many_to_one_local_nonprimitive,many_to_one )
    {
        if(!cJSON_IsObject(many_to_one_local_nonprimitive)){
            goto end;
        }
        request_time_filter_fast_arrival_many_to_one_search_t *many_to_oneItem = request_time_filter_fast_arrival_many_to_one_search_parseFromJSON(many_to_one_local_nonprimitive);

        list_addElement(many_to_oneList, many_to_oneItem);
    }
    }

    // request_time_filter_fast_arrival_searches->one_to_many
    cJSON *one_to_many = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_searchesJSON, "one_to_many");
    list_t *one_to_manyList;
    if (one_to_many) { 
    cJSON *one_to_many_local_nonprimitive;
    if(!cJSON_IsArray(one_to_many)){
        goto end; //nonprimitive container
    }

    one_to_manyList = list_create();

    cJSON_ArrayForEach(one_to_many_local_nonprimitive,one_to_many )
    {
        if(!cJSON_IsObject(one_to_many_local_nonprimitive)){
            goto end;
        }
        request_time_filter_fast_arrival_one_to_many_search_t *one_to_manyItem = request_time_filter_fast_arrival_one_to_many_search_parseFromJSON(one_to_many_local_nonprimitive);

        list_addElement(one_to_manyList, one_to_manyItem);
    }
    }


    request_time_filter_fast_arrival_searches_local_var = request_time_filter_fast_arrival_searches_create (
        many_to_one ? many_to_oneList : NULL,
        one_to_many ? one_to_manyList : NULL
        );

    return request_time_filter_fast_arrival_searches_local_var;
end:
    return NULL;

}
