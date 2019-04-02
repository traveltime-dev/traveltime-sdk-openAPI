#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodeSectorProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodeSectorProperties::ResponseTimeFilterPostcodeSectorProperties()
{
	//__init();
}

ResponseTimeFilterPostcodeSectorProperties::~ResponseTimeFilterPostcodeSectorProperties()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodeSectorProperties::__init()
{
	//travel_time_reachable = new ResponseTravelTimeStatistics();
	//travel_time_all = new ResponseTravelTimeStatistics();
	//coverage = double(0);
}

void
ResponseTimeFilterPostcodeSectorProperties::__cleanup()
{
	//if(travel_time_reachable != NULL) {
	//
	//delete travel_time_reachable;
	//travel_time_reachable = NULL;
	//}
	//if(travel_time_all != NULL) {
	//
	//delete travel_time_all;
	//travel_time_all = NULL;
	//}
	//if(coverage != NULL) {
	//
	//delete coverage;
	//coverage = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodeSectorProperties::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *travel_time_reachableKey = "travel_time_reachable";
	node = json_object_get_member(pJsonObject, travel_time_reachableKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTravelTimeStatistics")) {
			jsonToValue(&travel_time_reachable, node, "ResponseTravelTimeStatistics", "ResponseTravelTimeStatistics");
		} else {
			
			ResponseTravelTimeStatistics* obj = static_cast<ResponseTravelTimeStatistics*> (&travel_time_reachable);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *travel_time_allKey = "travel_time_all";
	node = json_object_get_member(pJsonObject, travel_time_allKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTravelTimeStatistics")) {
			jsonToValue(&travel_time_all, node, "ResponseTravelTimeStatistics", "ResponseTravelTimeStatistics");
		} else {
			
			ResponseTravelTimeStatistics* obj = static_cast<ResponseTravelTimeStatistics*> (&travel_time_all);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *coverageKey = "coverage";
	node = json_object_get_member(pJsonObject, coverageKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&coverage, node, "double", "");
		} else {
			
		}
	}
}

ResponseTimeFilterPostcodeSectorProperties::ResponseTimeFilterPostcodeSectorProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodeSectorProperties::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseTravelTimeStatistics")) {
		ResponseTravelTimeStatistics obj = getTravelTimeReachable();
		node = converttoJson(&obj, "ResponseTravelTimeStatistics", "");
	}
	else {
		
		ResponseTravelTimeStatistics obj = static_cast<ResponseTravelTimeStatistics> (getTravelTimeReachable());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *travel_time_reachableKey = "travel_time_reachable";
	json_object_set_member(pJsonObject, travel_time_reachableKey, node);
	if (isprimitive("ResponseTravelTimeStatistics")) {
		ResponseTravelTimeStatistics obj = getTravelTimeAll();
		node = converttoJson(&obj, "ResponseTravelTimeStatistics", "");
	}
	else {
		
		ResponseTravelTimeStatistics obj = static_cast<ResponseTravelTimeStatistics> (getTravelTimeAll());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *travel_time_allKey = "travel_time_all";
	json_object_set_member(pJsonObject, travel_time_allKey, node);
	if (isprimitive("double")) {
		double obj = getCoverage();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *coverageKey = "coverage";
	json_object_set_member(pJsonObject, coverageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ResponseTravelTimeStatistics
ResponseTimeFilterPostcodeSectorProperties::getTravelTimeReachable()
{
	return travel_time_reachable;
}

void
ResponseTimeFilterPostcodeSectorProperties::setTravelTimeReachable(ResponseTravelTimeStatistics  travel_time_reachable)
{
	this->travel_time_reachable = travel_time_reachable;
}

ResponseTravelTimeStatistics
ResponseTimeFilterPostcodeSectorProperties::getTravelTimeAll()
{
	return travel_time_all;
}

void
ResponseTimeFilterPostcodeSectorProperties::setTravelTimeAll(ResponseTravelTimeStatistics  travel_time_all)
{
	this->travel_time_all = travel_time_all;
}

double
ResponseTimeFilterPostcodeSectorProperties::getCoverage()
{
	return coverage;
}

void
ResponseTimeFilterPostcodeSectorProperties::setCoverage(double  coverage)
{
	this->coverage = coverage;
}


