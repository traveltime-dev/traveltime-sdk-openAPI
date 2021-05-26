#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestLevelOfDetail.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestLevelOfDetail::RequestLevelOfDetail()
{
	//__init();
}

RequestLevelOfDetail::~RequestLevelOfDetail()
{
	//__cleanup();
}

void
RequestLevelOfDetail::__init()
{
	//scale_type = std::string();
	//level = std::string();
}

void
RequestLevelOfDetail::__cleanup()
{
	//if(scale_type != NULL) {
	//
	//delete scale_type;
	//scale_type = NULL;
	//}
	//if(level != NULL) {
	//
	//delete level;
	//level = NULL;
	//}
	//
}

void
RequestLevelOfDetail::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *scale_typeKey = "scale_type";
	node = json_object_get_member(pJsonObject, scale_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&scale_type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *levelKey = "level";
	node = json_object_get_member(pJsonObject, levelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&level, node, "std::string", "");
		} else {
			
		}
	}
}

RequestLevelOfDetail::RequestLevelOfDetail(char* json)
{
	this->fromJson(json);
}

char*
RequestLevelOfDetail::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getScaleType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *scale_typeKey = "scale_type";
	json_object_set_member(pJsonObject, scale_typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLevel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *levelKey = "level";
	json_object_set_member(pJsonObject, levelKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestLevelOfDetail::getScaleType()
{
	return scale_type;
}

void
RequestLevelOfDetail::setScaleType(std::string  scale_type)
{
	this->scale_type = scale_type;
}

std::string
RequestLevelOfDetail::getLevel()
{
	return level;
}

void
RequestLevelOfDetail::setLevel(std::string  level)
{
	this->level = level;
}


