#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodeDistrict.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodeDistrict::ResponseTimeFilterPostcodeDistrict()
{
	//__init();
}

ResponseTimeFilterPostcodeDistrict::~ResponseTimeFilterPostcodeDistrict()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodeDistrict::__init()
{
	//code = null;
	//properties = new ResponseTimeFilterPostcodeDistrictProperties();
}

void
ResponseTimeFilterPostcodeDistrict::__cleanup()
{
	//if(code != NULL) {
	//
	//delete code;
	//code = NULL;
	//}
	//if(properties != NULL) {
	//
	//delete properties;
	//properties = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodeDistrict::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *codeKey = "code";
	node = json_object_get_member(pJsonObject, codeKey);
	if (node !=NULL) {
	

		if (isprimitive("String")) {
			jsonToValue(&code, node, "String", "String");
		} else {
			
			String* obj = static_cast<String*> (&code);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTimeFilterPostcodeDistrictProperties")) {
			jsonToValue(&properties, node, "ResponseTimeFilterPostcodeDistrictProperties", "ResponseTimeFilterPostcodeDistrictProperties");
		} else {
			
			ResponseTimeFilterPostcodeDistrictProperties* obj = static_cast<ResponseTimeFilterPostcodeDistrictProperties*> (&properties);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseTimeFilterPostcodeDistrict::ResponseTimeFilterPostcodeDistrict(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodeDistrict::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("String")) {
		String obj = getCode();
		node = converttoJson(&obj, "String", "");
	}
	else {
		
		String obj = static_cast<String> (getCode());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *codeKey = "code";
	json_object_set_member(pJsonObject, codeKey, node);
	if (isprimitive("ResponseTimeFilterPostcodeDistrictProperties")) {
		ResponseTimeFilterPostcodeDistrictProperties obj = getProperties();
		node = converttoJson(&obj, "ResponseTimeFilterPostcodeDistrictProperties", "");
	}
	else {
		
		ResponseTimeFilterPostcodeDistrictProperties obj = static_cast<ResponseTimeFilterPostcodeDistrictProperties> (getProperties());
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

String
ResponseTimeFilterPostcodeDistrict::getCode()
{
	return code;
}

void
ResponseTimeFilterPostcodeDistrict::setCode(String  code)
{
	this->code = code;
}

ResponseTimeFilterPostcodeDistrictProperties
ResponseTimeFilterPostcodeDistrict::getProperties()
{
	return properties;
}

void
ResponseTimeFilterPostcodeDistrict::setProperties(ResponseTimeFilterPostcodeDistrictProperties  properties)
{
	this->properties = properties;
}


