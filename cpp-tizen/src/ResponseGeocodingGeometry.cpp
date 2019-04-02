#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseGeocodingGeometry.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseGeocodingGeometry::ResponseGeocodingGeometry()
{
	//__init();
}

ResponseGeocodingGeometry::~ResponseGeocodingGeometry()
{
	//__cleanup();
}

void
ResponseGeocodingGeometry::__init()
{
	//type = std::string();
	//new std::list()std::list> coordinates;
}

void
ResponseGeocodingGeometry::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(coordinates != NULL) {
	//coordinates.RemoveAll(true);
	//delete coordinates;
	//coordinates = NULL;
	//}
	//
}

void
ResponseGeocodingGeometry::fromJson(char* jsonStr)
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
	const gchar *coordinatesKey = "coordinates";
	node = json_object_get_member(pJsonObject, coordinatesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<double> new_list;
			double inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("double")) {
					jsonToValue(&inst, temp_json, "double", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			coordinates = new_list;
		}
		
	}
}

ResponseGeocodingGeometry::ResponseGeocodingGeometry(char* json)
{
	this->fromJson(json);
}

char*
ResponseGeocodingGeometry::toJson()
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
	if (isprimitive("double")) {
		list<double> new_list = static_cast<list <double> > (getCoordinates());
		node = converttoJson(&new_list, "double", "array");
	} else {
		node = json_node_alloc();
		list<double> new_list = static_cast<list <double> > (getCoordinates());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *coordinatesKey = "coordinates";
	json_object_set_member(pJsonObject, coordinatesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseGeocodingGeometry::getType()
{
	return type;
}

void
ResponseGeocodingGeometry::setType(std::string  type)
{
	this->type = type;
}

std::list<double>
ResponseGeocodingGeometry::getCoordinates()
{
	return coordinates;
}

void
ResponseGeocodingGeometry::setCoordinates(std::list <double> coordinates)
{
	this->coordinates = coordinates;
}


