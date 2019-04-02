#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseShape.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseShape::ResponseShape()
{
	//__init();
}

ResponseShape::~ResponseShape()
{
	//__cleanup();
}

void
ResponseShape::__init()
{
	//new std::list()std::list> shell;
	//new std::list()std::list> holes;
}

void
ResponseShape::__cleanup()
{
	//if(shell != NULL) {
	//shell.RemoveAll(true);
	//delete shell;
	//shell = NULL;
	//}
	//if(holes != NULL) {
	//holes.RemoveAll(true);
	//delete holes;
	//holes = NULL;
	//}
	//
}

void
ResponseShape::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *shellKey = "shell";
	node = json_object_get_member(pJsonObject, shellKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Coords> new_list;
			Coords inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Coords")) {
					jsonToValue(&inst, temp_json, "Coords", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			shell = new_list;
		}
		
	}
	const gchar *holesKey = "holes";
	node = json_object_get_member(pJsonObject, holesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::list> new_list;
			std::list inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::list")) {
					jsonToValue(&inst, temp_json, "std::list", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			holes = new_list;
		}
		
	}
}

ResponseShape::ResponseShape(char* json)
{
	this->fromJson(json);
}

char*
ResponseShape::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Coords")) {
		list<Coords> new_list = static_cast<list <Coords> > (getShell());
		node = converttoJson(&new_list, "Coords", "array");
	} else {
		node = json_node_alloc();
		list<Coords> new_list = static_cast<list <Coords> > (getShell());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Coords>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Coords obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *shellKey = "shell";
	json_object_set_member(pJsonObject, shellKey, node);
	if (isprimitive("std::list")) {
		list<std::list> new_list = static_cast<list <std::list> > (getHoles());
		node = converttoJson(&new_list, "std::list", "array");
	} else {
		node = json_node_alloc();
		list<std::list> new_list = static_cast<list <std::list> > (getHoles());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<std::list>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			std::list obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *holesKey = "holes";
	json_object_set_member(pJsonObject, holesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<Coords>
ResponseShape::getShell()
{
	return shell;
}

void
ResponseShape::setShell(std::list <Coords> shell)
{
	this->shell = shell;
}

std::list<std::list>
ResponseShape::getHoles()
{
	return holes;
}

void
ResponseShape::setHoles(std::list <std::list> holes)
{
	this->holes = holes;
}


