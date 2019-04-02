#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTransportation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTransportation::RequestTransportation()
{
	//__init();
}

RequestTransportation::~RequestTransportation()
{
	//__cleanup();
}

void
RequestTransportation::__init()
{
	//type = std::string();
	//pt_change_delay = int(0);
	//walking_time = int(0);
	//driving_time_to_station = int(0);
	//parking_time = int(0);
	//boarding_time = int(0);
}

void
RequestTransportation::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(pt_change_delay != NULL) {
	//
	//delete pt_change_delay;
	//pt_change_delay = NULL;
	//}
	//if(walking_time != NULL) {
	//
	//delete walking_time;
	//walking_time = NULL;
	//}
	//if(driving_time_to_station != NULL) {
	//
	//delete driving_time_to_station;
	//driving_time_to_station = NULL;
	//}
	//if(parking_time != NULL) {
	//
	//delete parking_time;
	//parking_time = NULL;
	//}
	//if(boarding_time != NULL) {
	//
	//delete boarding_time;
	//boarding_time = NULL;
	//}
	//
}

void
RequestTransportation::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *pt_change_delayKey = "pt_change_delay";
	node = json_object_get_member(pJsonObject, pt_change_delayKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&pt_change_delay, node, "int", "");
		} else {
			
		}
	}
	const gchar *walking_timeKey = "walking_time";
	node = json_object_get_member(pJsonObject, walking_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&walking_time, node, "int", "");
		} else {
			
		}
	}
	const gchar *driving_time_to_stationKey = "driving_time_to_station";
	node = json_object_get_member(pJsonObject, driving_time_to_stationKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&driving_time_to_station, node, "int", "");
		} else {
			
		}
	}
	const gchar *parking_timeKey = "parking_time";
	node = json_object_get_member(pJsonObject, parking_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&parking_time, node, "int", "");
		} else {
			
		}
	}
	const gchar *boarding_timeKey = "boarding_time";
	node = json_object_get_member(pJsonObject, boarding_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&boarding_time, node, "int", "");
		} else {
			
		}
	}
}

RequestTransportation::RequestTransportation(char* json)
{
	this->fromJson(json);
}

char*
RequestTransportation::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("int")) {
		int obj = getPtChangeDelay();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *pt_change_delayKey = "pt_change_delay";
	json_object_set_member(pJsonObject, pt_change_delayKey, node);
	if (isprimitive("int")) {
		int obj = getWalkingTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *walking_timeKey = "walking_time";
	json_object_set_member(pJsonObject, walking_timeKey, node);
	if (isprimitive("int")) {
		int obj = getDrivingTimeToStation();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *driving_time_to_stationKey = "driving_time_to_station";
	json_object_set_member(pJsonObject, driving_time_to_stationKey, node);
	if (isprimitive("int")) {
		int obj = getParkingTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *parking_timeKey = "parking_time";
	json_object_set_member(pJsonObject, parking_timeKey, node);
	if (isprimitive("int")) {
		int obj = getBoardingTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *boarding_timeKey = "boarding_time";
	json_object_set_member(pJsonObject, boarding_timeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestTransportation::getType()
{
	return type;
}

void
RequestTransportation::setType(std::string  type)
{
	this->type = type;
}

int
RequestTransportation::getPtChangeDelay()
{
	return pt_change_delay;
}

void
RequestTransportation::setPtChangeDelay(int  pt_change_delay)
{
	this->pt_change_delay = pt_change_delay;
}

int
RequestTransportation::getWalkingTime()
{
	return walking_time;
}

void
RequestTransportation::setWalkingTime(int  walking_time)
{
	this->walking_time = walking_time;
}

int
RequestTransportation::getDrivingTimeToStation()
{
	return driving_time_to_station;
}

void
RequestTransportation::setDrivingTimeToStation(int  driving_time_to_station)
{
	this->driving_time_to_station = driving_time_to_station;
}

int
RequestTransportation::getParkingTime()
{
	return parking_time;
}

void
RequestTransportation::setParkingTime(int  parking_time)
{
	this->parking_time = parking_time;
}

int
RequestTransportation::getBoardingTime()
{
	return boarding_time;
}

void
RequestTransportation::setBoardingTime(int  boarding_time)
{
	this->boarding_time = boarding_time;
}


