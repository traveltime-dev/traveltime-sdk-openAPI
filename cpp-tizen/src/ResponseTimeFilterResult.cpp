#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterResult::ResponseTimeFilterResult()
{
	//__init();
}

ResponseTimeFilterResult::~ResponseTimeFilterResult()
{
	//__cleanup();
}

void
ResponseTimeFilterResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> locations;
	//new std::list()std::list> unreachable;
}

void
ResponseTimeFilterResult::__cleanup()
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
ResponseTimeFilterResult::fromJson(char* jsonStr)
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
			list<ResponseTimeFilterLocation> new_list;
			ResponseTimeFilterLocation inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterLocation")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterLocation", "");
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

ResponseTimeFilterResult::ResponseTimeFilterResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterResult::toJson()
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
	if (isprimitive("ResponseTimeFilterLocation")) {
		list<ResponseTimeFilterLocation> new_list = static_cast<list <ResponseTimeFilterLocation> > (getLocations());
		node = converttoJson(&new_list, "ResponseTimeFilterLocation", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterLocation> new_list = static_cast<list <ResponseTimeFilterLocation> > (getLocations());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterLocation>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterLocation obj = *it;
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
ResponseTimeFilterResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeFilterResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseTimeFilterLocation>
ResponseTimeFilterResult::getLocations()
{
	return locations;
}

void
ResponseTimeFilterResult::setLocations(std::list <ResponseTimeFilterLocation> locations)
{
	this->locations = locations;
}

std::list<std::string>
ResponseTimeFilterResult::getUnreachable()
{
	return unreachable;
}

void
ResponseTimeFilterResult::setUnreachable(std::list <std::string> unreachable)
{
	this->unreachable = unreachable;
}


