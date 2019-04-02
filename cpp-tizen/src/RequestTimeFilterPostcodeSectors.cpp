#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterPostcodeSectors.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterPostcodeSectors::RequestTimeFilterPostcodeSectors()
{
	//__init();
}

RequestTimeFilterPostcodeSectors::~RequestTimeFilterPostcodeSectors()
{
	//__cleanup();
}

void
RequestTimeFilterPostcodeSectors::__init()
{
	//new std::list()std::list> departure_searches;
	//new std::list()std::list> arrival_searches;
}

void
RequestTimeFilterPostcodeSectors::__cleanup()
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
RequestTimeFilterPostcodeSectors::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *departure_searchesKey = "departure_searches";
	node = json_object_get_member(pJsonObject, departure_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterPostcodeSectorsDepartureSearch> new_list;
			RequestTimeFilterPostcodeSectorsDepartureSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodeSectorsDepartureSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodeSectorsDepartureSearch", "");
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
			list<RequestTimeFilterPostcodeSectorsArrivalSearch> new_list;
			RequestTimeFilterPostcodeSectorsArrivalSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodeSectorsArrivalSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodeSectorsArrivalSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			arrival_searches = new_list;
		}
		
	}
}

RequestTimeFilterPostcodeSectors::RequestTimeFilterPostcodeSectors(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterPostcodeSectors::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestTimeFilterPostcodeSectorsDepartureSearch")) {
		list<RequestTimeFilterPostcodeSectorsDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodeSectorsDepartureSearch> > (getDepartureSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodeSectorsDepartureSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodeSectorsDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodeSectorsDepartureSearch> > (getDepartureSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodeSectorsDepartureSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodeSectorsDepartureSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *departure_searchesKey = "departure_searches";
	json_object_set_member(pJsonObject, departure_searchesKey, node);
	if (isprimitive("RequestTimeFilterPostcodeSectorsArrivalSearch")) {
		list<RequestTimeFilterPostcodeSectorsArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodeSectorsArrivalSearch> > (getArrivalSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodeSectorsArrivalSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodeSectorsArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodeSectorsArrivalSearch> > (getArrivalSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodeSectorsArrivalSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodeSectorsArrivalSearch obj = *it;
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

std::list<RequestTimeFilterPostcodeSectorsDepartureSearch>
RequestTimeFilterPostcodeSectors::getDepartureSearches()
{
	return departure_searches;
}

void
RequestTimeFilterPostcodeSectors::setDepartureSearches(std::list <RequestTimeFilterPostcodeSectorsDepartureSearch> departure_searches)
{
	this->departure_searches = departure_searches;
}

std::list<RequestTimeFilterPostcodeSectorsArrivalSearch>
RequestTimeFilterPostcodeSectors::getArrivalSearches()
{
	return arrival_searches;
}

void
RequestTimeFilterPostcodeSectors::setArrivalSearches(std::list <RequestTimeFilterPostcodeSectorsArrivalSearch> arrival_searches)
{
	this->arrival_searches = arrival_searches;
}


