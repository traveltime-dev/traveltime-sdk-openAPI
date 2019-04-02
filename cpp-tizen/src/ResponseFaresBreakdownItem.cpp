#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseFaresBreakdownItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseFaresBreakdownItem::ResponseFaresBreakdownItem()
{
	//__init();
}

ResponseFaresBreakdownItem::~ResponseFaresBreakdownItem()
{
	//__cleanup();
}

void
ResponseFaresBreakdownItem::__init()
{
	//new std::list()std::list> modes;
	//new std::list()std::list> route_part_ids;
	//new std::list()std::list> tickets;
}

void
ResponseFaresBreakdownItem::__cleanup()
{
	//if(modes != NULL) {
	//modes.RemoveAll(true);
	//delete modes;
	//modes = NULL;
	//}
	//if(route_part_ids != NULL) {
	//route_part_ids.RemoveAll(true);
	//delete route_part_ids;
	//route_part_ids = NULL;
	//}
	//if(tickets != NULL) {
	//tickets.RemoveAll(true);
	//delete tickets;
	//tickets = NULL;
	//}
	//
}

void
ResponseFaresBreakdownItem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *modesKey = "modes";
	node = json_object_get_member(pJsonObject, modesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseTransportationMode> new_list;
			ResponseTransportationMode inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseTransportationMode")) {
					jsonToValue(&inst, temp_json, "ResponseTransportationMode", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			modes = new_list;
		}
		
	}
	const gchar *route_part_idsKey = "route_part_ids";
	node = json_object_get_member(pJsonObject, route_part_idsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<int> new_list;
			int inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("int")) {
					jsonToValue(&inst, temp_json, "int", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			route_part_ids = new_list;
		}
		
	}
	const gchar *ticketsKey = "tickets";
	node = json_object_get_member(pJsonObject, ticketsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseFareTicket> new_list;
			ResponseFareTicket inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseFareTicket")) {
					jsonToValue(&inst, temp_json, "ResponseFareTicket", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			tickets = new_list;
		}
		
	}
}

ResponseFaresBreakdownItem::ResponseFaresBreakdownItem(char* json)
{
	this->fromJson(json);
}

char*
ResponseFaresBreakdownItem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseTransportationMode")) {
		list<ResponseTransportationMode> new_list = static_cast<list <ResponseTransportationMode> > (getModes());
		node = converttoJson(&new_list, "ResponseTransportationMode", "array");
	} else {
		node = json_node_alloc();
		list<ResponseTransportationMode> new_list = static_cast<list <ResponseTransportationMode> > (getModes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseTransportationMode>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseTransportationMode obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *modesKey = "modes";
	json_object_set_member(pJsonObject, modesKey, node);
	if (isprimitive("int")) {
		list<int> new_list = static_cast<list <int> > (getRoutePartIds());
		node = converttoJson(&new_list, "int", "array");
	} else {
		node = json_node_alloc();
		list<int> new_list = static_cast<list <int> > (getRoutePartIds());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *route_part_idsKey = "route_part_ids";
	json_object_set_member(pJsonObject, route_part_idsKey, node);
	if (isprimitive("ResponseFareTicket")) {
		list<ResponseFareTicket> new_list = static_cast<list <ResponseFareTicket> > (getTickets());
		node = converttoJson(&new_list, "ResponseFareTicket", "array");
	} else {
		node = json_node_alloc();
		list<ResponseFareTicket> new_list = static_cast<list <ResponseFareTicket> > (getTickets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseFareTicket>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseFareTicket obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *ticketsKey = "tickets";
	json_object_set_member(pJsonObject, ticketsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ResponseTransportationMode>
ResponseFaresBreakdownItem::getModes()
{
	return modes;
}

void
ResponseFaresBreakdownItem::setModes(std::list <ResponseTransportationMode> modes)
{
	this->modes = modes;
}

std::list<int>
ResponseFaresBreakdownItem::getRoutePartIds()
{
	return route_part_ids;
}

void
ResponseFaresBreakdownItem::setRoutePartIds(std::list <int> route_part_ids)
{
	this->route_part_ids = route_part_ids;
}

std::list<ResponseFareTicket>
ResponseFaresBreakdownItem::getTickets()
{
	return tickets;
}

void
ResponseFaresBreakdownItem::setTickets(std::list <ResponseFareTicket> tickets)
{
	this->tickets = tickets;
}


