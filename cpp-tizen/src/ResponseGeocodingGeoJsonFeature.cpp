#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseGeocodingGeoJsonFeature.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseGeocodingGeoJsonFeature::ResponseGeocodingGeoJsonFeature()
{
	//__init();
}

ResponseGeocodingGeoJsonFeature::~ResponseGeocodingGeoJsonFeature()
{
	//__cleanup();
}

void
ResponseGeocodingGeoJsonFeature::__init()
{
	//type = std::string();
	//geometry = new ResponseGeocodingGeometry();
	//properties = new ResponseGeocodingProperties();
}

void
ResponseGeocodingGeoJsonFeature::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(geometry != NULL) {
	//
	//delete geometry;
	//geometry = NULL;
	//}
	//if(properties != NULL) {
	//
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseGeocodingGeoJsonFeature::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *geometryKey = "geometry";
	node = json_object_get_member(pJsonObject, geometryKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseGeocodingGeometry")) {
			jsonToValue(&geometry, node, "ResponseGeocodingGeometry", "ResponseGeocodingGeometry");
		} else {
			
			ResponseGeocodingGeometry* obj = static_cast<ResponseGeocodingGeometry*> (&geometry);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseGeocodingProperties")) {
			jsonToValue(&properties, node, "ResponseGeocodingProperties", "ResponseGeocodingProperties");
		} else {
			
			ResponseGeocodingProperties* obj = static_cast<ResponseGeocodingProperties*> (&properties);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseGeocodingGeoJsonFeature::ResponseGeocodingGeoJsonFeature(char* json)
{
	this->fromJson(json);
}

char*
ResponseGeocodingGeoJsonFeature::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("ResponseGeocodingGeometry")) {
		ResponseGeocodingGeometry obj = getGeometry();
		node = converttoJson(&obj, "ResponseGeocodingGeometry", "");
	}
	else {
		
		ResponseGeocodingGeometry obj = static_cast<ResponseGeocodingGeometry> (getGeometry());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *geometryKey = "geometry";
	json_object_set_member(pJsonObject, geometryKey, node);
	if (isprimitive("ResponseGeocodingProperties")) {
		ResponseGeocodingProperties obj = getProperties();
		node = converttoJson(&obj, "ResponseGeocodingProperties", "");
	}
	else {
		
		ResponseGeocodingProperties obj = static_cast<ResponseGeocodingProperties> (getProperties());
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
ResponseGeocodingGeoJsonFeature::getType()
{
	return type;
}

void
ResponseGeocodingGeoJsonFeature::setType(std::string  type)
{
	this->type = type;
}

ResponseGeocodingGeometry
ResponseGeocodingGeoJsonFeature::getGeometry()
{
	return geometry;
}

void
ResponseGeocodingGeoJsonFeature::setGeometry(ResponseGeocodingGeometry  geometry)
{
	this->geometry = geometry;
}

ResponseGeocodingProperties
ResponseGeocodingGeoJsonFeature::getProperties()
{
	return properties;
}

void
ResponseGeocodingGeoJsonFeature::setProperties(ResponseGeocodingProperties  properties)
{
	this->properties = properties;
}


