#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMapWktResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMapWktResult::ResponseTimeMapWktResult()
{
	//__init();
}

ResponseTimeMapWktResult::~ResponseTimeMapWktResult()
{
	//__cleanup();
}

void
ResponseTimeMapWktResult::__init()
{
	//search_id = std::string();
	//shape = std::string();
	//properties = new ResponseTimeMapProperties();
}

void
ResponseTimeMapWktResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(shape != NULL) {
	//
	//delete shape;
	//shape = NULL;
	//}
	//if(properties != NULL) {
	//
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseTimeMapWktResult::fromJson(char* jsonStr)
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
	const gchar *shapeKey = "shape";
	node = json_object_get_member(pJsonObject, shapeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&shape, node, "std::string", "");
		} else {
			
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

ResponseTimeMapWktResult::ResponseTimeMapWktResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMapWktResult::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getShape();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *shapeKey = "shape";
	json_object_set_member(pJsonObject, shapeKey, node);
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
ResponseTimeMapWktResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeMapWktResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::string
ResponseTimeMapWktResult::getShape()
{
	return shape;
}

void
ResponseTimeMapWktResult::setShape(std::string  shape)
{
	this->shape = shape;
}

ResponseTimeMapProperties
ResponseTimeMapWktResult::getProperties()
{
	return properties;
}

void
ResponseTimeMapWktResult::setProperties(ResponseTimeMapProperties  properties)
{
	this->properties = properties;
}


