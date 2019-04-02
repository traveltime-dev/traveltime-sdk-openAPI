#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilter.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilter::RequestTimeFilter()
{
	//__init();
}

RequestTimeFilter::~RequestTimeFilter()
{
	//__cleanup();
}

void
RequestTimeFilter::__init()
{
	//new std::list()std::list> locations;
	//new std::list()std::list> departure_searches;
	//new std::list()std::list> arrival_searches;
}

void
RequestTimeFilter::__cleanup()
{
	//if(locations != NULL) {
	//locations.RemoveAll(true);
	//delete locations;
	//locations = NULL;
	//}
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
RequestTimeFilter::fromJson(char* jsonStr)
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
	const gchar *departure_searchesKey = "departure_searches";
	node = json_object_get_member(pJsonObject, departure_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterDepartureSearch> new_list;
			RequestTimeFilterDepartureSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterDepartureSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterDepartureSearch", "");
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
			list<RequestTimeFilterArrivalSearch> new_list;
			RequestTimeFilterArrivalSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterArrivalSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterArrivalSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			arrival_searches = new_list;
		}
		
	}
}

RequestTimeFilter::RequestTimeFilter(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilter::toJson()
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
	if (isprimitive("RequestTimeFilterDepartureSearch")) {
		list<RequestTimeFilterDepartureSearch> new_list = static_cast<list <RequestTimeFilterDepartureSearch> > (getDepartureSearches());
		node = converttoJson(&new_list, "RequestTimeFilterDepartureSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterDepartureSearch> new_list = static_cast<list <RequestTimeFilterDepartureSearch> > (getDepartureSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterDepartureSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterDepartureSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *departure_searchesKey = "departure_searches";
	json_object_set_member(pJsonObject, departure_searchesKey, node);
	if (isprimitive("RequestTimeFilterArrivalSearch")) {
		list<RequestTimeFilterArrivalSearch> new_list = static_cast<list <RequestTimeFilterArrivalSearch> > (getArrivalSearches());
		node = converttoJson(&new_list, "RequestTimeFilterArrivalSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterArrivalSearch> new_list = static_cast<list <RequestTimeFilterArrivalSearch> > (getArrivalSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterArrivalSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterArrivalSearch obj = *it;
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

std::list<RequestLocation>
RequestTimeFilter::getLocations()
{
	return locations;
}

void
RequestTimeFilter::setLocations(std::list <RequestLocation> locations)
{
	this->locations = locations;
}

std::list<RequestTimeFilterDepartureSearch>
RequestTimeFilter::getDepartureSearches()
{
	return departure_searches;
}

void
RequestTimeFilter::setDepartureSearches(std::list <RequestTimeFilterDepartureSearch> departure_searches)
{
	this->departure_searches = departure_searches;
}

std::list<RequestTimeFilterArrivalSearch>
RequestTimeFilter::getArrivalSearches()
{
	return arrival_searches;
}

void
RequestTimeFilter::setArrivalSearches(std::list <RequestTimeFilterArrivalSearch> arrival_searches)
{
	this->arrival_searches = arrival_searches;
}


