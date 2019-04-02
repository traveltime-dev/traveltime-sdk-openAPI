#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestSupportedLocations.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestSupportedLocations::RequestSupportedLocations()
{
	//__init();
}

RequestSupportedLocations::~RequestSupportedLocations()
{
	//__cleanup();
}

void
RequestSupportedLocations::__init()
{
	//new std::list()std::list> locations;
}

void
RequestSupportedLocations::__cleanup()
{
	//if(locations != NULL) {
	//locations.RemoveAll(true);
	//delete locations;
	//locations = NULL;
	//}
	//
}

void
RequestSupportedLocations::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *locationsKey = "locations";
	node = json_object_get_member(pJsonObject, locationsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestLocation> new_list;
			RequestLocation inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestLocation")) {
					jsonToValue(&inst, temp_json, "RequestLocation", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			locations = new_list;
		}
		
	}
}

RequestSupportedLocations::RequestSupportedLocations(char* json)
{
	this->fromJson(json);
}

char*
RequestSupportedLocations::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestLocation")) {
		list<RequestLocation> new_list = static_cast<list <RequestLocation> > (getLocations());
		node = converttoJson(&new_list, "RequestLocation", "array");
	} else {
		node = json_node_alloc();
		list<RequestLocation> new_list = static_cast<list <RequestLocation> > (getLocations());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestLocation>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestLocation obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *locationsKey = "locations";
	json_object_set_member(pJsonObject, locationsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<RequestLocation>
RequestSupportedLocations::getLocations()
{
	return locations;
}

void
RequestSupportedLocations::setLocations(std::list <RequestLocation> locations)
{
	this->locations = locations;
}


