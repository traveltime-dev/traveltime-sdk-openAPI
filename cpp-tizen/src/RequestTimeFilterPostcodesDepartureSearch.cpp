#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterPostcodesDepartureSearch.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterPostcodesDepartureSearch::RequestTimeFilterPostcodesDepartureSearch()
{
	//__init();
}

RequestTimeFilterPostcodesDepartureSearch::~RequestTimeFilterPostcodesDepartureSearch()
{
	//__cleanup();
}

void
RequestTimeFilterPostcodesDepartureSearch::__init()
{
	//id = std::string();
	//transportation = new RequestTransportation();
	//travel_time = int(0);
	//departure_time = null;
	//new std::list()std::list> properties;
	//range = new RequestRangeFull();
}

void
RequestTimeFilterPostcodesDepartureSearch::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
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
RequestTimeFilterPostcodesDepartureSearch::fromJson(char* jsonStr)
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
			list<RequestTimeFilterPostcodesProperty> new_list;
			RequestTimeFilterPostcodesProperty inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodesProperty")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodesProperty", "");
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

RequestTimeFilterPostcodesDepartureSearch::RequestTimeFilterPostcodesDepartureSearch(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterPostcodesDepartureSearch::toJson()
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
	if (isprimitive("RequestTimeFilterPostcodesProperty")) {
		list<RequestTimeFilterPostcodesProperty> new_list = static_cast<list <RequestTimeFilterPostcodesProperty> > (getProperties());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodesProperty", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodesProperty> new_list = static_cast<list <RequestTimeFilterPostcodesProperty> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodesProperty>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodesProperty obj = *it;
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
RequestTimeFilterPostcodesDepartureSearch::getId()
{
	return id;
}

void
RequestTimeFilterPostcodesDepartureSearch::setId(std::string  id)
{
	this->id = id;
}

RequestTransportation
RequestTimeFilterPostcodesDepartureSearch::getTransportation()
{
	return transportation;
}

void
RequestTimeFilterPostcodesDepartureSearch::setTransportation(RequestTransportation  transportation)
{
	this->transportation = transportation;
}

int
RequestTimeFilterPostcodesDepartureSearch::getTravelTime()
{
	return travel_time;
}

void
RequestTimeFilterPostcodesDepartureSearch::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::string
RequestTimeFilterPostcodesDepartureSearch::getDepartureTime()
{
	return departure_time;
}

void
RequestTimeFilterPostcodesDepartureSearch::setDepartureTime(std::string  departure_time)
{
	this->departure_time = departure_time;
}

std::list<RequestTimeFilterPostcodesProperty>
RequestTimeFilterPostcodesDepartureSearch::getProperties()
{
	return properties;
}

void
RequestTimeFilterPostcodesDepartureSearch::setProperties(std::list <RequestTimeFilterPostcodesProperty> properties)
{
	this->properties = properties;
}

RequestRangeFull
RequestTimeFilterPostcodesDepartureSearch::getRange()
{
	return range;
}

void
RequestTimeFilterPostcodesDepartureSearch::setRange(RequestRangeFull  range)
{
	this->range = range;
}


