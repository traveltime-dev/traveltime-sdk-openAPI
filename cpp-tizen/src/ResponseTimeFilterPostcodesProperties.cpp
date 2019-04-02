#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodesProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodesProperties::ResponseTimeFilterPostcodesProperties()
{
	//__init();
}

ResponseTimeFilterPostcodesProperties::~ResponseTimeFilterPostcodesProperties()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodesProperties::__init()
{
	//travel_time = int(0);
	//distance = int(0);
}

void
ResponseTimeFilterPostcodesProperties::__cleanup()
{
	//if(travel_time != NULL) {
	//
	//delete travel_time;
	//travel_time = NULL;
	//}
	//if(distance != NULL) {
	//
	//delete distance;
	//distance = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodesProperties::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *travel_timeKey = "travel_time";
	node = json_object_get_member(pJsonObject, travel_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&travel_time, node, "int", "");
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
}

ResponseTimeFilterPostcodesProperties::ResponseTimeFilterPostcodesProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodesProperties::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getTravelTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *travel_timeKey = "travel_time";
	json_object_set_member(pJsonObject, travel_timeKey, node);
	if (isprimitive("int")) {
		int obj = getDistance();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *distanceKey = "distance";
	json_object_set_member(pJsonObject, distanceKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ResponseTimeFilterPostcodesProperties::getTravelTime()
{
	return travel_time;
}

void
ResponseTimeFilterPostcodesProperties::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

int
ResponseTimeFilterPostcodesProperties::getDistance()
{
	return distance;
}

void
ResponseTimeFilterPostcodesProperties::setDistance(int  distance)
{
	this->distance = distance;
}


