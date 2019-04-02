#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterPostcodes.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterPostcodes::RequestTimeFilterPostcodes()
{
	//__init();
}

RequestTimeFilterPostcodes::~RequestTimeFilterPostcodes()
{
	//__cleanup();
}

void
RequestTimeFilterPostcodes::__init()
{
	//new std::list()std::list> departure_searches;
	//new std::list()std::list> arrival_searches;
}

void
RequestTimeFilterPostcodes::__cleanup()
{
	//if(departure_searches != NULL) {
	//departure_searches.RemoveAll(true);
	//delete departure_searches;
	//departure_searches = NULL;
	//}
	//if(arrival_searches != NULL) {
	//arrival_searches.RemoveAll(true);
	//delete arrival_searches;
	//arrival_searches = NULL;
	//}
	//
}

void
RequestTimeFilterPostcodes::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *departure_searchesKey = "departure_searches";
	node = json_object_get_member(pJsonObject, departure_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterPostcodesDepartureSearch> new_list;
			RequestTimeFilterPostcodesDepartureSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodesDepartureSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodesDepartureSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			departure_searches = new_list;
		}
		
	}
	const gchar *arrival_searchesKey = "arrival_searches";
	node = json_object_get_member(pJsonObject, arrival_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterPostcodesArrivalSearch> new_list;
			RequestTimeFilterPostcodesArrivalSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodesArrivalSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodesArrivalSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			arrival_searches = new_list;
		}
		
	}
}

RequestTimeFilterPostcodes::RequestTimeFilterPostcodes(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterPostcodes::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestTimeFilterPostcodesDepartureSearch")) {
		list<RequestTimeFilterPostcodesDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodesDepartureSearch> > (getDepartureSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodesDepartureSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodesDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodesDepartureSearch> > (getDepartureSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodesDepartureSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodesDepartureSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *departure_searchesKey = "departure_searches";
	json_object_set_member(pJsonObject, departure_searchesKey, node);
	if (isprimitive("RequestTimeFilterPostcodesArrivalSearch")) {
		list<RequestTimeFilterPostcodesArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodesArrivalSearch> > (getArrivalSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodesArrivalSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodesArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodesArrivalSearch> > (getArrivalSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodesArrivalSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodesArrivalSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *arrival_searchesKey = "arrival_searches";
	json_object_set_member(pJsonObject, arrival_searchesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<RequestTimeFilterPostcodesDepartureSearch>
RequestTimeFilterPostcodes::getDepartureSearches()
{
	return departure_searches;
}

void
RequestTimeFilterPostcodes::setDepartureSearches(std::list <RequestTimeFilterPostcodesDepartureSearch> departure_searches)
{
	this->departure_searches = departure_searches;
}

std::list<RequestTimeFilterPostcodesArrivalSearch>
RequestTimeFilterPostcodes::getArrivalSearches()
{
	return arrival_searches;
}

void
RequestTimeFilterPostcodes::setArrivalSearches(std::list <RequestTimeFilterPostcodesArrivalSearch> arrival_searches)
{
	this->arrival_searches = arrival_searches;
}


