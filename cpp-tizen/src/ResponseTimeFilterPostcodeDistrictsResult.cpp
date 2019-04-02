#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeFilterPostcodeDistrictsResult.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeFilterPostcodeDistrictsResult::ResponseTimeFilterPostcodeDistrictsResult()
{
	//__init();
}

ResponseTimeFilterPostcodeDistrictsResult::~ResponseTimeFilterPostcodeDistrictsResult()
{
	//__cleanup();
}

void
ResponseTimeFilterPostcodeDistrictsResult::__init()
{
	//search_id = std::string();
	//new std::list()std::list> districts;
}

void
ResponseTimeFilterPostcodeDistrictsResult::__cleanup()
{
	//if(search_id != NULL) {
	//
	//delete search_id;
	//search_id = NULL;
	//}
	//if(districts != NULL) {
	//districts.RemoveAll(true);
	//delete districts;
	//districts = NULL;
	//}
	//
}

void
ResponseTimeFilterPostcodeDistrictsResult::fromJson(char* jsonStr)
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
	const gchar *districtsKey = "districts";
	node = json_object_get_member(pJsonObject, districtsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTimeFilterPostcodeDistrict> new_list;
			ResponseTimeFilterPostcodeDistrict inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTimeFilterPostcodeDistrict")) {
					jsonToValue(&inst, temp_json, "ResponseTimeFilterPostcodeDistrict", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			districts = new_list;
		}
		
	}
}

ResponseTimeFilterPostcodeDistrictsResult::ResponseTimeFilterPostcodeDistrictsResult(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeFilterPostcodeDistrictsResult::toJson()
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
	if (isprimitive("ResponseTimeFilterPostcodeDistrict")) {
		list<ResponseTimeFilterPostcodeDistrict> new_list = static_cast<list <ResponseTimeFilterPostcodeDistrict> > (getDistricts());
		node = converttoJson(&new_list, "ResponseTimeFilterPostcodeDistrict", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTimeFilterPostcodeDistrict> new_list = static_cast<list <ResponseTimeFilterPostcodeDistrict> > (getDistricts());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTimeFilterPostcodeDistrict>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTimeFilterPostcodeDistrict obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *districtsKey = "districts";
	json_object_set_member(pJsonObject, districtsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseTimeFilterPostcodeDistrictsResult::getSearchId()
{
	return search_id;
}

void
ResponseTimeFilterPostcodeDistrictsResult::setSearchId(std::string  search_id)
{
	this->search_id = search_id;
}

std::list<ResponseTimeFilterPostcodeDistrict>
ResponseTimeFilterPostcodeDistrictsResult::getDistricts()
{
	return districts;
}

void
ResponseTimeFilterPostcodeDistrictsResult::setDistricts(std::list <ResponseTimeFilterPostcodeDistrict> districts)
{
	this->districts = districts;
}


