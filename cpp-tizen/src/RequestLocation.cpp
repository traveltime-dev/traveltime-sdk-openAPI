#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RequestLocation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RequestLocation::RequestLocation()
{
	//__init();
}

RequestLocation::~RequestLocation()
{
	//__cleanup();
}

void
RequestLocation::__init()
{
	//id = std::string();
	//coords = new Coords();
}

void
RequestLocation::__cleanup()
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
	//
}

void
RequestLocation::fromJson(char* jsonStr)
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
}

RequestLocation::RequestLocation(char* json)
{
	this->fromJson(json);
}

char*
RequestLocation::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RequestLocation::getId()
{
	return id;
}

void
RequestLocation::setId(std::string  id)
{
	this->id = id;
}

Coords
RequestLocation::getCoords()
{
	return coords;
}

void
RequestLocation::setCoords(Coords  coords)
{
	this->coords = coords;
}


