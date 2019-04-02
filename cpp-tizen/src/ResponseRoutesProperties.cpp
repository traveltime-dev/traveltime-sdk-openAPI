#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseRoutesProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseRoutesProperties::ResponseRoutesProperties()
{
	//__init();
}

ResponseRoutesProperties::~ResponseRoutesProperties()
{
	//__cleanup();
}

void
ResponseRoutesProperties::__init()
{
	//travel_time = int(0);
	//distance = int(0);
	//fares = new ResponseFares();
	//route = new ResponseRoute();
}

void
ResponseRoutesProperties::__cleanup()
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
	//if(fares != NULL) {
	//
	//delete fares;
	//fares = NULL;
	//}
	//if(route != NULL) {
	//
	//delete route;
	//route = NULL;
	//}
	//
}

void
ResponseRoutesProperties::fromJson(char* jsonStr)
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
	const gchar *faresKey = "fares";
	node = json_object_get_member(pJsonObject, faresKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseFares")) {
			jsonToValue(&fares, node, "ResponseFares", "ResponseFares");
		} else {
			
			ResponseFares* obj = static_cast<ResponseFares*> (&fares);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *routeKey = "route";
	node = json_object_get_member(pJsonObject, routeKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseRoute")) {
			jsonToValue(&route, node, "ResponseRoute", "ResponseRoute");
		} else {
			
			ResponseRoute* obj = static_cast<ResponseRoute*> (&route);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseRoutesProperties::ResponseRoutesProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseRoutesProperties::toJson()
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
	if (isprimitive("ResponseFares")) {
		ResponseFares obj = getFares();
		node = converttoJson(&obj, "ResponseFares", "");
	}
	else {
		
		ResponseFares obj = static_cast<ResponseFares> (getFares());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *faresKey = "fares";
	json_object_set_member(pJsonObject, faresKey, node);
	if (isprimitive("ResponseRoute")) {
		ResponseRoute obj = getRoute();
		node = converttoJson(&obj, "ResponseRoute", "");
	}
	else {
		
		ResponseRoute obj = static_cast<ResponseRoute> (getRoute());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *routeKey = "route";
	json_object_set_member(pJsonObject, routeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ResponseRoutesProperties::getTravelTime()
{
	return travel_time;
}

void
ResponseRoutesProperties::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

int
ResponseRoutesProperties::getDistance()
{
	return distance;
}

void
ResponseRoutesProperties::setDistance(int  distance)
{
	this->distance = distance;
}

ResponseFares
ResponseRoutesProperties::getFares()
{
	return fares;
}

void
ResponseRoutesProperties::setFares(ResponseFares  fares)
{
	this->fares = fares;
}

ResponseRoute
ResponseRoutesProperties::getRoute()
{
	return route;
}

void
ResponseRoutesProperties::setRoute(ResponseRoute  route)
{
	this->route = route;
}


