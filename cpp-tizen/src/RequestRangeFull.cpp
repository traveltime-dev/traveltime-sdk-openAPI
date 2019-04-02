#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestRangeFull.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestRangeFull::RequestRangeFull()
{
	//__init();
}

RequestRangeFull::~RequestRangeFull()
{
	//__cleanup();
}

void
RequestRangeFull::__init()
{
	//enabled = bool(false);
	//max_results = int(0);
	//width = int(0);
}

void
RequestRangeFull::__cleanup()
{
	//if(enabled != NULL) {
	//
	//delete enabled;
	//enabled = NULL;
	//}
	//if(max_results != NULL) {
	//
	//delete max_results;
	//max_results = NULL;
	//}
	//if(width != NULL) {
	//
	//delete width;
	//width = NULL;
	//}
	//
}

void
RequestRangeFull::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *enabledKey = "enabled";
	node = json_object_get_member(pJsonObject, enabledKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&enabled, node, "bool", "");
		} else {
			
		}
	}
	const gchar *max_resultsKey = "max_results";
	node = json_object_get_member(pJsonObject, max_resultsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&max_results, node, "int", "");
		} else {
			
		}
	}
	const gchar *widthKey = "width";
	node = json_object_get_member(pJsonObject, widthKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&width, node, "int", "");
		} else {
			
		}
	}
}

RequestRangeFull::RequestRangeFull(char* json)
{
	this->fromJson(json);
}

char*
RequestRangeFull::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getEnabled();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *enabledKey = "enabled";
	json_object_set_member(pJsonObject, enabledKey, node);
	if (isprimitive("int")) {
		int obj = getMaxResults();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *max_resultsKey = "max_results";
	json_object_set_member(pJsonObject, max_resultsKey, node);
	if (isprimitive("int")) {
		int obj = getWidth();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *widthKey = "width";
	json_object_set_member(pJsonObject, widthKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
RequestRangeFull::getEnabled()
{
	return enabled;
}

void
RequestRangeFull::setEnabled(bool  enabled)
{
	this->enabled = enabled;
}

int
RequestRangeFull::getMaxResults()
{
	return max_results;
}

void
RequestRangeFull::setMaxResults(int  max_results)
{
	this->max_results = max_results;
}

int
RequestRangeFull::getWidth()
{
	return width;
}

void
RequestRangeFull::setWidth(int  width)
{
	this->width = width;
}


