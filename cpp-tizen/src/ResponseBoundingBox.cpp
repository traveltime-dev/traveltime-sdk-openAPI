#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseBoundingBox.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseBoundingBox::ResponseBoundingBox()
{
	//__init();
}

ResponseBoundingBox::~ResponseBoundingBox()
{
	//__cleanup();
}

void
ResponseBoundingBox::__init()
{
	//envelope = new ResponseBox();
	//new std::list()std::list> boxes;
}

void
ResponseBoundingBox::__cleanup()
{
	//if(envelope != NULL) {
	//
	//delete envelope;
	//envelope = NULL;
	//}
	//if(boxes != NULL) {
	//boxes.RemoveAll(true);
	//delete boxes;
	//boxes = NULL;
	//}
	//
}

void
ResponseBoundingBox::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *envelopeKey = "envelope";
	node = json_object_get_member(pJsonObject, envelopeKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseBox")) {
			jsonToValue(&envelope, node, "ResponseBox", "ResponseBox");
		} else {
			
			ResponseBox* obj = static_cast<ResponseBox*> (&envelope);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *boxesKey = "boxes";
	node = json_object_get_member(pJsonObject, boxesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ResponseBox> new_list;
			ResponseBox inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ResponseBox")) {
					jsonToValue(&inst, temp_json, "ResponseBox", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			boxes = new_list;
		}
		
	}
}

ResponseBoundingBox::ResponseBoundingBox(char* json)
{
	this->fromJson(json);
}

char*
ResponseBoundingBox::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseBox")) {
		ResponseBox obj = getEnvelope();
		node = converttoJson(&obj, "ResponseBox", "");
	}
	else {
		
		ResponseBox obj = static_cast<ResponseBox> (getEnvelope());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *envelopeKey = "envelope";
	json_object_set_member(pJsonObject, envelopeKey, node);
	if (isprimitive("ResponseBox")) {
		list<ResponseBox> new_list = static_cast<list <ResponseBox> > (getBoxes());
		node = converttoJson(&new_list, "ResponseBox", "array");
	} else {
		node = json_node_alloc();
		list<ResponseBox> new_list = static_cast<list <ResponseBox> > (getBoxes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ResponseBox>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ResponseBox obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *boxesKey = "boxes";
	json_object_set_member(pJsonObject, boxesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ResponseBox
ResponseBoundingBox::getEnvelope()
{
	return envelope;
}

void
ResponseBoundingBox::setEnvelope(ResponseBox  envelope)
{
	this->envelope = envelope;
}

std::list<ResponseBox>
ResponseBoundingBox::getBoxes()
{
	return boxes;
}

void
ResponseBoundingBox::setBoxes(std::list <ResponseBox> boxes)
{
	this->boxes = boxes;
}


