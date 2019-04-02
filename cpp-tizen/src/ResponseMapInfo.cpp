#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseMapInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseMapInfo::ResponseMapInfo()
{
	//__init();
}

ResponseMapInfo::~ResponseMapInfo()
{
	//__cleanup();
}

void
ResponseMapInfo::__init()
{
	//new std::list()std::list> maps;
}

void
ResponseMapInfo::__cleanup()
{
	//if(maps != NULL) {
	//maps.RemoveAll(true);
	//delete maps;
	//maps = NULL;
	//}
	//
}

void
ResponseMapInfo::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *mapsKey = "maps";
	node = json_object_get_member(pJsonObject, mapsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseMapInfoMap> new_list;
			ResponseMapInfoMap inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseMapInfoMap")) {
					jsonToValue(&inst, temp_json, "ResponseMapInfoMap", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			maps = new_list;
		}
		
	}
}

ResponseMapInfo::ResponseMapInfo(char* json)
{
	this->fromJson(json);
}

char*
ResponseMapInfo::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseMapInfoMap")) {
		list<ResponseMapInfoMap> new_list = static_cast<list <ResponseMapInfoMap> > (getMaps());
		node = converttoJson(&new_list, "ResponseMapInfoMap", "array");
	} else {
		node = json_node_alloc();
		list<ResponseMapInfoMap> new_list = static_cast<list <ResponseMapInfoMap> > (getMaps());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseMapInfoMap>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseMapInfoMap obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *mapsKey = "maps";
	json_object_set_member(pJsonObject, mapsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ResponseMapInfoMap>
ResponseMapInfo::getMaps()
{
	return maps;
}

void
ResponseMapInfo::setMaps(std::list <ResponseMapInfoMap> maps)
{
	this->maps = maps;
}


