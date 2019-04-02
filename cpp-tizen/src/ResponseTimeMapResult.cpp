#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMapResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMapResult::ResponseTimeMapResult()
{
	//__init();
}

ResponseTimeMapResult::~ResponseTimeMapResult()
{
	//__cleanup();
}

void
ResponseTimeMapResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> shapes;
	//properties = new ResponseTimeMapProperties();
}

void
ResponseTimeMapResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(shapes != NULL) {
	//shapes.RemoveAll(true);
	//delete shapes;
	//shapes = NULL;
	//}
	//if(properties != NULL) {
	//
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseTimeMapResult::fromJson(char* jsonStr)
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
	const gchar *shapesKey = "shapes";
	node = json_object_get_member(pJsonObject, shapesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseShape> new_list;
			ResponseShape inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseShape")) {
					jsonToValue(&inst, temp_json, "ResponseShape", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			shapes = new_list;
		}
		
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTimeMapProperties")) {
			jsonToValue(&properties, node, "ResponseTimeMapProperties", "ResponseTimeMapProperties");
		} else {
			
			ResponseTimeMapProperties* obj = static_cast<ResponseTimeMapProperties*> (&properties);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseTimeMapResult::ResponseTimeMapResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMapResult::toJson()
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
	if (isprimitive("ResponseShape")) {
		list<ResponseShape> new_list = static_cast<list <ResponseShape> > (getShapes());
		node = converttoJson(&new_list, "ResponseShape", "array");
	} else {
		node = json_node_alloc();
		list<ResponseShape> new_list = static_cast<list <ResponseShape> > (getShapes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseShape>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseShape obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *shapesKey = "shapes";
	json_object_set_member(pJsonObject, shapesKey, node);
	if (isprimitive("ResponseTimeMapProperties")) {
		ResponseTimeMapProperties obj = getProperties();
		node = converttoJson(&obj, "ResponseTimeMapProperties", "");
	}
	else {
		
		ResponseTimeMapProperties obj = static_cast<ResponseTimeMapProperties> (getProperties());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
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
ResponseTimeMapResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeMapResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseShape>
ResponseTimeMapResult::getShapes()
{
	return shapes;
}

void
ResponseTimeMapResult::setShapes(std::list <ResponseShape> shapes)
{
	this->shapes = shapes;
}

ResponseTimeMapProperties
ResponseTimeMapResult::getProperties()
{
	return properties;
}

void
ResponseTimeMapResult::setProperties(ResponseTimeMapProperties  properties)
{
	this->properties = properties;
}


