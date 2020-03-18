#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_route_part.h"


    char* typeresponse_route_part_ToString(type_e type){
    char *typeArray[] =  { "basic","start_end","road","public_transport" };
        return typeArray[type];
    }

    type_e typeresponse_route_part_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "basic","start_end","road","public_transport" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
    }
    char* moderesponse_route_part_ToString(mode_e mode){
    char *modeArray[] =  { "car","parking","boarding","walk","bike","train","rail_national","rail_overground","rail_underground","rail_dlr","bus","cable_car","plane","ferry","coach" };
        return modeArray[mode];
    }

    mode_e moderesponse_route_part_FromString(char* mode){
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

response_route_part_t *response_route_part_create(
    char *id,
    type_e type,
    char *directions,
    int distance,
    int travel_time,
    list_t *coords,
    char *direction,
    char *road,
    char *turn,
    char *line,
    char *departure_station,
    char *arrival_station,
    char *departs_at,
    char *arrives_at,
    int num_stops
    ) {
    response_route_part_t *response_route_part_local_var = malloc(sizeof(response_route_part_t));
    if (!response_route_part_local_var) {
        return NULL;
    }
    response_route_part_local_var->id = id;
    response_route_part_local_var->type = type;
    response_route_part_local_var->mode = mode;
    response_route_part_local_var->directions = directions;
    response_route_part_local_var->distance = distance;
    response_route_part_local_var->travel_time = travel_time;
    response_route_part_local_var->coords = coords;
    response_route_part_local_var->direction = direction;
    response_route_part_local_var->road = road;
    response_route_part_local_var->turn = turn;
    response_route_part_local_var->line = line;
    response_route_part_local_var->departure_station = departure_station;
    response_route_part_local_var->arrival_station = arrival_station;
    response_route_part_local_var->departs_at = departs_at;
    response_route_part_local_var->arrives_at = arrives_at;
    response_route_part_local_var->num_stops = num_stops;

    return response_route_part_local_var;
}


void response_route_part_free(response_route_part_t *response_route_part) {
    listEntry_t *listEntry;
    free(response_route_part->id);
    free(response_route_part->directions);
    list_ForEach(listEntry, response_route_part->coords) {
        coords_free(listEntry->data);
    }
    list_free(response_route_part->coords);
    free(response_route_part->direction);
    free(response_route_part->road);
    free(response_route_part->turn);
    free(response_route_part->line);
    free(response_route_part->departure_station);
    free(response_route_part->arrival_station);
    free(response_route_part->departs_at);
    free(response_route_part->arrives_at);
    free(response_route_part);
}

cJSON *response_route_part_convertToJSON(response_route_part_t *response_route_part) {
    cJSON *item = cJSON_CreateObject();

    // response_route_part->id
    if (!response_route_part->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", response_route_part->id) == NULL) {
    goto fail; //String
    }


    // response_route_part->type
    
    if(cJSON_AddStringToObject(item, "type", typeresponse_route_part_ToString(response_route_part->type)) == NULL)
    {
    goto fail; //Enum
    }


    // response_route_part->mode
    


    // response_route_part->directions
    if (!response_route_part->directions) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "directions", response_route_part->directions) == NULL) {
    goto fail; //String
    }


    // response_route_part->distance
    if (!response_route_part->distance) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "distance", response_route_part->distance) == NULL) {
    goto fail; //Numeric
    }


    // response_route_part->travel_time
    if (!response_route_part->travel_time) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "travel_time", response_route_part->travel_time) == NULL) {
    goto fail; //Numeric
    }


    // response_route_part->coords
    if (!response_route_part->coords) {
        goto fail;
    }
    
    cJSON *coords = cJSON_AddArrayToObject(item, "coords");
    if(coords == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *coordsListEntry;
    if (response_route_part->coords) {
    list_ForEach(coordsListEntry, response_route_part->coords) {
    cJSON *itemLocal = coords_convertToJSON(coordsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(coords, itemLocal);
    }
    }


    // response_route_part->direction
    if(response_route_part->direction) { 
    if(cJSON_AddStringToObject(item, "direction", response_route_part->direction) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->road
    if(response_route_part->road) { 
    if(cJSON_AddStringToObject(item, "road", response_route_part->road) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->turn
    if(response_route_part->turn) { 
    if(cJSON_AddStringToObject(item, "turn", response_route_part->turn) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->line
    if(response_route_part->line) { 
    if(cJSON_AddStringToObject(item, "line", response_route_part->line) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->departure_station
    if(response_route_part->departure_station) { 
    if(cJSON_AddStringToObject(item, "departure_station", response_route_part->departure_station) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->arrival_station
    if(response_route_part->arrival_station) { 
    if(cJSON_AddStringToObject(item, "arrival_station", response_route_part->arrival_station) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->departs_at
    if(response_route_part->departs_at) { 
    if(cJSON_AddStringToObject(item, "departs_at", response_route_part->departs_at) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->arrives_at
    if(response_route_part->arrives_at) { 
    if(cJSON_AddStringToObject(item, "arrives_at", response_route_part->arrives_at) == NULL) {
    goto fail; //String
    }
     } 


    // response_route_part->num_stops
    if(response_route_part->num_stops) { 
    if(cJSON_AddNumberToObject(item, "num_stops", response_route_part->num_stops) == NULL) {
    goto fail; //Numeric
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_route_part_t *response_route_part_parseFromJSON(cJSON *response_route_partJSON){

    response_route_part_t *response_route_part_local_var = NULL;

    // response_route_part->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // response_route_part->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "type");
    if (!type) {
        goto end;
    }

    type_e typeVariable;
    
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = typeresponse_route_part_FromString(type->valuestring);

    // response_route_part->mode
    cJSON *mode = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "mode");
    if (!mode) {
        goto end;
    }


    // response_route_part->directions
    cJSON *directions = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "directions");
    if (!directions) {
        goto end;
    }

    
    if(!cJSON_IsString(directions))
    {
    goto end; //String
    }

    // response_route_part->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "distance");
    if (!distance) {
        goto end;
    }

    
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }

    // response_route_part->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "travel_time");
    if (!travel_time) {
        goto end;
    }

    
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_route_part->coords
    cJSON *coords = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "coords");
    if (!coords) {
        goto end;
    }

    list_t *coordsList;
    
    cJSON *coords_local_nonprimitive;
    if(!cJSON_IsArray(coords)){
        goto end; //nonprimitive container
    }

    coordsList = list_create();

    cJSON_ArrayForEach(coords_local_nonprimitive,coords )
    {
        if(!cJSON_IsObject(coords_local_nonprimitive)){
            goto end;
        }
        coords_t *coordsItem = coords_parseFromJSON(coords_local_nonprimitive);

        list_addElement(coordsList, coordsItem);
    }

    // response_route_part->direction
    cJSON *direction = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "direction");
    if (direction) { 
    if(!cJSON_IsString(direction))
    {
    goto end; //String
    }
    }

    // response_route_part->road
    cJSON *road = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "road");
    if (road) { 
    if(!cJSON_IsString(road))
    {
    goto end; //String
    }
    }

    // response_route_part->turn
    cJSON *turn = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "turn");
    if (turn) { 
    if(!cJSON_IsString(turn))
    {
    goto end; //String
    }
    }

    // response_route_part->line
    cJSON *line = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "line");
    if (line) { 
    if(!cJSON_IsString(line))
    {
    goto end; //String
    }
    }

    // response_route_part->departure_station
    cJSON *departure_station = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "departure_station");
    if (departure_station) { 
    if(!cJSON_IsString(departure_station))
    {
    goto end; //String
    }
    }

    // response_route_part->arrival_station
    cJSON *arrival_station = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "arrival_station");
    if (arrival_station) { 
    if(!cJSON_IsString(arrival_station))
    {
    goto end; //String
    }
    }

    // response_route_part->departs_at
    cJSON *departs_at = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "departs_at");
    if (departs_at) { 
    if(!cJSON_IsString(departs_at))
    {
    goto end; //String
    }
    }

    // response_route_part->arrives_at
    cJSON *arrives_at = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "arrives_at");
    if (arrives_at) { 
    if(!cJSON_IsString(arrives_at))
    {
    goto end; //String
    }
    }

    // response_route_part->num_stops
    cJSON *num_stops = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "num_stops");
    if (num_stops) { 
    if(!cJSON_IsNumber(num_stops))
    {
    goto end; //Numeric
    }
    }


    response_route_part_local_var = response_route_part_create (
        strdup(id->valuestring),
        typeVariable,
        strdup(directions->valuestring),
        distance->valuedouble,
        travel_time->valuedouble,
        coordsList,
        direction ? strdup(direction->valuestring) : NULL,
        road ? strdup(road->valuestring) : NULL,
        turn ? strdup(turn->valuestring) : NULL,
        line ? strdup(line->valuestring) : NULL,
        departure_station ? strdup(departure_station->valuestring) : NULL,
        arrival_station ? strdup(arrival_station->valuestring) : NULL,
        departs_at ? strdup(departs_at->valuestring) : NULL,
        arrives_at ? strdup(arrives_at->valuestring) : NULL,
        num_stops ? num_stops->valuedouble : 0
        );

    return response_route_part_local_var;
end:
    return NULL;

}
