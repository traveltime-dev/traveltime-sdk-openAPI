#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestRangeNoMaxResults.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestRangeNoMaxResults::RequestRangeNoMaxResults()
{
	//__init();
}

RequestRangeNoMaxResults::~RequestRangeNoMaxResults()
{
	//__cleanup();
}

void
RequestRangeNoMaxResults::__init()
{
	//enabled = bool(false);
	//width = int(0);
}

void
RequestRangeNoMaxResults::__cleanup()
{
	//if(enabled != NULL) {
	//
	//delete enabled;
	//enabled = NULL;
	//}
	//if(width != NULL) {
	//
	//delete width;
	//width = NULL;
	//}
	//
}

void
RequestRangeNoMaxResults::fromJson(char* jsonStr)
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
	const gchar *widthKey = "width";
	node = json_object_get_member(pJsonObject, widthKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&width, node, "int", "");
		} else {
			
		}
	}
}

RequestRangeNoMaxResults::RequestRangeNoMaxResults(char* json)
{
	this->fromJson(json);
}

char*
RequestRangeNoMaxResults::toJson()
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
RequestRangeNoMaxResults::getEnabled()
{
	return enabled;
}

void
RequestRangeNoMaxResults::setEnabled(bool  enabled)
{
	this->enabled = enabled;
}

int
RequestRangeNoMaxResults::getWidth()
{
	return width;
}

void
RequestRangeNoMaxResults::setWidth(int  width)
{
	this->width = width;
}


