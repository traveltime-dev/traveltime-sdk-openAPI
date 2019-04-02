#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeMap.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeMap::RequestTimeMap()
{
	//__init();
}

RequestTimeMap::~RequestTimeMap()
{
	//__cleanup();
}

void
RequestTimeMap::__init()
{
	//new std::list()std::list> departure_searches;
	//new std::list()std::list> arrival_searches;
	//new std::list()std::list> unions;
	//new std::list()std::list> intersections;
}

void
RequestTimeMap::__cleanup()
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
	//if(unions != NULL) {
	//unions.RemoveAll(true);
	//delete unions;
	//unions = NULL;
	//}
	//if(intersections != NULL) {
	//intersections.RemoveAll(true);
	//delete intersections;
	//intersections = NULL;
	//}
	//
}

void
RequestTimeMap::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *departure_searchesKey = "departure_searches";
	node = json_object_get_member(pJsonObject, departure_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeMapDepartureSearch> new_list;
			RequestTimeMapDepartureSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeMapDepartureSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeMapDepartureSearch", "");
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
			list<RequestTimeMapArrivalSearch> new_list;
			RequestTimeMapArrivalSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeMapArrivalSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeMapArrivalSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			arrival_searches = new_list;
		}
		
	}
	const gchar *unionsKey = "unions";
	node = json_object_get_member(pJsonObject, unionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestUnionOnIntersection> new_list;
			RequestUnionOnIntersection inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestUnionOnIntersection")) {
					jsonToValue(&inst, temp_json, "RequestUnionOnIntersection", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			unions = new_list;
		}
		
	}
	const gchar *intersectionsKey = "intersections";
	node = json_object_get_member(pJsonObject, intersectionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestUnionOnIntersection> new_list;
			RequestUnionOnIntersection inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestUnionOnIntersection")) {
					jsonToValue(&inst, temp_json, "RequestUnionOnIntersection", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			intersections = new_list;
		}
		
	}
}

RequestTimeMap::RequestTimeMap(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeMap::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestTimeMapDepartureSearch")) {
		list<RequestTimeMapDepartureSearch> new_list = static_cast<list <RequestTimeMapDepartureSearch> > (getDepartureSearches());
		node = converttoJson(&new_list, "RequestTimeMapDepartureSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeMapDepartureSearch> new_list = static_cast<list <RequestTimeMapDepartureSearch> > (getDepartureSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeMapDepartureSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeMapDepartureSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *departure_searchesKey = "departure_searches";
	json_object_set_member(pJsonObject, departure_searchesKey, node);
	if (isprimitive("RequestTimeMapArrivalSearch")) {
		list<RequestTimeMapArrivalSearch> new_list = static_cast<list <RequestTimeMapArrivalSearch> > (getArrivalSearches());
		node = converttoJson(&new_list, "RequestTimeMapArrivalSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeMapArrivalSearch> new_list = static_cast<list <RequestTimeMapArrivalSearch> > (getArrivalSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeMapArrivalSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeMapArrivalSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *arrival_searchesKey = "arrival_searches";
	json_object_set_member(pJsonObject, arrival_searchesKey, node);
	if (isprimitive("RequestUnionOnIntersection")) {
		list<RequestUnionOnIntersection> new_list = static_cast<list <RequestUnionOnIntersection> > (getUnions());
		node = converttoJson(&new_list, "RequestUnionOnIntersection", "array");
	} else {
		node = json_node_alloc();
		list<RequestUnionOnIntersection> new_list = static_cast<list <RequestUnionOnIntersection> > (getUnions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestUnionOnIntersection>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestUnionOnIntersection obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *unionsKey = "unions";
	json_object_set_member(pJsonObject, unionsKey, node);
	if (isprimitive("RequestUnionOnIntersection")) {
		list<RequestUnionOnIntersection> new_list = static_cast<list <RequestUnionOnIntersection> > (getIntersections());
		node = converttoJson(&new_list, "RequestUnionOnIntersection", "array");
	} else {
		node = json_node_alloc();
		list<RequestUnionOnIntersection> new_list = static_cast<list <RequestUnionOnIntersection> > (getIntersections());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestUnionOnIntersection>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestUnionOnIntersection obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *intersectionsKey = "intersections";
	json_object_set_member(pJsonObject, intersectionsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<RequestTimeMapDepartureSearch>
RequestTimeMap::getDepartureSearches()
{
	return departure_searches;
}

void
RequestTimeMap::setDepartureSearches(std::list <RequestTimeMapDepartureSearch> departure_searches)
{
	this->departure_searches = departure_searches;
}

std::list<RequestTimeMapArrivalSearch>
RequestTimeMap::getArrivalSearches()
{
	return arrival_searches;
}

void
RequestTimeMap::setArrivalSearches(std::list <RequestTimeMapArrivalSearch> arrival_searches)
{
	this->arrival_searches = arrival_searches;
}

std::list<RequestUnionOnIntersection>
RequestTimeMap::getUnions()
{
	return unions;
}

void
RequestTimeMap::setUnions(std::list <RequestUnionOnIntersection> unions)
{
	this->unions = unions;
}

std::list<RequestUnionOnIntersection>
RequestTimeMap::getIntersections()
{
	return intersections;
}

void
RequestTimeMap::setIntersections(std::list <RequestUnionOnIntersection> intersections)
{
	this->intersections = intersections;
}


