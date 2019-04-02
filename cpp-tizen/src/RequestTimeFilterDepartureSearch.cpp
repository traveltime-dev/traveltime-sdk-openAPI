#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterDepartureSearch.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterDepartureSearch::RequestTimeFilterDepartureSearch()
{
	//__init();
}

RequestTimeFilterDepartureSearch::~RequestTimeFilterDepartureSearch()
{
	//__cleanup();
}

void
RequestTimeFilterDepartureSearch::__init()
{
	//id = std::string();
	//departure_location_id = std::string();
	//new std::list()std::list> arrival_location_ids;
	//transportation = new RequestTransportation();
	//travel_time = int(0);
	//departure_time = null;
	//new std::list()std::list> properties;
	//range = new RequestRangeFull();
}

void
RequestTimeFilterDepartureSearch::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(departure_location_id != NULL) {
	//
	//delete departure_location_id;
	//departure_location_id = NULL;
	//}
	//if(arrival_location_ids != NULL) {
	//arrival_location_ids.RemoveAll(true);
	//delete arrival_location_ids;
	//arrival_location_ids = NULL;
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
	//if(departure_time != NULL) {
	//
	//delete departure_time;
	//departure_time = NULL;
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
RequestTimeFilterDepartureSearch::fromJson(char* jsonStr)
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
	const gchar *departure_location_idKey = "departure_location_id";
	node = json_object_get_member(pJsonObject, departure_location_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&departure_location_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *arrival_location_idsKey = "arrival_location_ids";
	node = json_object_get_member(pJsonObject, arrival_location_idsKey);
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
			arrival_location_ids = new_list;
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
	const gchar *departure_timeKey = "departure_time";
	node = json_object_get_member(pJsonObject, departure_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&departure_time, node, "std::string", "");
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

RequestTimeFilterDepartureSearch::RequestTimeFilterDepartureSearch(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterDepartureSearch::toJson()
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
		std::string obj = getDepartureLocationId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departure_location_idKey = "departure_location_id";
	json_object_set_member(pJsonObject, departure_location_idKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getArrivalLocationIds());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getArrivalLocationIds());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *arrival_location_idsKey = "arrival_location_ids";
	json_object_set_member(pJsonObject, arrival_location_idsKey, node);
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
		std::string obj = getDepartureTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departure_timeKey = "departure_time";
	json_object_set_member(pJsonObject, departure_timeKey, node);
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
RequestTimeFilterDepartureSearch::getId()
{
	return id;
}

void
RequestTimeFilterDepartureSearch::setId(std::string  id)
{
	this->id = id;
}

std::string
RequestTimeFilterDepartureSearch::getDepartureLocationId()
{
	return departure_location_id;
}

void
RequestTimeFilterDepartureSearch::setDepartureLocationId(std::string  departure_location_id)
{
	this->departure_location_id = departure_location_id;
}

std::list<std::string>
RequestTimeFilterDepartureSearch::getArrivalLocationIds()
{
	return arrival_location_ids;
}

void
RequestTimeFilterDepartureSearch::setArrivalLocationIds(std::list <std::string> arrival_location_ids)
{
	this->arrival_location_ids = arrival_location_ids;
}

RequestTransportation
RequestTimeFilterDepartureSearch::getTransportation()
{
	return transportation;
}

void
RequestTimeFilterDepartureSearch::setTransportation(RequestTransportation  transportation)
{
	this->transportation = transportation;
}

int
RequestTimeFilterDepartureSearch::getTravelTime()
{
	return travel_time;
}

void
RequestTimeFilterDepartureSearch::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::string
RequestTimeFilterDepartureSearch::getDepartureTime()
{
	return departure_time;
}

void
RequestTimeFilterDepartureSearch::setDepartureTime(std::string  departure_time)
{
	this->departure_time = departure_time;
}

std::list<RequestTimeFilterProperty>
RequestTimeFilterDepartureSearch::getProperties()
{
	return properties;
}

void
RequestTimeFilterDepartureSearch::setProperties(std::list <RequestTimeFilterProperty> properties)
{
	this->properties = properties;
}

RequestRangeFull
RequestTimeFilterDepartureSearch::getRange()
{
	return range;
}

void
RequestTimeFilterDepartureSearch::setRange(RequestRangeFull  range)
{
	this->range = range;
}


