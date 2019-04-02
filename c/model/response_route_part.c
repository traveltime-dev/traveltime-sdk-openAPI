#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_route_part.h"
#include "coords.h"
#include "list.h"
#include "response_transportation_mode.h"

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
}

response_route_part_t *response_route_part_create(
    char *id,
    type_e type,
    response_transportation_mode_t *mode,
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
	response_route_part_t *response_route_part = malloc(sizeof(response_route_part_t));
	response_route_part->id = id;
	response_route_part->type = type;
	response_route_part->mode = mode;
	response_route_part->directions = directions;
	response_route_part->distance = distance;
	response_route_part->travel_time = travel_time;
	response_route_part->coords = coords;
	response_route_part->direction = direction;
	response_route_part->road = road;
	response_route_part->turn = turn;
	response_route_part->line = line;
	response_route_part->departure_station = departure_station;
	response_route_part->arrival_station = arrival_station;
	response_route_part->departs_at = departs_at;
	response_route_part->arrives_at = arrives_at;
	response_route_part->num_stops = num_stops;

	return response_route_part;
}


void response_route_part_free(response_route_part_t *response_route_part) {
    listEntry_t *listEntry;
    free(response_route_part->id);
	response_transportation_mode_free(response_route_part->mode);
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
    if(cJSON_AddStringToObject(item, "id", response_route_part->id) == NULL) {
    goto fail; //String
    }

	// response_route_part->type
    if(cJSON_AddStringToObject(item, "type", typeresponse_route_part_ToString(response_route_part->type)) == NULL) {
    goto fail; //String
    }

	// response_route_part->mode
	cJSON *mode = response_transportation_mode_convertToJSON(response_route_part->mode);
	if(mode == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "mode", mode);
	if(item->child == NULL) {
		goto fail;
	}

	// response_route_part->directions
    if(cJSON_AddStringToObject(item, "directions", response_route_part->directions) == NULL) {
    goto fail; //String
    }

	// response_route_part->distance
    if(cJSON_AddNumberToObject(item, "distance", response_route_part->distance) == NULL) {
    goto fail; //Numeric
    }

	// response_route_part->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", response_route_part->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// response_route_part->coords
    cJSON *coords = cJSON_AddArrayToObject(item, "coords");
	if(coords == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *coordsListEntry;
	list_ForEach(coordsListEntry, response_route_part->coords) {
		cJSON *item = coords_convertToJSON(coordsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(coords, item);
	}

	// response_route_part->direction
    if(cJSON_AddStringToObject(item, "direction", response_route_part->direction) == NULL) {
    goto fail; //String
    }

	// response_route_part->road
    if(cJSON_AddStringToObject(item, "road", response_route_part->road) == NULL) {
    goto fail; //String
    }

	// response_route_part->turn
    if(cJSON_AddStringToObject(item, "turn", response_route_part->turn) == NULL) {
    goto fail; //String
    }

	// response_route_part->line
    if(cJSON_AddStringToObject(item, "line", response_route_part->line) == NULL) {
    goto fail; //String
    }

	// response_route_part->departure_station
    if(cJSON_AddStringToObject(item, "departure_station", response_route_part->departure_station) == NULL) {
    goto fail; //String
    }

	// response_route_part->arrival_station
    if(cJSON_AddStringToObject(item, "arrival_station", response_route_part->arrival_station) == NULL) {
    goto fail; //String
    }

	// response_route_part->departs_at
    if(cJSON_AddStringToObject(item, "departs_at", response_route_part->departs_at) == NULL) {
    goto fail; //String
    }

	// response_route_part->arrives_at
    if(cJSON_AddStringToObject(item, "arrives_at", response_route_part->arrives_at) == NULL) {
    goto fail; //String
    }

	// response_route_part->num_stops
    if(cJSON_AddNumberToObject(item, "num_stops", response_route_part->num_stops) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_route_part_t *response_route_part_parseFromJSON(char *jsonString){

    response_route_part_t *response_route_part = NULL;
    cJSON *response_route_partJSON = cJSON_Parse(jsonString);
    if(response_route_partJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_route_part->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->type
    type_e typeVariable;
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    typeVariable = typeresponse_route_part_FromString(type->valuestring);

    // response_route_part->mode
    response_transportation_mode_t *mode;
    cJSON *modeJSON = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "mode");
    if(response_route_partJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *modeJSONData = cJSON_Print(modeJSON);
    mode = response_transportation_mode_parseFromJSON(modeJSONData);

    // response_route_part->directions
    cJSON *directions = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "directions");
    if(!cJSON_IsString(directions) || (directions->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "distance");
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }

    // response_route_part->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_route_part->coords
    cJSON *coords;
    cJSON *coordsJSON = cJSON_GetObjectItemCaseSensitive(response_route_partJSON,"coords");
    if(!cJSON_IsArray(coordsJSON)){
        goto end; //nonprimitive container
    }

    list_t *coordsList = list_create();

    cJSON_ArrayForEach(coords,coordsJSON )
    {
        if(!cJSON_IsObject(coords)){
            goto end;
        }
		char *JSONData = cJSON_Print(coords);
        coords_t *coordsItem = coords_parseFromJSON(JSONData);

        list_addElement(coordsList, coordsItem);
        free(JSONData);
    }

    // response_route_part->direction
    cJSON *direction = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "direction");
    if(!cJSON_IsString(direction) || (direction->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->road
    cJSON *road = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "road");
    if(!cJSON_IsString(road) || (road->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->turn
    cJSON *turn = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "turn");
    if(!cJSON_IsString(turn) || (turn->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->line
    cJSON *line = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "line");
    if(!cJSON_IsString(line) || (line->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->departure_station
    cJSON *departure_station = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "departure_station");
    if(!cJSON_IsString(departure_station) || (departure_station->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->arrival_station
    cJSON *arrival_station = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "arrival_station");
    if(!cJSON_IsString(arrival_station) || (arrival_station->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->departs_at
    cJSON *departs_at = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "departs_at");
    if(!cJSON_IsString(departs_at) || (departs_at->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->arrives_at
    cJSON *arrives_at = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "arrives_at");
    if(!cJSON_IsString(arrives_at) || (arrives_at->valuestring == NULL)){
    goto end; //String
    }

    // response_route_part->num_stops
    cJSON *num_stops = cJSON_GetObjectItemCaseSensitive(response_route_partJSON, "num_stops");
    if(!cJSON_IsNumber(num_stops))
    {
    goto end; //Numeric
    }


    response_route_part = response_route_part_create (
        strdup(id->valuestring),
        typeVariable,
        mode,
        strdup(directions->valuestring),
        distance->valuedouble,
        travel_time->valuedouble,
        coordsList,
        strdup(direction->valuestring),
        strdup(road->valuestring),
        strdup(turn->valuestring),
        strdup(line->valuestring),
        strdup(departure_station->valuestring),
        strdup(arrival_station->valuestring),
        strdup(departs_at->valuestring),
        strdup(arrives_at->valuestring),
        num_stops->valuedouble
        );
        free(modeJSONData);
 cJSON_Delete(response_route_partJSON);
    return response_route_part;
end:
    cJSON_Delete(response_route_partJSON);
    return NULL;

}

