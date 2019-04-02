#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestUnionOnIntersection.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestUnionOnIntersection::RequestUnionOnIntersection()
{
	//__init();
}

RequestUnionOnIntersection::~RequestUnionOnIntersection()
{
	//__cleanup();
}

void
RequestUnionOnIntersection::__init()
{
	//id = std::string();
	//new std::list()std::list> search_ids;
}

void
RequestUnionOnIntersection::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(search_ids != NULL) {
	//search_ids.RemoveAll(true);
	//delete search_ids;
	//search_ids = NULL;
	//}
	//
}

void
RequestUnionOnIntersection::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *search_idsKey = "search_ids";
	node = json_object_get_member(pJsonObject, search_idsKey);
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
			search_ids = new_list;
		}
		
	}
}

RequestUnionOnIntersection::RequestUnionOnIntersection(char* json)
{
	this->fromJson(json);
}

char*
RequestUnionOnIntersection::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getSearchIds());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getSearchIds());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *search_idsKey = "search_ids";
	json_object_set_member(pJsonObject, search_idsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestUnionOnIntersection::getId()
{
	return id;
}

void
RequestUnionOnIntersection::setId(std::string  id)
{
	this->id = id;
}

std::list<std::string>
RequestUnionOnIntersection::getSearchIds()
{
	return search_ids;
}

void
RequestUnionOnIntersection::setSearchIds(std::list <std::string> search_ids)
{
	this->search_ids = search_ids;
}


