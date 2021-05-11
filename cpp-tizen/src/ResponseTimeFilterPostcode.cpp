#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcode.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcode::ResponseTimeFilterPostcode()
{
	//__init();
}

ResponseTimeFilterPostcode::~ResponseTimeFilterPostcode()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcode::__init()
{
	//code = std::string();
	//new std::list()std::list> properties;
}

void
ResponseTimeFilterPostcode::__cleanup()
{
	//if(code != NULL) {
	//
	//delete code;
	//code = NULL;
	//}
	//if(properties != NULL) {
	//properties.RemoveAll(true);
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcode::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *codeKey = "code";
	node = json_object_get_member(pJsonObject, codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeFilterPostcodesProperties> new_list;
			ResponseTimeFilterPostcodesProperties inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterPostcodesProperties")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterPostcodesProperties", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			properties = new_list;
		}
		
	}
}

ResponseTimeFilterPostcode::ResponseTimeFilterPostcode(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcode::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codeKey = "code";
	json_object_set_member(pJsonObject, codeKey, node);
	if (isprimitive("ResponseTimeFilterPostcodesProperties")) {
		list<ResponseTimeFilterPostcodesProperties> new_list = static_cast<list <ResponseTimeFilterPostcodesProperties> > (getProperties());
		node = converttoJson(&new_list, "ResponseTimeFilterPostcodesProperties", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterPostcodesProperties> new_list = static_cast<list <ResponseTimeFilterPostcodesProperties> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterPostcodesProperties>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterPostcodesProperties obj = *it;
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
ResponseTimeFilterPostcode::getCode()
{
	return code;
}

void
ResponseTimeFilterPostcode::setCode(std::string  code)
{
	this->code = code;
}

std::list<ResponseTimeFilterPostcodesProperties>
ResponseTimeFilterPostcode::getProperties()
{
	return properties;
}

void
ResponseTimeFilterPostcode::setProperties(std::list <ResponseTimeFilterPostcodesProperties> properties)
{
	this->properties = properties;
}


