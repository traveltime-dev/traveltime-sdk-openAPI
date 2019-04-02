#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseBox.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseBox::ResponseBox()
{
	//__init();
}

ResponseBox::~ResponseBox()
{
	//__cleanup();
}

void
ResponseBox::__init()
{
	//min_lat = double(0);
	//max_lat = double(0);
	//min_lng = double(0);
	//max_lng = double(0);
}

void
ResponseBox::__cleanup()
{
	//if(min_lat != NULL) {
	//
	//delete min_lat;
	//min_lat = NULL;
	//}
	//if(max_lat != NULL) {
	//
	//delete max_lat;
	//max_lat = NULL;
	//}
	//if(min_lng != NULL) {
	//
	//delete min_lng;
	//min_lng = NULL;
	//}
	//if(max_lng != NULL) {
	//
	//delete max_lng;
	//max_lng = NULL;
	//}
	//
}

void
ResponseBox::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *min_latKey = "min_lat";
	node = json_object_get_member(pJsonObject, min_latKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&min_lat, node, "double", "");
		} else {
			
		}
	}
	const gchar *max_latKey = "max_lat";
	node = json_object_get_member(pJsonObject, max_latKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&max_lat, node, "double", "");
		} else {
			
		}
	}
	const gchar *min_lngKey = "min_lng";
	node = json_object_get_member(pJsonObject, min_lngKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&min_lng, node, "double", "");
		} else {
			
		}
	}
	const gchar *max_lngKey = "max_lng";
	node = json_object_get_member(pJsonObject, max_lngKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&max_lng, node, "double", "");
		} else {
			
		}
	}
}

ResponseBox::ResponseBox(char* json)
{
	this->fromJson(json);
}

char*
ResponseBox::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("double")) {
		double obj = getMinLat();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *min_latKey = "min_lat";
	json_object_set_member(pJsonObject, min_latKey, node);
	if (isprimitive("double")) {
		double obj = getMaxLat();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *max_latKey = "max_lat";
	json_object_set_member(pJsonObject, max_latKey, node);
	if (isprimitive("double")) {
		double obj = getMinLng();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *min_lngKey = "min_lng";
	json_object_set_member(pJsonObject, min_lngKey, node);
	if (isprimitive("double")) {
		double obj = getMaxLng();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *max_lngKey = "max_lng";
	json_object_set_member(pJsonObject, max_lngKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

double
ResponseBox::getMinLat()
{
	return min_lat;
}

void
ResponseBox::setMinLat(double  min_lat)
{
	this->min_lat = min_lat;
}

double
ResponseBox::getMaxLat()
{
	return max_lat;
}

void
ResponseBox::setMaxLat(double  max_lat)
{
	this->max_lat = max_lat;
}

double
ResponseBox::getMinLng()
{
	return min_lng;
}

void
ResponseBox::setMinLng(double  min_lng)
{
	this->min_lng = min_lng;
}

double
ResponseBox::getMaxLng()
{
	return max_lng;
}

void
ResponseBox::setMaxLng(double  max_lng)
{
	this->max_lng = max_lng;
}


