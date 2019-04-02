#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterPostcodeDistricts.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterPostcodeDistricts::RequestTimeFilterPostcodeDistricts()
{
	//__init();
}

RequestTimeFilterPostcodeDistricts::~RequestTimeFilterPostcodeDistricts()
{
	//__cleanup();
}

void
RequestTimeFilterPostcodeDistricts::__init()
{
	//new std::list()std::list> departure_searches;
	//new std::list()std::list> arrival_searches;
}

void
RequestTimeFilterPostcodeDistricts::__cleanup()
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
RequestTimeFilterPostcodeDistricts::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *departure_searchesKey = "departure_searches";
	node = json_object_get_member(pJsonObject, departure_searchesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterPostcodeDistrictsDepartureSearch> new_list;
			RequestTimeFilterPostcodeDistrictsDepartureSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodeDistrictsDepartureSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodeDistrictsDepartureSearch", "");
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
			list<RequestTimeFilterPostcodeDistrictsArrivalSearch> new_list;
			RequestTimeFilterPostcodeDistrictsArrivalSearch inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodeDistrictsArrivalSearch")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodeDistrictsArrivalSearch", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			arrival_searches = new_list;
		}
		
	}
}

RequestTimeFilterPostcodeDistricts::RequestTimeFilterPostcodeDistricts(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterPostcodeDistricts::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RequestTimeFilterPostcodeDistrictsDepartureSearch")) {
		list<RequestTimeFilterPostcodeDistrictsDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsDepartureSearch> > (getDepartureSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodeDistrictsDepartureSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodeDistrictsDepartureSearch> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsDepartureSearch> > (getDepartureSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodeDistrictsDepartureSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodeDistrictsDepartureSearch obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *departure_searchesKey = "departure_searches";
	json_object_set_member(pJsonObject, departure_searchesKey, node);
	if (isprimitive("RequestTimeFilterPostcodeDistrictsArrivalSearch")) {
		list<RequestTimeFilterPostcodeDistrictsArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsArrivalSearch> > (getArrivalSearches());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodeDistrictsArrivalSearch", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodeDistrictsArrivalSearch> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsArrivalSearch> > (getArrivalSearches());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodeDistrictsArrivalSearch>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodeDistrictsArrivalSearch obj = *it;
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

std::list<RequestTimeFilterPostcodeDistrictsDepartureSearch>
RequestTimeFilterPostcodeDistricts::getDepartureSearches()
{
	return departure_searches;
}

void
RequestTimeFilterPostcodeDistricts::setDepartureSearches(std::list <RequestTimeFilterPostcodeDistrictsDepartureSearch> departure_searches)
{
	this->departure_searches = departure_searches;
}

std::list<RequestTimeFilterPostcodeDistrictsArrivalSearch>
RequestTimeFilterPostcodeDistricts::getArrivalSearches()
{
	return arrival_searches;
}

void
RequestTimeFilterPostcodeDistricts::setArrivalSearches(std::list <RequestTimeFilterPostcodeDistrictsArrivalSearch> arrival_searches)
{
	this->arrival_searches = arrival_searches;
}


