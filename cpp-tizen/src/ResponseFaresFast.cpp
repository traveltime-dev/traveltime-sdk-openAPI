#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseFaresFast.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseFaresFast::ResponseFaresFast()
{
	//__init();
}

ResponseFaresFast::~ResponseFaresFast()
{
	//__cleanup();
}

void
ResponseFaresFast::__init()
{
	//new std::list()std::list> tickets_total;
}

void
ResponseFaresFast::__cleanup()
{
	//if(tickets_total != NULL) {
	//tickets_total.RemoveAll(true);
	//delete tickets_total;
	//tickets_total = NULL;
	//}
	//
}

void
ResponseFaresFast::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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

ResponseFaresFast::ResponseFaresFast(char* json)
{
	this->fromJson(json);
}

char*
ResponseFaresFast::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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

std::list<ResponseFareTicket>
ResponseFaresFast::getTicketsTotal()
{
	return tickets_total;
}

void
ResponseFaresFast::setTicketsTotal(std::list <ResponseFareTicket> tickets_total)
{
	this->tickets_total = tickets_total;
}


