#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterFastArrivalSearches.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterFastArrivalSearches::RequestTimeFilterFastArrivalSearches()
{
	//__init();
}

RequestTimeFilterFastArrivalSearches::~RequestTimeFilterFastArrivalSearches()
{
	//__cleanup();
}

void
RequestTimeFilterFastArrivalSearches::__init()
{
	//new std::list()std::list> many_to_one;
	//new std::list()std::list> one_to_many;
}

void
RequestTimeFilterFastArrivalSearches::__cleanup()
{
	//if(many_to_one != NULL) {
	//many_to_one.RemoveAll(true);
	//delete many_to_one;
	//many_to_one = NULL;
	//}
	//if(one_to_many != NULL) {
	//one_to_many.RemoveAll(true);
	//delete one_to_many;
	//one_to_many = NULL;
	//}
	//
}

void
RequestTimeFilterFastArrivalSearches::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *many_to_oneKey = "many_to_one";
	node = json_object_get_member(pJsonObject, many_to_oneKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterFastArrivalManyToOneSearch> new_list;
			RequestTimeFilterFastArrivalManyToOneSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterFastArrivalManyToOneSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterFastArrivalManyToOneSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			many_to_one = new_list;
		}
		
	}
	const gchar *one_to_manyKey = "one_to_many";
	node = json_object_get_member(pJsonObject, one_to_manyKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterFastArrivalOneToManySearch> new_list;
			RequestTimeFilterFastArrivalOneToManySearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterFastArrivalOneToManySearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterFastArrivalOneToManySearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			one_to_many = new_list;
		}
		
	}
}

RequestTimeFilterFastArrivalSearches::RequestTimeFilterFastArrivalSearches(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterFastArrivalSearches::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestTimeFilterFastArrivalManyToOneSearch")) {
		list<RequestTimeFilterFastArrivalManyToOneSearch> new_list = static_cast<list <RequestTimeFilterFastArrivalManyToOneSearch> > (getManyToOne());
		node = converttoJson(&new_list, "RequestTimeFilterFastArrivalManyToOneSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterFastArrivalManyToOneSearch> new_list = static_cast<list <RequestTimeFilterFastArrivalManyToOneSearch> > (getManyToOne());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterFastArrivalManyToOneSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterFastArrivalManyToOneSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *many_to_oneKey = "many_to_one";
	json_object_set_member(pJsonObject, many_to_oneKey, node);
	if (isprimitive("RequestTimeFilterFastArrivalOneToManySearch")) {
		list<RequestTimeFilterFastArrivalOneToManySearch> new_list = static_cast<list <RequestTimeFilterFastArrivalOneToManySearch> > (getOneToMany());
		node = converttoJson(&new_list, "RequestTimeFilterFastArrivalOneToManySearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterFastArrivalOneToManySearch> new_list = static_cast<list <RequestTimeFilterFastArrivalOneToManySearch> > (getOneToMany());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterFastArrivalOneToManySearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterFastArrivalOneToManySearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *one_to_manyKey = "one_to_many";
	json_object_set_member(pJsonObject, one_to_manyKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<RequestTimeFilterFastArrivalManyToOneSearch>
RequestTimeFilterFastArrivalSearches::getManyToOne()
{
	return many_to_one;
}

void
RequestTimeFilterFastArrivalSearches::setManyToOne(std::list <RequestTimeFilterFastArrivalManyToOneSearch> many_to_one)
{
	this->many_to_one = many_to_one;
}

std::list<RequestTimeFilterFastArrivalOneToManySearch>
RequestTimeFilterFastArrivalSearches::getOneToMany()
{
	return one_to_many;
}

void
RequestTimeFilterFastArrivalSearches::setOneToMany(std::list <RequestTimeFilterFastArrivalOneToManySearch> one_to_many)
{
	this->one_to_many = one_to_many;
}


