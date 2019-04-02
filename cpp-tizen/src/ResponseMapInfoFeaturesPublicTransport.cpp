#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseMapInfoFeaturesPublicTransport.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseMapInfoFeaturesPublicTransport::ResponseMapInfoFeaturesPublicTransport()
{
	//__init();
}

ResponseMapInfoFeaturesPublicTransport::~ResponseMapInfoFeaturesPublicTransport()
{
	//__cleanup();
}

void
ResponseMapInfoFeaturesPublicTransport::__init()
{
	//date_start = null;
	//date_end = null;
}

void
ResponseMapInfoFeaturesPublicTransport::__cleanup()
{
	//if(date_start != NULL) {
	//
	//delete date_start;
	//date_start = NULL;
	//}
	//if(date_end != NULL) {
	//
	//delete date_end;
	//date_end = NULL;
	//}
	//
}

void
ResponseMapInfoFeaturesPublicTransport::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *date_startKey = "date_start";
	node = json_object_get_member(pJsonObject, date_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&date_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *date_endKey = "date_end";
	node = json_object_get_member(pJsonObject, date_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&date_end, node, "std::string", "");
		} else {
			
		}
	}
}

ResponseMapInfoFeaturesPublicTransport::ResponseMapInfoFeaturesPublicTransport(char* json)
{
	this->fromJson(json);
}

char*
ResponseMapInfoFeaturesPublicTransport::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getDateStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *date_startKey = "date_start";
	json_object_set_member(pJsonObject, date_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *date_endKey = "date_end";
	json_object_set_member(pJsonObject, date_endKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseMapInfoFeaturesPublicTransport::getDateStart()
{
	return date_start;
}

void
ResponseMapInfoFeaturesPublicTransport::setDateStart(std::string  date_start)
{
	this->date_start = date_start;
}

std::string
ResponseMapInfoFeaturesPublicTransport::getDateEnd()
{
	return date_end;
}

void
ResponseMapInfoFeaturesPublicTransport::setDateEnd(std::string  date_end)
{
	this->date_end = date_end;
}


