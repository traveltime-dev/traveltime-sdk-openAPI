#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseGeocoding.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseGeocoding::ResponseGeocoding()
{
	//__init();
}

ResponseGeocoding::~ResponseGeocoding()
{
	//__cleanup();
}

void
ResponseGeocoding::__init()
{
	//type = std::string();
	//new std::list()std::list> features;
}

void
ResponseGeocoding::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(features != NULL) {
	//features.RemoveAll(true);
	//delete features;
	//features = NULL;
	//}
	//
}

void
ResponseGeocoding::fromJson(char* jsonStr)
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
	const gchar *featuresKey = "features";
	node = json_object_get_member(pJsonObject, featuresKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseGeocodingGeoJsonFeature> new_list;
			ResponseGeocodingGeoJsonFeature inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseGeocodingGeoJsonFeature")) {
					jsonToValue(&inst, temp_json, "ResponseGeocodingGeoJsonFeature", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			features = new_list;
		}
		
	}
}

ResponseGeocoding::ResponseGeocoding(char* json)
{
	this->fromJson(json);
}

char*
ResponseGeocoding::toJson()
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
	if (isprimitive("ResponseGeocodingGeoJsonFeature")) {
		list<ResponseGeocodingGeoJsonFeature> new_list = static_cast<list <ResponseGeocodingGeoJsonFeature> > (getFeatures());
		node = converttoJson(&new_list, "ResponseGeocodingGeoJsonFeature", "array");
	} else {
		node = json_node_alloc();
		list<ResponseGeocodingGeoJsonFeature> new_list = static_cast<list <ResponseGeocodingGeoJsonFeature> > (getFeatures());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseGeocodingGeoJsonFeature>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseGeocodingGeoJsonFeature obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
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
ResponseGeocoding::getType()
{
	return type;
}

void
ResponseGeocoding::setType(std::string  type)
{
	this->type = type;
}

std::list<ResponseGeocodingGeoJsonFeature>
ResponseGeocoding::getFeatures()
{
	return features;
}

void
ResponseGeocoding::setFeatures(std::list <ResponseGeocodingGeoJsonFeature> features)
{
	this->features = features;
}


