#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMapWkt.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMapWkt::ResponseTimeMapWkt()
{
	//__init();
}

ResponseTimeMapWkt::~ResponseTimeMapWkt()
{
	//__cleanup();
}

void
ResponseTimeMapWkt::__init()
{
	//new std::list()std::list> results;
}

void
ResponseTimeMapWkt::__cleanup()
{
	//if(results != NULL) {
	//results.RemoveAll(true);
	//delete results;
	//results = NULL;
	//}
	//
}

void
ResponseTimeMapWkt::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *resultsKey = "results";
	node = json_object_get_member(pJsonObject, resultsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeMapWktResult> new_list;
			ResponseTimeMapWktResult inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeMapWktResult")) {
					jsonToValue(&inst, temp_json, "ResponseTimeMapWktResult", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			results = new_list;
		}
		
	}
}

ResponseTimeMapWkt::ResponseTimeMapWkt(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMapWkt::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseTimeMapWktResult")) {
		list<ResponseTimeMapWktResult> new_list = static_cast<list <ResponseTimeMapWktResult> > (getResults());
		node = converttoJson(&new_list, "ResponseTimeMapWktResult", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeMapWktResult> new_list = static_cast<list <ResponseTimeMapWktResult> > (getResults());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeMapWktResult>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeMapWktResult obj = *it;
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

std::list<ResponseTimeMapWktResult>
ResponseTimeMapWkt::getResults()
{
	return results;
}

void
ResponseTimeMapWkt::setResults(std::list <ResponseTimeMapWktResult> results)
{
	this->results = results;
}


