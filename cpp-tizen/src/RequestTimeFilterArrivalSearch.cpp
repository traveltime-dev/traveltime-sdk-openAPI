#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterArrivalSearch.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterArrivalSearch::RequestTimeFilterArrivalSearch()
{
	//__init();
}

RequestTimeFilterArrivalSearch::~RequestTimeFilterArrivalSearch()
{
	//__cleanup();
}

void
RequestTimeFilterArrivalSearch::__init()
{
	//id = std::string();
	//new std::list()std::list> departure_location_ids;
	//arrival_location_id = std::string();
	//transportation = new RequestTransportation();
	//travel_time = int(0);
	//arrival_time = null;
	//new std::list()std::list> properties;
	//range = new RequestRangeFull();
}

void
RequestTimeFilterArrivalSearch::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(departure_location_ids != NULL) {
	//departure_location_ids.RemoveAll(true);
	//delete departure_location_ids;
	//departure_location_ids = NULL;
	//}
	//if(arrival_location_id != NULL) {
	//
	//delete arrival_location_id;
	//arrival_location_id = NULL;
	//}
	//if(transportation != NULL) {
	//
	//delete transportation;
	//transportation = NULL;
	//}
	//if(travel_time != NULL) {
	//
	//delete travel_time;
	//travel_time = NULL;
	//}
	//if(arrival_time != NULL) {
	//
	//delete arrival_time;
	//arrival_time = NULL;
	//}
	//if(properties != NULL) {
	//properties.RemoveAll(true);
	//delete properties;
	//properties = NULL;
	//}
	//if(range != NULL) {
	//
	//delete range;
	//range = NULL;
	//}
	//
}

void
RequestTimeFilterArrivalSearch::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *departure_location_idsKey = "departure_location_ids";
	node = json_object_get_member(pJsonObject, departure_location_idsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			departure_location_ids = new_list;
		}
		
	}
	const gchar *arrival_location_idKey = "arrival_location_id";
	node = json_object_get_member(pJsonObject, arrival_location_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&arrival_location_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *transportationKey = "transportation";
	node = json_object_get_member(pJsonObject, transportationKey);
	if (node !=NULL) {
	

		if (isprimitive("RequestTransportation")) {
			jsonToValue(&transportation, node, "RequestTransportation", "RequestTransportation");
		} else {
			
			RequestTransportation* obj = static_cast<RequestTransportation*> (&transportation);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *travel_timeKey = "travel_time";
	node = json_object_get_member(pJsonObject, travel_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&travel_time, node, "int", "");
		} else {
			
		}
	}
	const gchar *arrival_timeKey = "arrival_time";
	node = json_object_get_member(pJsonObject, arrival_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&arrival_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterProperty> new_list;
			RequestTimeFilterProperty inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterProperty")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterProperty", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			properties = new_list;
		}
		
	}
	const gchar *rangeKey = "range";
	node = json_object_get_member(pJsonObject, rangeKey);
	if (node !=NULL) {
	

		if (isprimitive("RequestRangeFull")) {
			jsonToValue(&range, node, "RequestRangeFull", "RequestRangeFull");
		} else {
			
			RequestRangeFull* obj = static_cast<RequestRangeFull*> (&range);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RequestTimeFilterArrivalSearch::RequestTimeFilterArrivalSearch(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterArrivalSearch::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getDepartureLocationIds());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getDepartureLocationIds());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *departure_location_idsKey = "departure_location_ids";
	json_object_set_member(pJsonObject, departure_location_idsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getArrivalLocationId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *arrival_location_idKey = "arrival_location_id";
	json_object_set_member(pJsonObject, arrival_location_idKey, node);
	if (isprimitive("RequestTransportation")) {
		RequestTransportation obj = getTransportation();
		node = converttoJson(&obj, "RequestTransportation", "");
	}
	else {
		
		RequestTransportation obj = static_cast<RequestTransportation> (getTransportation());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *transportationKey = "transportation";
	json_object_set_member(pJsonObject, transportationKey, node);
	if (isprimitive("int")) {
		int obj = getTravelTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *travel_timeKey = "travel_time";
	json_object_set_member(pJsonObject, travel_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getArrivalTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *arrival_timeKey = "arrival_time";
	json_object_set_member(pJsonObject, arrival_timeKey, node);
	if (isprimitive("RequestTimeFilterProperty")) {
		list<RequestTimeFilterProperty> new_list = static_cast<list <RequestTimeFilterProperty> > (getProperties());
		node = converttoJson(&new_list, "RequestTimeFilterProperty", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterProperty> new_list = static_cast<list <RequestTimeFilterProperty> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterProperty>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterProperty obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *propertiesKey = "properties";
	json_object_set_member(pJsonObject, propertiesKey, node);
	if (isprimitive("RequestRangeFull")) {
		RequestRangeFull obj = getRange();
		node = converttoJson(&obj, "RequestRangeFull", "");
	}
	else {
		
		RequestRangeFull obj = static_cast<RequestRangeFull> (getRange());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rangeKey = "range";
	json_object_set_member(pJsonObject, rangeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestTimeFilterArrivalSearch::getId()
{
	return id;
}

void
RequestTimeFilterArrivalSearch::setId(std::string  id)
{
	this->id = id;
}

std::list<std::string>
RequestTimeFilterArrivalSearch::getDepartureLocationIds()
{
	return departure_location_ids;
}

void
RequestTimeFilterArrivalSearch::setDepartureLocationIds(std::list <std::string> departure_location_ids)
{
	this->departure_location_ids = departure_location_ids;
}

std::string
RequestTimeFilterArrivalSearch::getArrivalLocationId()
{
	return arrival_location_id;
}

void
RequestTimeFilterArrivalSearch::setArrivalLocationId(std::string  arrival_location_id)
{
	this->arrival_location_id = arrival_location_id;
}

RequestTransportation
RequestTimeFilterArrivalSearch::getTransportation()
{
	return transportation;
}

void
RequestTimeFilterArrivalSearch::setTransportation(RequestTransportation  transportation)
{
	this->transportation = transportation;
}

int
RequestTimeFilterArrivalSearch::getTravelTime()
{
	return travel_time;
}

void
RequestTimeFilterArrivalSearch::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::string
RequestTimeFilterArrivalSearch::getArrivalTime()
{
	return arrival_time;
}

void
RequestTimeFilterArrivalSearch::setArrivalTime(std::string  arrival_time)
{
	this->arrival_time = arrival_time;
}

std::list<RequestTimeFilterProperty>
RequestTimeFilterArrivalSearch::getProperties()
{
	return properties;
}

void
RequestTimeFilterArrivalSearch::setProperties(std::list <RequestTimeFilterProperty> properties)
{
	this->properties = properties;
}

RequestRangeFull
RequestTimeFilterArrivalSearch::getRange()
{
	return range;
}

void
RequestTimeFilterArrivalSearch::setRange(RequestRangeFull  range)
{
	this->range = range;
}


