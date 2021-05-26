#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestTimeMapDepartureSearch.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestTimeMapDepartureSearch::RequestTimeMapDepartureSearch()
{
	//__init();
}

RequestTimeMapDepartureSearch::~RequestTimeMapDepartureSearch()
{
	//__cleanup();
}

void
RequestTimeMapDepartureSearch::__init()
{
	//id = std::string();
	//coords = new Coords();
	//transportation = new RequestTransportation();
	//travel_time = int(0);
	//departure_time = null;
	//new std::list()std::list> properties;
	//range = new RequestRangeNoMaxResults();
	//level_of_detail = new RequestLevelOfDetail();
}

void
RequestTimeMapDepartureSearch::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(coords != NULL) {
	//
	//delete coords;
	//coords = NULL;
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
	//if(level_of_detail != NULL) {
	//
	//delete level_of_detail;
	//level_of_detail = NULL;
	//}
	//
}

void
RequestTimeMapDepartureSearch::fromJson(char* jsonStr)
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
	const gchar *coordsKey = "coords";
	node = json_object_get_member(pJsonObject, coordsKey);
	if (node !=NULL) {
	

		if (isprimitive("Coords")) {
			jsonToValue(&coords, node, "Coords", "Coords");
		} else {
			
			Coords* obj = static_cast<Coords*> (&coords);
			obj->fromJson(json_to_string(node, false));
			
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
			list<RequestTimeMapProperty> new_list;
			RequestTimeMapProperty inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RequestTimeMapProperty")) {
					jsonToValue(&inst, temp_json, "RequestTimeMapProperty", "");
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
	

		if (isprimitive("RequestRangeNoMaxResults")) {
			jsonToValue(&range, node, "RequestRangeNoMaxResults", "RequestRangeNoMaxResults");
		} else {
			
			RequestRangeNoMaxResults* obj = static_cast<RequestRangeNoMaxResults*> (&range);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *level_of_detailKey = "level_of_detail";
	node = json_object_get_member(pJsonObject, level_of_detailKey);
	if (node !=NULL) {
	

		if (isprimitive("RequestLevelOfDetail")) {
			jsonToValue(&level_of_detail, node, "RequestLevelOfDetail", "RequestLevelOfDetail");
		} else {
			
			RequestLevelOfDetail* obj = static_cast<RequestLevelOfDetail*> (&level_of_detail);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RequestTimeMapDepartureSearch::RequestTimeMapDepartureSearch(char* json)
{
	this->fromJson(json);
}

char*
RequestTimeMapDepartureSearch::toJson()
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
	if (isprimitive("Coords")) {
		Coords obj = getCoords();
		node = converttoJson(&obj, "Coords", "");
	}
	else {
		
		Coords obj = static_cast<Coords> (getCoords());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *coordsKey = "coords";
	json_object_set_member(pJsonObject, coordsKey, node);
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
	if (isprimitive("RequestTimeMapProperty")) {
		list<RequestTimeMapProperty> new_list = static_cast<list <RequestTimeMapProperty> > (getProperties());
		node = converttoJson(&new_list, "RequestTimeMapProperty", "array");
	} else {
		node = json_node_alloc();
		list<RequestTimeMapProperty> new_list = static_cast<list <RequestTimeMapProperty> > (getProperties());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RequestTimeMapProperty>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RequestTimeMapProperty obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *propertiesKey = "properties";
	json_object_set_member(pJsonObject, propertiesKey, node);
	if (isprimitive("RequestRangeNoMaxResults")) {
		RequestRangeNoMaxResults obj = getRange();
		node = converttoJson(&obj, "RequestRangeNoMaxResults", "");
	}
	else {
		
		RequestRangeNoMaxResults obj = static_cast<RequestRangeNoMaxResults> (getRange());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rangeKey = "range";
	json_object_set_member(pJsonObject, rangeKey, node);
	if (isprimitive("RequestLevelOfDetail")) {
		RequestLevelOfDetail obj = getLevelOfDetail();
		node = converttoJson(&obj, "RequestLevelOfDetail", "");
	}
	else {
		
		RequestLevelOfDetail obj = static_cast<RequestLevelOfDetail> (getLevelOfDetail());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *level_of_detailKey = "level_of_detail";
	json_object_set_member(pJsonObject, level_of_detailKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestTimeMapDepartureSearch::getId()
{
	return id;
}

void
RequestTimeMapDepartureSearch::setId(std::string  id)
{
	this->id = id;
}

Coords
RequestTimeMapDepartureSearch::getCoords()
{
	return coords;
}

void
RequestTimeMapDepartureSearch::setCoords(Coords  coords)
{
	this->coords = coords;
}

RequestTransportation
RequestTimeMapDepartureSearch::getTransportation()
{
	return transportation;
}

void
RequestTimeMapDepartureSearch::setTransportation(RequestTransportation  transportation)
{
	this->transportation = transportation;
}

int
RequestTimeMapDepartureSearch::getTravelTime()
{
	return travel_time;
}

void
RequestTimeMapDepartureSearch::setTravelTime(int  travel_time)
{
	this->travel_time = travel_time;
}

std::string
RequestTimeMapDepartureSearch::getDepartureTime()
{
	return departure_time;
}

void
RequestTimeMapDepartureSearch::setDepartureTime(std::string  departure_time)
{
	this->departure_time = departure_time;
}

std::list<RequestTimeMapProperty>
RequestTimeMapDepartureSearch::getProperties()
{
	return properties;
}

void
RequestTimeMapDepartureSearch::setProperties(std::list <RequestTimeMapProperty> properties)
{
	this->properties = properties;
}

RequestRangeNoMaxResults
RequestTimeMapDepartureSearch::getRange()
{
	return range;
}

void
RequestTimeMapDepartureSearch::setRange(RequestRangeNoMaxResults  range)
{
	this->range = range;
}

RequestLevelOfDetail
RequestTimeMapDepartureSearch::getLevelOfDetail()
{
	return level_of_detail;
}

void
RequestTimeMapDepartureSearch::setLevelOfDetail(RequestLevelOfDetail  level_of_detail)
{
	this->level_of_detail = level_of_detail;
}


