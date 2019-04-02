#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodeSectorsResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodeSectorsResult::ResponseTimeFilterPostcodeSectorsResult()
{
	//__init();
}

ResponseTimeFilterPostcodeSectorsResult::~ResponseTimeFilterPostcodeSectorsResult()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodeSectorsResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> sectors;
}

void
ResponseTimeFilterPostcodeSectorsResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(sectors != NULL) {
	//sectors.RemoveAll(true);
	//delete sectors;
	//sectors = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodeSectorsResult::fromJson(char* jsonStr)
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
	const gchar *sectorsKey = "sectors";
	node = json_object_get_member(pJsonObject, sectorsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeFilterPostcodeSector> new_list;
			ResponseTimeFilterPostcodeSector inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterPostcodeSector")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterPostcodeSector", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sectors = new_list;
		}
		
	}
}

ResponseTimeFilterPostcodeSectorsResult::ResponseTimeFilterPostcodeSectorsResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodeSectorsResult::toJson()
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
	if (isprimitive("ResponseTimeFilterPostcodeSector")) {
		list<ResponseTimeFilterPostcodeSector> new_list = static_cast<list <ResponseTimeFilterPostcodeSector> > (getSectors());
		node = converttoJson(&new_list, "ResponseTimeFilterPostcodeSector", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterPostcodeSector> new_list = static_cast<list <ResponseTimeFilterPostcodeSector> > (getSectors());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterPostcodeSector>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterPostcodeSector obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sectorsKey = "sectors";
	json_object_set_member(pJsonObject, sectorsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseTimeFilterPostcodeSectorsResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeFilterPostcodeSectorsResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseTimeFilterPostcodeSector>
ResponseTimeFilterPostcodeSectorsResult::getSectors()
{
	return sectors;
}

void
ResponseTimeFilterPostcodeSectorsResult::setSectors(std::list <ResponseTimeFilterPostcodeSector> sectors)
{
	this->sectors = sectors;
}


