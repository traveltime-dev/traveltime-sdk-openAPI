#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseMapInfoFeatures.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseMapInfoFeatures::ResponseMapInfoFeatures()
{
	//__init();
}

ResponseMapInfoFeatures::~ResponseMapInfoFeatures()
{
	//__cleanup();
}

void
ResponseMapInfoFeatures::__init()
{
	//public_transport = new ResponseMapInfoFeaturesPublicTransport();
	//fares = bool(false);
	//postcodes = bool(false);
}

void
ResponseMapInfoFeatures::__cleanup()
{
	//if(public_transport != NULL) {
	//
	//delete public_transport;
	//public_transport = NULL;
	//}
	//if(fares != NULL) {
	//
	//delete fares;
	//fares = NULL;
	//}
	//if(postcodes != NULL) {
	//
	//delete postcodes;
	//postcodes = NULL;
	//}
	//
}

void
ResponseMapInfoFeatures::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *public_transportKey = "public_transport";
	node = json_object_get_member(pJsonObject, public_transportKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseMapInfoFeaturesPublicTransport")) {
			jsonToValue(&public_transport, node, "ResponseMapInfoFeaturesPublicTransport", "ResponseMapInfoFeaturesPublicTransport");
		} else {
			
			ResponseMapInfoFeaturesPublicTransport* obj = static_cast<ResponseMapInfoFeaturesPublicTransport*> (&public_transport);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *faresKey = "fares";
	node = json_object_get_member(pJsonObject, faresKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&fares, node, "bool", "");
		} else {
			
		}
	}
	const gchar *postcodesKey = "postcodes";
	node = json_object_get_member(pJsonObject, postcodesKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&postcodes, node, "bool", "");
		} else {
			
		}
	}
}

ResponseMapInfoFeatures::ResponseMapInfoFeatures(char* json)
{
	this->fromJson(json);
}

char*
ResponseMapInfoFeatures::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ResponseMapInfoFeaturesPublicTransport")) {
		ResponseMapInfoFeaturesPublicTransport obj = getPublicTransport();
		node = converttoJson(&obj, "ResponseMapInfoFeaturesPublicTransport", "");
	}
	else {
		
		ResponseMapInfoFeaturesPublicTransport obj = static_cast<ResponseMapInfoFeaturesPublicTransport> (getPublicTransport());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *public_transportKey = "public_transport";
	json_object_set_member(pJsonObject, public_transportKey, node);
	if (isprimitive("bool")) {
		bool obj = getFares();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *faresKey = "fares";
	json_object_set_member(pJsonObject, faresKey, node);
	if (isprimitive("bool")) {
		bool obj = getPostcodes();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *postcodesKey = "postcodes";
	json_object_set_member(pJsonObject, postcodesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ResponseMapInfoFeaturesPublicTransport
ResponseMapInfoFeatures::getPublicTransport()
{
	return public_transport;
}

void
ResponseMapInfoFeatures::setPublicTransport(ResponseMapInfoFeaturesPublicTransport  public_transport)
{
	this->public_transport = public_transport;
}

bool
ResponseMapInfoFeatures::getFares()
{
	return fares;
}

void
ResponseMapInfoFeatures::setFares(bool  fares)
{
	this->fares = fares;
}

bool
ResponseMapInfoFeatures::getPostcodes()
{
	return postcodes;
}

void
ResponseMapInfoFeatures::setPostcodes(bool  postcodes)
{
	this->postcodes = postcodes;
}


