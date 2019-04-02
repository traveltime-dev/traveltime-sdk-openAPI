#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMapProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMapProperties::ResponseTimeMapProperties()
{
	//__init();
}

ResponseTimeMapProperties::~ResponseTimeMapProperties()
{
	//__cleanup();
}

void
ResponseTimeMapProperties::__init()
{
	//is_only_walking = bool(false);
}

void
ResponseTimeMapProperties::__cleanup()
{
	//if(is_only_walking != NULL) {
	//
	//delete is_only_walking;
	//is_only_walking = NULL;
	//}
	//
}

void
ResponseTimeMapProperties::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *is_only_walkingKey = "is_only_walking";
	node = json_object_get_member(pJsonObject, is_only_walkingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_only_walking, node, "bool", "");
		} else {
			
		}
	}
}

ResponseTimeMapProperties::ResponseTimeMapProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMapProperties::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getIsOnlyWalking();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_only_walkingKey = "is_only_walking";
	json_object_set_member(pJsonObject, is_only_walkingKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
ResponseTimeMapProperties::getIsOnlyWalking()
{
	return is_only_walking;
}

void
ResponseTimeMapProperties::setIsOnlyWalking(bool  is_only_walking)
{
	this->is_only_walking = is_only_walking;
}


