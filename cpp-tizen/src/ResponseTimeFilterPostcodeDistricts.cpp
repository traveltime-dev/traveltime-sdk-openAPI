#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodeDistricts.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodeDistricts::ResponseTimeFilterPostcodeDistricts()
{
	//__init();
}

ResponseTimeFilterPostcodeDistricts::~ResponseTimeFilterPostcodeDistricts()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodeDistricts::__init()
{
	//new std::list()std::list> results;
}

void
ResponseTimeFilterPostcodeDistricts::__cleanup()
{
	//if(results != NULL) {
	//results.RemoveAll(true);
	//delete results;
	//results = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodeDistricts::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *resultsKey = "results";
	node = json_object_get_member(pJsonObject, resultsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeFilterPostcodeDistrictsResult> new_list;
			ResponseTimeFilterPostcodeDistrictsResult inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterPostcodeDistrictsResult")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterPostcodeDistrictsResult", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			results = new_list;
		}
		
	}
}

ResponseTimeFilterPostcodeDistricts::ResponseTimeFilterPostcodeDistricts(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodeDistricts::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseTimeFilterPostcodeDistrictsResult")) {
		list<ResponseTimeFilterPostcodeDistrictsResult> new_list = static_cast<list <ResponseTimeFilterPostcodeDistrictsResult> > (getResults());
		node = converttoJson(&new_list, "ResponseTimeFilterPostcodeDistrictsResult", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterPostcodeDistrictsResult> new_list = static_cast<list <ResponseTimeFilterPostcodeDistrictsResult> > (getResults());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterPostcodeDistrictsResult>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterPostcodeDistrictsResult obj = *it;
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

std::list<ResponseTimeFilterPostcodeDistrictsResult>
ResponseTimeFilterPostcodeDistricts::getResults()
{
	return results;
}

void
ResponseTimeFilterPostcodeDistricts::setResults(std::list <ResponseTimeFilterPostcodeDistrictsResult> results)
{
	this->results = results;
}


