#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseRoutesResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseRoutesResult::ResponseRoutesResult()
{
	//__init();
}

ResponseRoutesResult::~ResponseRoutesResult()
{
	//__cleanup();
}

void
ResponseRoutesResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> locations;
	//new std::list()std::list> unreachable;
}

void
ResponseRoutesResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(locations != NULL) {
	//locations.RemoveAll(true);
	//delete locations;
	//locations = NULL;
	//}
	//if(unreachable != NULL) {
	//unreachable.RemoveAll(true);
	//delete unreachable;
	//unreachable = NULL;
	//}
	//
}

void
ResponseRoutesResult::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *search_idKey = "search_id";
	node = json_object_get_member(pJsonObject, search_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&search_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *locationsKey = "locations";
	node = json_object_get_member(pJsonObject, locationsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseRoutesLocation> new_list;
			ResponseRoutesLocation inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseRoutesLocation")) {
					jsonToValue(&inst, temp_json, "ResponseRoutesLocation", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			locations = new_list;
		}
		
	}
	const gchar *unreachableKey = "unreachable";
	node = json_object_get_member(pJsonObject, unreachableKey);
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
			unreachable = new_list;
		}
		
	}
}

ResponseRoutesResult::ResponseRoutesResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseRoutesResult::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSearchId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *search_idKey = "search_id";
	json_object_set_member(pJsonObject, search_idKey, node);
	if (isprimitive("ResponseRoutesLocation")) {
		list<ResponseRoutesLocation> new_list = static_cast<list <ResponseRoutesLocation> > (getLocations());
		node = converttoJson(&new_list, "ResponseRoutesLocation", "array");
	} else {
		node = json_node_alloc();
		list<ResponseRoutesLocation> new_list = static_cast<list <ResponseRoutesLocation> > (getLocations());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseRoutesLocation>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseRoutesLocation obj = *it;
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
		list<std::string> new_list = static_cast<list <std::string> > (getUnreachable());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getUnreachable());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *unreachableKey = "unreachable";
	json_object_set_member(pJsonObject, unreachableKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseRoutesResult::getSearchId()
{
	return search_id;
}

void
ResponseRoutesResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseRoutesLocation>
ResponseRoutesResult::getLocations()
{
	return locations;
}

void
ResponseRoutesResult::setLocations(std::list <ResponseRoutesLocation> locations)
{
	this->locations = locations;
}

std::list<std::string>
ResponseRoutesResult::getUnreachable()
{
	return unreachable;
}

void
ResponseRoutesResult::setUnreachable(std::list <std::string> unreachable)
{
	this->unreachable = unreachable;
}


