#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMapBoundingBoxesResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMapBoundingBoxesResult::ResponseTimeMapBoundingBoxesResult()
{
	//__init();
}

ResponseTimeMapBoundingBoxesResult::~ResponseTimeMapBoundingBoxesResult()
{
	//__cleanup();
}

void
ResponseTimeMapBoundingBoxesResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> bounding_boxes;
	//properties = new ResponseTimeMapProperties();
}

void
ResponseTimeMapBoundingBoxesResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(bounding_boxes != NULL) {
	//bounding_boxes.RemoveAll(true);
	//delete bounding_boxes;
	//bounding_boxes = NULL;
	//}
	//if(properties != NULL) {
	//
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseTimeMapBoundingBoxesResult::fromJson(char* jsonStr)
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
	const gchar *bounding_boxesKey = "bounding_boxes";
	node = json_object_get_member(pJsonObject, bounding_boxesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseBoundingBox> new_list;
			ResponseBoundingBox inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseBoundingBox")) {
					jsonToValue(&inst, temp_json, "ResponseBoundingBox", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			bounding_boxes = new_list;
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

ResponseTimeMapBoundingBoxesResult::ResponseTimeMapBoundingBoxesResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMapBoundingBoxesResult::toJson()
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
	if (isprimitive("ResponseBoundingBox")) {
		list<ResponseBoundingBox> new_list = static_cast<list <ResponseBoundingBox> > (getBoundingBoxes());
		node = converttoJson(&new_list, "ResponseBoundingBox", "array");
	} else {
		node = json_node_alloc();
		list<ResponseBoundingBox> new_list = static_cast<list <ResponseBoundingBox> > (getBoundingBoxes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseBoundingBox>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseBoundingBox obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *bounding_boxesKey = "bounding_boxes";
	json_object_set_member(pJsonObject, bounding_boxesKey, node);
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
ResponseTimeMapBoundingBoxesResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeMapBoundingBoxesResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseBoundingBox>
ResponseTimeMapBoundingBoxesResult::getBoundingBoxes()
{
	return bounding_boxes;
}

void
ResponseTimeMapBoundingBoxesResult::setBoundingBoxes(std::list <ResponseBoundingBox> bounding_boxes)
{
	this->bounding_boxes = bounding_boxes;
}

ResponseTimeMapProperties
ResponseTimeMapBoundingBoxesResult::getProperties()
{
	return properties;
}

void
ResponseTimeMapBoundingBoxesResult::setProperties(ResponseTimeMapProperties  properties)
{
	this->properties = properties;
}


