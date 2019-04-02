#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseRoute.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseRoute::ResponseRoute()
{
	//__init();
}

ResponseRoute::~ResponseRoute()
{
	//__cleanup();
}

void
ResponseRoute::__init()
{
	//departure_time = null;
	//arrival_time = null;
	//new std::list()std::list> parts;
}

void
ResponseRoute::__cleanup()
{
	//if(departure_time != NULL) {
	//
	//delete departure_time;
	//departure_time = NULL;
	//}
	//if(arrival_time != NULL) {
	//
	//delete arrival_time;
	//arrival_time = NULL;
	//}
	//if(parts != NULL) {
	//parts.RemoveAll(true);
	//delete parts;
	//parts = NULL;
	//}
	//
}

void
ResponseRoute::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *departure_timeKey = "departure_time";
	node = json_object_get_member(pJsonObject, departure_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&departure_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *arrival_timeKey = "arrival_time";
	node = json_object_get_member(pJsonObject, arrival_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&arrival_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *partsKey = "parts";
	node = json_object_get_member(pJsonObject, partsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseRoutePart> new_list;
			ResponseRoutePart inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseRoutePart")) {
					jsonToValue(&inst, temp_json, "ResponseRoutePart", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			parts = new_list;
		}
		
	}
}

ResponseRoute::ResponseRoute(char* json)
{
	this->fromJson(json);
}

char*
ResponseRoute::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getDepartureTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departure_timeKey = "departure_time";
	json_object_set_member(pJsonObject, departure_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getArrivalTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *arrival_timeKey = "arrival_time";
	json_object_set_member(pJsonObject, arrival_timeKey, node);
	if (isprimitive("ResponseRoutePart")) {
		list<ResponseRoutePart> new_list = static_cast<list <ResponseRoutePart> > (getParts());
		node = converttoJson(&new_list, "ResponseRoutePart", "array");
	} else {
		node = json_node_alloc();
		list<ResponseRoutePart> new_list = static_cast<list <ResponseRoutePart> > (getParts());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseRoutePart>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseRoutePart obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *partsKey = "parts";
	json_object_set_member(pJsonObject, partsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseRoute::getDepartureTime()
{
	return departure_time;
}

void
ResponseRoute::setDepartureTime(std::string  departure_time)
{
	this->departure_time = departure_time;
}

std::string
ResponseRoute::getArrivalTime()
{
	return arrival_time;
}

void
ResponseRoute::setArrivalTime(std::string  arrival_time)
{
	this->arrival_time = arrival_time;
}

std::list<ResponseRoutePart>
ResponseRoute::getParts()
{
	return parts;
}

void
ResponseRoute::setParts(std::list <ResponseRoutePart> parts)
{
	this->parts = parts;
}


