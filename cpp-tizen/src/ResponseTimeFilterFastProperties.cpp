#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterFastProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterFastProperties::ResponseTimeFilterFastProperties()
{
	//__init();
}

ResponseTimeFilterFastProperties::~ResponseTimeFilterFastProperties()
{
	//__cleanup();
}

void
ResponseTimeFilterFastProperties::__init()
{
	//travel_time = int(0);
	//fares = new ResponseFaresFast();
}

void
ResponseTimeFilterFastProperties::__cleanup()
{
	//if(travel_time != NULL) {
	//
	//delete travel_time;
	//travel_time = NULL;
	//}
	//if(fares != NULL) {
	//
	//delete fares;
	//fares = NULL;
	//}
	//
}

void
ResponseTimeFilterFastProperties::fromJson(char* jsonStr)
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
	const gchar *faresKey = "fares";
	node = json_object_get_member(pJsonObject, faresKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseFaresFast")) {
			jsonToValue(&fares, node, "ResponseFaresFast", "ResponseFaresFast");
		} else {
			
			ResponseFaresFast* obj = static_cast<ResponseFaresFast*> (&fares);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseTimeFilterFastProperties::ResponseTimeFilterFastProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterFastProperties::toJson()
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
	if (isprimitive("ResponseFaresFast")) {
		ResponseFaresFast obj = getFares();
		node = converttoJson(&obj, "ResponseFaresFast", "");
	}
	else {
		
		ResponseFaresFast obj = static_cast<ResponseFaresFast> (getFares());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *faresKey = "fares";
	json_object_set_member(pJsonObject, faresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ResponseTimeFilterFastProperties::getTravelTime()
{
	return travel_time;
}

void
ResponseTimeFilterFastProperties::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

ResponseFaresFast
ResponseTimeFilterFastProperties::getFares()
{
	return fares;
}

void
ResponseTimeFilterFastProperties::setFares(ResponseFaresFast  fares)
{
	this->fares = fares;
}


