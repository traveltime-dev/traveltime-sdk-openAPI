#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterLocation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterLocation::ResponseTimeFilterLocation()
{
	//__init();
}

ResponseTimeFilterLocation::~ResponseTimeFilterLocation()
{
	//__cleanup();
}

void
ResponseTimeFilterLocation::__init()
{
	//id = std::string();
	//new std::list()std::list> properties;
}

void
ResponseTimeFilterLocation::__cleanup()
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
ResponseTimeFilterLocation::fromJson(char* jsonStr)
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
			list<ResponseTimeFilterProperties> new_list;
			ResponseTimeFilterProperties inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterProperties")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterProperties", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			properties = new_list;
		}
		
	}
}

ResponseTimeFilterLocation::ResponseTimeFilterLocation(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterLocation::toJson()
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
	if (isprimitive("ResponseTimeFilterProperties")) {
		list<ResponseTimeFilterProperties> new_list = static_cast<list <ResponseTimeFilterProperties> > (getProperties());
		node = converttoJson(&new_list, "ResponseTimeFilterProperties", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterProperties> new_list = static_cast<list <ResponseTimeFilterProperties> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterProperties>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterProperties obj = *it;
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
ResponseTimeFilterLocation::getId()
{
	return id;
}

void
ResponseTimeFilterLocation::setId(std::string  id)
{
	this->id = id;
}

std::list<ResponseTimeFilterProperties>
ResponseTimeFilterLocation::getProperties()
{
	return properties;
}

void
ResponseTimeFilterLocation::setProperties(std::list <ResponseTimeFilterProperties> properties)
{
	this->properties = properties;
}


