#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseSupportedLocation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseSupportedLocation::ResponseSupportedLocation()
{
	//__init();
}

ResponseSupportedLocation::~ResponseSupportedLocation()
{
	//__cleanup();
}

void
ResponseSupportedLocation::__init()
{
	//id = std::string();
	//map_name = std::string();
}

void
ResponseSupportedLocation::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(map_name != NULL) {
	//
	//delete map_name;
	//map_name = NULL;
	//}
	//
}

void
ResponseSupportedLocation::fromJson(char* jsonStr)
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
	const gchar *map_nameKey = "map_name";
	node = json_object_get_member(pJsonObject, map_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&map_name, node, "std::string", "");
		} else {
			
		}
	}
}

ResponseSupportedLocation::ResponseSupportedLocation(char* json)
{
	this->fromJson(json);
}

char*
ResponseSupportedLocation::toJson()
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
		std::string obj = getMapName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *map_nameKey = "map_name";
	json_object_set_member(pJsonObject, map_nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseSupportedLocation::getId()
{
	return id;
}

void
ResponseSupportedLocation::setId(std::string  id)
{
	this->id = id;
}

std::string
ResponseSupportedLocation::getMapName()
{
	return map_name;
}

void
ResponseSupportedLocation::setMapName(std::string  map_name)
{
	this->map_name = map_name;
}


