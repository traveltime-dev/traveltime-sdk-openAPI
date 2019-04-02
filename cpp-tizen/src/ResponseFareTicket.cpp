#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseFareTicket.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseFareTicket::ResponseFareTicket()
{
	//__init();
}

ResponseFareTicket::~ResponseFareTicket()
{
	//__cleanup();
}

void
ResponseFareTicket::__init()
{
	//type = std::string();
	//price = double(0);
	//currency = std::string();
}

void
ResponseFareTicket::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//if(currency != NULL) {
	//
	//delete currency;
	//currency = NULL;
	//}
	//
}

void
ResponseFareTicket::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *priceKey = "price";
	node = json_object_get_member(pJsonObject, priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price, node, "double", "");
		} else {
			
		}
	}
	const gchar *currencyKey = "currency";
	node = json_object_get_member(pJsonObject, currencyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&currency, node, "std::string", "");
		} else {
			
		}
	}
}

ResponseFareTicket::ResponseFareTicket(char* json)
{
	this->fromJson(json);
}

char*
ResponseFareTicket::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("double")) {
		double obj = getPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *priceKey = "price";
	json_object_set_member(pJsonObject, priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCurrency();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *currencyKey = "currency";
	json_object_set_member(pJsonObject, currencyKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseFareTicket::getType()
{
	return type;
}

void
ResponseFareTicket::setType(std::string  type)
{
	this->type = type;
}

double
ResponseFareTicket::getPrice()
{
	return price;
}

void
ResponseFareTicket::setPrice(double  price)
{
	this->price = price;
}

std::string
ResponseFareTicket::getCurrency()
{
	return currency;
}

void
ResponseFareTicket::setCurrency(std::string  currency)
{
	this->currency = currency;
}


