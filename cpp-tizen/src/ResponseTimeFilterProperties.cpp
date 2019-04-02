#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterProperties::ResponseTimeFilterProperties()
{
	//__init();
}

ResponseTimeFilterProperties::~ResponseTimeFilterProperties()
{
	//__cleanup();
}

void
ResponseTimeFilterProperties::__init()
{
	//travel_time = int(0);
	//distance = int(0);
	//new std::list()std::list> distance_breakdown;
	//fares = new ResponseFares();
	//route = new ResponseRoute();
}

void
ResponseTimeFilterProperties::__cleanup()
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
	//if(distance_breakdown != NULL) {
	//distance_breakdown.RemoveAll(true);
	//delete distance_breakdown;
	//distance_breakdown = NULL;
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
ResponseTimeFilterProperties::fromJson(char* jsonStr)
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
	const gchar *distance_breakdownKey = "distance_breakdown";
	node = json_object_get_member(pJsonObject, distance_breakdownKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseDistanceBreakdownItem> new_list;
			ResponseDistanceBreakdownItem inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseDistanceBreakdownItem")) {
					jsonToValue(&inst, temp_json, "ResponseDistanceBreakdownItem", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			distance_breakdown = new_list;
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

ResponseTimeFilterProperties::ResponseTimeFilterProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterProperties::toJson()
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
	if (isprimitive("ResponseDistanceBreakdownItem")) {
		list<ResponseDistanceBreakdownItem> new_list = static_cast<list <ResponseDistanceBreakdownItem> > (getDistanceBreakdown());
		node = converttoJson(&new_list, "ResponseDistanceBreakdownItem", "array");
	} else {
		node = json_node_alloc();
		list<ResponseDistanceBreakdownItem> new_list = static_cast<list <ResponseDistanceBreakdownItem> > (getDistanceBreakdown());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseDistanceBreakdownItem>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseDistanceBreakdownItem obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *distance_breakdownKey = "distance_breakdown";
	json_object_set_member(pJsonObject, distance_breakdownKey, node);
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
ResponseTimeFilterProperties::getTravelTime()
{
	return travel_time;
}

void
ResponseTimeFilterProperties::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

int
ResponseTimeFilterProperties::getDistance()
{
	return distance;
}

void
ResponseTimeFilterProperties::setDistance(int  distance)
{
	this->distance = distance;
}

std::list<ResponseDistanceBreakdownItem>
ResponseTimeFilterProperties::getDistanceBreakdown()
{
	return distance_breakdown;
}

void
ResponseTimeFilterProperties::setDistanceBreakdown(std::list <ResponseDistanceBreakdownItem> distance_breakdown)
{
	this->distance_breakdown = distance_breakdown;
}

ResponseFares
ResponseTimeFilterProperties::getFares()
{
	return fares;
}

void
ResponseTimeFilterProperties::setFares(ResponseFares  fares)
{
	this->fares = fares;
}

ResponseRoute
ResponseTimeFilterProperties::getRoute()
{
	return route;
}

void
ResponseTimeFilterProperties::setRoute(ResponseRoute  route)
{
	this->route = route;
}


