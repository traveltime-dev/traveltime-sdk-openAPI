#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseDistanceBreakdownItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseDistanceBreakdownItem::ResponseDistanceBreakdownItem()
{
	//__init();
}

ResponseDistanceBreakdownItem::~ResponseDistanceBreakdownItem()
{
	//__cleanup();
}

void
ResponseDistanceBreakdownItem::__init()
{
	//mode = new ResponseTransportationMode();
	//distance = int(0);
}

void
ResponseDistanceBreakdownItem::__cleanup()
{
	//if(mode != NULL) {
	//
	//delete mode;
	//mode = NULL;
	//}
	//if(distance != NULL) {
	//
	//delete distance;
	//distance = NULL;
	//}
	//
}

void
ResponseDistanceBreakdownItem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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
	const gchar *distanceKey = "distance";
	node = json_object_get_member(pJsonObject, distanceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&distance, node, "int", "");
		} else {
			
		}
	}
}

ResponseDistanceBreakdownItem::ResponseDistanceBreakdownItem(char* json)
{
	this->fromJson(json);
}

char*
ResponseDistanceBreakdownItem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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

ResponseTransportationMode
ResponseDistanceBreakdownItem::getMode()
{
	return mode;
}

void
ResponseDistanceBreakdownItem::setMode(ResponseTransportationMode  mode)
{
	this->mode = mode;
}

int
ResponseDistanceBreakdownItem::getDistance()
{
	return distance;
}

void
ResponseDistanceBreakdownItem::setDistance(int  distance)
{
	this->distance = distance;
}


