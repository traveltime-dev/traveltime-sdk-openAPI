#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodesResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodesResult::ResponseTimeFilterPostcodesResult()
{
	//__init();
}

ResponseTimeFilterPostcodesResult::~ResponseTimeFilterPostcodesResult()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodesResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> postcodes;
}

void
ResponseTimeFilterPostcodesResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(postcodes != NULL) {
	//postcodes.RemoveAll(true);
	//delete postcodes;
	//postcodes = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodesResult::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *search_idKey = "search_id";
	node = json_object_get_member(pJsonObject, search_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&search_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *postcodesKey = "postcodes";
	node = json_object_get_member(pJsonObject, postcodesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeFilterPostcode> new_list;
			ResponseTimeFilterPostcode inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterPostcode")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterPostcode", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			postcodes = new_list;
		}
		
	}
}

ResponseTimeFilterPostcodesResult::ResponseTimeFilterPostcodesResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodesResult::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSearchId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *search_idKey = "search_id";
	json_object_set_member(pJsonObject, search_idKey, node);
	if (isprimitive("ResponseTimeFilterPostcode")) {
		list<ResponseTimeFilterPostcode> new_list = static_cast<list <ResponseTimeFilterPostcode> > (getPostcodes());
		node = converttoJson(&new_list, "ResponseTimeFilterPostcode", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterPostcode> new_list = static_cast<list <ResponseTimeFilterPostcode> > (getPostcodes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterPostcode>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterPostcode obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *postcodesKey = "postcodes";
	json_object_set_member(pJsonObject, postcodesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseTimeFilterPostcodesResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeFilterPostcodesResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseTimeFilterPostcode>
ResponseTimeFilterPostcodesResult::getPostcodes()
{
	return postcodes;
}

void
ResponseTimeFilterPostcodesResult::setPostcodes(std::list <ResponseTimeFilterPostcode> postcodes)
{
	this->postcodes = postcodes;
}


