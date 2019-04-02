#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseFares.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseFares::ResponseFares()
{
	//__init();
}

ResponseFares::~ResponseFares()
{
	//__cleanup();
}

void
ResponseFares::__init()
{
	//new std::list()std::list> breakdown;
	//new std::list()std::list> tickets_total;
}

void
ResponseFares::__cleanup()
{
	//if(breakdown != NULL) {
	//breakdown.RemoveAll(true);
	//delete breakdown;
	//breakdown = NULL;
	//}
	//if(tickets_total != NULL) {
	//tickets_total.RemoveAll(true);
	//delete tickets_total;
	//tickets_total = NULL;
	//}
	//
}

void
ResponseFares::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *breakdownKey = "breakdown";
	node = json_object_get_member(pJsonObject, breakdownKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseFaresBreakdownItem> new_list;
			ResponseFaresBreakdownItem inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseFaresBreakdownItem")) {
					jsonToValue(&inst, temp_json, "ResponseFaresBreakdownItem", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			breakdown = new_list;
		}
		
	}
	const gchar *tickets_totalKey = "tickets_total";
	node = json_object_get_member(pJsonObject, tickets_totalKey);
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
			tickets_total = new_list;
		}
		
	}
}

ResponseFares::ResponseFares(char* json)
{
	this->fromJson(json);
}

char*
ResponseFares::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseFaresBreakdownItem")) {
		list<ResponseFaresBreakdownItem> new_list = static_cast<list <ResponseFaresBreakdownItem> > (getBreakdown());
		node = converttoJson(&new_list, "ResponseFaresBreakdownItem", "array");
	} else {
		node = json_node_alloc();
		list<ResponseFaresBreakdownItem> new_list = static_cast<list <ResponseFaresBreakdownItem> > (getBreakdown());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseFaresBreakdownItem>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseFaresBreakdownItem obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *breakdownKey = "breakdown";
	json_object_set_member(pJsonObject, breakdownKey, node);
	if (isprimitive("ResponseFareTicket")) {
		list<ResponseFareTicket> new_list = static_cast<list <ResponseFareTicket> > (getTicketsTotal());
		node = converttoJson(&new_list, "ResponseFareTicket", "array");
	} else {
		node = json_node_alloc();
		list<ResponseFareTicket> new_list = static_cast<list <ResponseFareTicket> > (getTicketsTotal());
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


	
	const gchar *tickets_totalKey = "tickets_total";
	json_object_set_member(pJsonObject, tickets_totalKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ResponseFaresBreakdownItem>
ResponseFares::getBreakdown()
{
	return breakdown;
}

void
ResponseFares::setBreakdown(std::list <ResponseFaresBreakdownItem> breakdown)
{
	this->breakdown = breakdown;
}

std::list<ResponseFareTicket>
ResponseFares::getTicketsTotal()
{
	return tickets_total;
}

void
ResponseFares::setTicketsTotal(std::list <ResponseFareTicket> tickets_total)
{
	this->tickets_total = tickets_total;
}


