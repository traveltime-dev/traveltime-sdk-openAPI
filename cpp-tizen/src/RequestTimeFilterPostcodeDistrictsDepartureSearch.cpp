#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeFilterPostcodeDistrictsDepartureSearch.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeFilterPostcodeDistrictsDepartureSearch::RequestTimeFilterPostcodeDistrictsDepartureSearch()
{
	//__init();
}

RequestTimeFilterPostcodeDistrictsDepartureSearch::~RequestTimeFilterPostcodeDistrictsDepartureSearch()
{
	//__cleanup();
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::__init()
{
	//id = std::string();
	//transportation = new RequestTransportation();
	//travel_time = int(0);
	//departure_time = null;
	//reachable_postcodes_threshold = double(0);
	//new std::list()std::list> properties;
	//range = new RequestRangeFull();
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::__cleanup()
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
	//if(reachable_postcodes_threshold != NULL) {
	//
	//delete reachable_postcodes_threshold;
	//reachable_postcodes_threshold = NULL;
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
RequestTimeFilterPostcodeDistrictsDepartureSearch::fromJson(char* jsonStr)
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
	const gchar *reachable_postcodes_thresholdKey = "reachable_postcodes_threshold";
	node = json_object_get_member(pJsonObject, reachable_postcodes_thresholdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&reachable_postcodes_threshold, node, "double", "");
		} else {
			
		}
	}
	const gchar *propertiesKey = "properties";
	node = json_object_get_member(pJsonObject, propertiesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RequestTimeFilterPostcodeDistrictsProperty> new_list;
			RequestTimeFilterPostcodeDistrictsProperty inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeFilterPostcodeDistrictsProperty")) {
					jsonToValue(&inst, temp_json, "RequestTimeFilterPostcodeDistrictsProperty", "");
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

RequestTimeFilterPostcodeDistrictsDepartureSearch::RequestTimeFilterPostcodeDistrictsDepartureSearch(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeFilterPostcodeDistrictsDepartureSearch::toJson()
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
	if (isprimitive("double")) {
		double obj = getReachablePostcodesThreshold();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *reachable_postcodes_thresholdKey = "reachable_postcodes_threshold";
	json_object_set_member(pJsonObject, reachable_postcodes_thresholdKey, node);
	if (isprimitive("RequestTimeFilterPostcodeDistrictsProperty")) {
		list<RequestTimeFilterPostcodeDistrictsProperty> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsProperty> > (getProperties());
		node = converttoJson(&new_list, "RequestTimeFilterPostcodeDistrictsProperty", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeFilterPostcodeDistrictsProperty> new_list = static_cast<list <RequestTimeFilterPostcodeDistrictsProperty> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeFilterPostcodeDistrictsProperty>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeFilterPostcodeDistrictsProperty obj = *it;
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
RequestTimeFilterPostcodeDistrictsDepartureSearch::getId()
{
	return id;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setId(std::string  id)
{
	this->id = id;
}

RequestTransportation
RequestTimeFilterPostcodeDistrictsDepartureSearch::getTransportation()
{
	return transportation;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setTransportation(RequestTransportation  transportation)
{
	this->transportation = transportation;
}

int
RequestTimeFilterPostcodeDistrictsDepartureSearch::getTravelTime()
{
	return travel_time;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::string
RequestTimeFilterPostcodeDistrictsDepartureSearch::getDepartureTime()
{
	return departure_time;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setDepartureTime(std::string  departure_time)
{
	this->departure_time = departure_time;
}

double
RequestTimeFilterPostcodeDistrictsDepartureSearch::getReachablePostcodesThreshold()
{
	return reachable_postcodes_threshold;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setReachablePostcodesThreshold(double  reachable_postcodes_threshold)
{
	this->reachable_postcodes_threshold = reachable_postcodes_threshold;
}

std::list<RequestTimeFilterPostcodeDistrictsProperty>
RequestTimeFilterPostcodeDistrictsDepartureSearch::getProperties()
{
	return properties;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setProperties(std::list <RequestTimeFilterPostcodeDistrictsProperty> properties)
{
	this->properties = properties;
}

RequestRangeFull
RequestTimeFilterPostcodeDistrictsDepartureSearch::getRange()
{
	return range;
}

void
RequestTimeFilterPostcodeDistrictsDepartureSearch::setRange(RequestRangeFull  range)
{
	this->range = range;
}


