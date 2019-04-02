#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseRoutePart.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseRoutePart::ResponseRoutePart()
{
	//__init();
}

ResponseRoutePart::~ResponseRoutePart()
{
	//__cleanup();
}

void
ResponseRoutePart::__init()
{
	//id = std::string();
	//type = std::string();
	//mode = new ResponseTransportationMode();
	//directions = std::string();
	//distance = int(0);
	//travel_time = int(0);
	//new std::list()std::list> coords;
	//direction = std::string();
	//road = std::string();
	//turn = std::string();
	//line = std::string();
	//departure_station = std::string();
	//arrival_station = std::string();
	//departs_at = std::string();
	//arrives_at = std::string();
	//num_stops = int(0);
}

void
ResponseRoutePart::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(mode != NULL) {
	//
	//delete mode;
	//mode = NULL;
	//}
	//if(directions != NULL) {
	//
	//delete directions;
	//directions = NULL;
	//}
	//if(distance != NULL) {
	//
	//delete distance;
	//distance = NULL;
	//}
	//if(travel_time != NULL) {
	//
	//delete travel_time;
	//travel_time = NULL;
	//}
	//if(coords != NULL) {
	//coords.RemoveAll(true);
	//delete coords;
	//coords = NULL;
	//}
	//if(direction != NULL) {
	//
	//delete direction;
	//direction = NULL;
	//}
	//if(road != NULL) {
	//
	//delete road;
	//road = NULL;
	//}
	//if(turn != NULL) {
	//
	//delete turn;
	//turn = NULL;
	//}
	//if(line != NULL) {
	//
	//delete line;
	//line = NULL;
	//}
	//if(departure_station != NULL) {
	//
	//delete departure_station;
	//departure_station = NULL;
	//}
	//if(arrival_station != NULL) {
	//
	//delete arrival_station;
	//arrival_station = NULL;
	//}
	//if(departs_at != NULL) {
	//
	//delete departs_at;
	//departs_at = NULL;
	//}
	//if(arrives_at != NULL) {
	//
	//delete arrives_at;
	//arrives_at = NULL;
	//}
	//if(num_stops != NULL) {
	//
	//delete num_stops;
	//num_stops = NULL;
	//}
	//
}

void
ResponseRoutePart::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *modeKey = "mode";
	node = json_object_get_member(pJsonObject, modeKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTransportationMode")) {
			jsonToValue(&mode, node, "ResponseTransportationMode", "ResponseTransportationMode");
		} else {
			
			ResponseTransportationMode* obj = static_cast<ResponseTransportationMode*> (&mode);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *directionsKey = "directions";
	node = json_object_get_member(pJsonObject, directionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&directions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *distanceKey = "distance";
	node = json_object_get_member(pJsonObject, distanceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&distance, node, "int", "");
		} else {
			
		}
	}
	const gchar *travel_timeKey = "travel_time";
	node = json_object_get_member(pJsonObject, travel_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&travel_time, node, "int", "");
		} else {
			
		}
	}
	const gchar *coordsKey = "coords";
	node = json_object_get_member(pJsonObject, coordsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Coords> new_list;
			Coords inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Coords")) {
					jsonToValue(&inst, temp_json, "Coords", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			coords = new_list;
		}
		
	}
	const gchar *directionKey = "direction";
	node = json_object_get_member(pJsonObject, directionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&direction, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *roadKey = "road";
	node = json_object_get_member(pJsonObject, roadKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&road, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *turnKey = "turn";
	node = json_object_get_member(pJsonObject, turnKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&turn, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lineKey = "line";
	node = json_object_get_member(pJsonObject, lineKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&line, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *departure_stationKey = "departure_station";
	node = json_object_get_member(pJsonObject, departure_stationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&departure_station, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *arrival_stationKey = "arrival_station";
	node = json_object_get_member(pJsonObject, arrival_stationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&arrival_station, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *departs_atKey = "departs_at";
	node = json_object_get_member(pJsonObject, departs_atKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&departs_at, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *arrives_atKey = "arrives_at";
	node = json_object_get_member(pJsonObject, arrives_atKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&arrives_at, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *num_stopsKey = "num_stops";
	node = json_object_get_member(pJsonObject, num_stopsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&num_stops, node, "int", "");
		} else {
			
		}
	}
}

ResponseRoutePart::ResponseRoutePart(char* json)
{
	this->fromJson(json);
}

char*
ResponseRoutePart::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("ResponseTransportationMode")) {
		ResponseTransportationMode obj = getMode();
		node = converttoJson(&obj, "ResponseTransportationMode", "");
	}
	else {
		
		ResponseTransportationMode obj = static_cast<ResponseTransportationMode> (getMode());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modeKey = "mode";
	json_object_set_member(pJsonObject, modeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDirections();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *directionsKey = "directions";
	json_object_set_member(pJsonObject, directionsKey, node);
	if (isprimitive("int")) {
		int obj = getDistance();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *distanceKey = "distance";
	json_object_set_member(pJsonObject, distanceKey, node);
	if (isprimitive("int")) {
		int obj = getTravelTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *travel_timeKey = "travel_time";
	json_object_set_member(pJsonObject, travel_timeKey, node);
	if (isprimitive("Coords")) {
		list<Coords> new_list = static_cast<list <Coords> > (getCoords());
		node = converttoJson(&new_list, "Coords", "array");
	} else {
		node = json_node_alloc();
		list<Coords> new_list = static_cast<list <Coords> > (getCoords());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Coords>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Coords obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *coordsKey = "coords";
	json_object_set_member(pJsonObject, coordsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDirection();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *directionKey = "direction";
	json_object_set_member(pJsonObject, directionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoad();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roadKey = "road";
	json_object_set_member(pJsonObject, roadKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTurn();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *turnKey = "turn";
	json_object_set_member(pJsonObject, turnKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLine();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lineKey = "line";
	json_object_set_member(pJsonObject, lineKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDepartureStation();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departure_stationKey = "departure_station";
	json_object_set_member(pJsonObject, departure_stationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getArrivalStation();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *arrival_stationKey = "arrival_station";
	json_object_set_member(pJsonObject, arrival_stationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDepartsAt();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departs_atKey = "departs_at";
	json_object_set_member(pJsonObject, departs_atKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getArrivesAt();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *arrives_atKey = "arrives_at";
	json_object_set_member(pJsonObject, arrives_atKey, node);
	if (isprimitive("int")) {
		int obj = getNumStops();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *num_stopsKey = "num_stops";
	json_object_set_member(pJsonObject, num_stopsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseRoutePart::getId()
{
	return id;
}

void
ResponseRoutePart::setId(std::string  id)
{
	this->id = id;
}

std::string
ResponseRoutePart::getType()
{
	return type;
}

void
ResponseRoutePart::setType(std::string  type)
{
	this->type = type;
}

ResponseTransportationMode
ResponseRoutePart::getMode()
{
	return mode;
}

void
ResponseRoutePart::setMode(ResponseTransportationMode  mode)
{
	this->mode = mode;
}

std::string
ResponseRoutePart::getDirections()
{
	return directions;
}

void
ResponseRoutePart::setDirections(std::string  directions)
{
	this->directions = directions;
}

int
ResponseRoutePart::getDistance()
{
	return distance;
}

void
ResponseRoutePart::setDistance(int  distance)
{
	this->distance = distance;
}

int
ResponseRoutePart::getTravelTime()
{
	return travel_time;
}

void
ResponseRoutePart::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::list<Coords>
ResponseRoutePart::getCoords()
{
	return coords;
}

void
ResponseRoutePart::setCoords(std::list <Coords> coords)
{
	this->coords = coords;
}

std::string
ResponseRoutePart::getDirection()
{
	return direction;
}

void
ResponseRoutePart::setDirection(std::string  direction)
{
	this->direction = direction;
}

std::string
ResponseRoutePart::getRoad()
{
	return road;
}

void
ResponseRoutePart::setRoad(std::string  road)
{
	this->road = road;
}

std::string
ResponseRoutePart::getTurn()
{
	return turn;
}

void
ResponseRoutePart::setTurn(std::string  turn)
{
	this->turn = turn;
}

std::string
ResponseRoutePart::getLine()
{
	return line;
}

void
ResponseRoutePart::setLine(std::string  line)
{
	this->line = line;
}

std::string
ResponseRoutePart::getDepartureStation()
{
	return departure_station;
}

void
ResponseRoutePart::setDepartureStation(std::string  departure_station)
{
	this->departure_station = departure_station;
}

std::string
ResponseRoutePart::getArrivalStation()
{
	return arrival_station;
}

void
ResponseRoutePart::setArrivalStation(std::string  arrival_station)
{
	this->arrival_station = arrival_station;
}

std::string
ResponseRoutePart::getDepartsAt()
{
	return departs_at;
}

void
ResponseRoutePart::setDepartsAt(std::string  departs_at)
{
	this->departs_at = departs_at;
}

std::string
ResponseRoutePart::getArrivesAt()
{
	return arrives_at;
}

void
ResponseRoutePart::setArrivesAt(std::string  arrives_at)
{
	this->arrives_at = arrives_at;
}

int
ResponseRoutePart::getNumStops()
{
	return num_stops;
}

void
ResponseRoutePart::setNumStops(int  num_stops)
{
	this->num_stops = num_stops;
}


