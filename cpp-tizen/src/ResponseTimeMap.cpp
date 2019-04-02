#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMap.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMap::ResponseTimeMap()
{
	//__init();
}

ResponseTimeMap::~ResponseTimeMap()
{
	//__cleanup();
}

void
ResponseTimeMap::__init()
{
	//new std::list()std::list> results;
}

void
ResponseTimeMap::__cleanup()
{
	//if(results != NULL) {
	//results.RemoveAll(true);
	//delete results;
	//results = NULL;
	//}
	//
}

void
ResponseTimeMap::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *resultsKey = "results";
	node = json_object_get_member(pJsonObject, resultsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeMapResult> new_list;
			ResponseTimeMapResult inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeMapResult")) {
					jsonToValue(&inst, temp_json, "ResponseTimeMapResult", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			results = new_list;
		}
		
	}
}

ResponseTimeMap::ResponseTimeMap(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMap::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseTimeMapResult")) {
		list<ResponseTimeMapResult> new_list = static_cast<list <ResponseTimeMapResult> > (getResults());
		node = converttoJson(&new_list, "ResponseTimeMapResult", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeMapResult> new_list = static_cast<list <ResponseTimeMapResult> > (getResults());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeMapResult>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeMapResult obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *resultsKey = "results";
	json_object_set_member(pJsonObject, resultsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ResponseTimeMapResult>
ResponseTimeMap::getResults()
{
	return results;
}

void
ResponseTimeMap::setResults(std::list <ResponseTimeMapResult> results)
{
	this->results = results;
}


