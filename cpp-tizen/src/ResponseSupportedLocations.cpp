#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseSupportedLocations.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseSupportedLocations::ResponseSupportedLocations()
{
	//__init();
}

ResponseSupportedLocations::~ResponseSupportedLocations()
{
	//__cleanup();
}

void
ResponseSupportedLocations::__init()
{
	//new std::list()std::list> locations;
	//new std::list()std::list> unsupported_locations;
}

void
ResponseSupportedLocations::__cleanup()
{
	//if(locations != NULL) {
	//locations.RemoveAll(true);
	//delete locations;
	//locations = NULL;
	//}
	//if(unsupported_locations != NULL) {
	//unsupported_locations.RemoveAll(true);
	//delete unsupported_locations;
	//unsupported_locations = NULL;
	//}
	//
}

void
ResponseSupportedLocations::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *locationsKey = "locations";
	node = json_object_get_member(pJsonObject, locationsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseSupportedLocation> new_list;
			ResponseSupportedLocation inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseSupportedLocation")) {
					jsonToValue(&inst, temp_json, "ResponseSupportedLocation", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			locations = new_list;
		}
		
	}
	const gchar *unsupported_locationsKey = "unsupported_locations";
	node = json_object_get_member(pJsonObject, unsupported_locationsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			unsupported_locations = new_list;
		}
		
	}
}

ResponseSupportedLocations::ResponseSupportedLocations(char* json)
{
	this->fromJson(json);
}

char*
ResponseSupportedLocations::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseSupportedLocation")) {
		list<ResponseSupportedLocation> new_list = static_cast<list <ResponseSupportedLocation> > (getLocations());
		node = converttoJson(&new_list, "ResponseSupportedLocation", "array");
	} else {
		node = json_node_alloc();
		list<ResponseSupportedLocation> new_list = static_cast<list <ResponseSupportedLocation> > (getLocations());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseSupportedLocation>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseSupportedLocation obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *locationsKey = "locations";
	json_object_set_member(pJsonObject, locationsKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getUnsupportedLocations());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getUnsupportedLocations());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *unsupported_locationsKey = "unsupported_locations";
	json_object_set_member(pJsonObject, unsupported_locationsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ResponseSupportedLocation>
ResponseSupportedLocations::getLocations()
{
	return locations;
}

void
ResponseSupportedLocations::setLocations(std::list <ResponseSupportedLocation> locations)
{
	this->locations = locations;
}

std::list<std::string>
ResponseSupportedLocations::getUnsupportedLocations()
{
	return unsupported_locations;
}

void
ResponseSupportedLocations::setUnsupportedLocations(std::list <std::string> unsupported_locations)
{
	this->unsupported_locations = unsupported_locations;
}


