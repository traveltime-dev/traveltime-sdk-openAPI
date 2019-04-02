#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseMapInfoMap.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseMapInfoMap::ResponseMapInfoMap()
{
	//__init();
}

ResponseMapInfoMap::~ResponseMapInfoMap()
{
	//__cleanup();
}

void
ResponseMapInfoMap::__init()
{
	//name = std::string();
	//features = new ResponseMapInfoFeatures();
}

void
ResponseMapInfoMap::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(features != NULL) {
	//
	//delete features;
	//features = NULL;
	//}
	//
}

void
ResponseMapInfoMap::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *featuresKey = "features";
	node = json_object_get_member(pJsonObject, featuresKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseMapInfoFeatures")) {
			jsonToValue(&features, node, "ResponseMapInfoFeatures", "ResponseMapInfoFeatures");
		} else {
			
			ResponseMapInfoFeatures* obj = static_cast<ResponseMapInfoFeatures*> (&features);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseMapInfoMap::ResponseMapInfoMap(char* json)
{
	this->fromJson(json);
}

char*
ResponseMapInfoMap::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("ResponseMapInfoFeatures")) {
		ResponseMapInfoFeatures obj = getFeatures();
		node = converttoJson(&obj, "ResponseMapInfoFeatures", "");
	}
	else {
		
		ResponseMapInfoFeatures obj = static_cast<ResponseMapInfoFeatures> (getFeatures());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *featuresKey = "features";
	json_object_set_member(pJsonObject, featuresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseMapInfoMap::getName()
{
	return name;
}

void
ResponseMapInfoMap::setName(std::string  name)
{
	this->name = name;
}

ResponseMapInfoFeatures
ResponseMapInfoMap::getFeatures()
{
	return features;
}

void
ResponseMapInfoMap::setFeatures(ResponseMapInfoFeatures  features)
{
	this->features = features;
}


