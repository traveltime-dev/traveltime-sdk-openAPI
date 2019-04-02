#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseRoutesLocation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseRoutesLocation::ResponseRoutesLocation()
{
	//__init();
}

ResponseRoutesLocation::~ResponseRoutesLocation()
{
	//__cleanup();
}

void
ResponseRoutesLocation::__init()
{
	//id = std::string();
	//new std::list()std::list> properties;
}

void
ResponseRoutesLocation::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(properties != NULL) {
	//properties.RemoveAll(true);
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseRoutesLocation::fromJson(char* jsonStr)
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
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseRoutesProperties> new_list;
			ResponseRoutesProperties inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseRoutesProperties")) {
					jsonToValue(&inst, temp_json, "ResponseRoutesProperties", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			properties = new_list;
		}
		
	}
}

ResponseRoutesLocation::ResponseRoutesLocation(char* json)
{
	this->fromJson(json);
}

char*
ResponseRoutesLocation::toJson()
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
	if (isprimitive("ResponseRoutesProperties")) {
		list<ResponseRoutesProperties> new_list = static_cast<list <ResponseRoutesProperties> > (getProperties());
		node = converttoJson(&new_list, "ResponseRoutesProperties", "array");
	} else {
		node = json_node_alloc();
		list<ResponseRoutesProperties> new_list = static_cast<list <ResponseRoutesProperties> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseRoutesProperties>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseRoutesProperties obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *propertiesKey = "properties";
	json_object_set_member(pJsonObject, propertiesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseRoutesLocation::getId()
{
	return id;
}

void
ResponseRoutesLocation::setId(std::string  id)
{
	this->id = id;
}

std::list<ResponseRoutesProperties>
ResponseRoutesLocation::getProperties()
{
	return properties;
}

void
ResponseRoutesLocation::setProperties(std::list <ResponseRoutesProperties> properties)
{
	this->properties = properties;
}


