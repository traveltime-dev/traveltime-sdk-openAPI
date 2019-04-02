#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseError.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseError::ResponseError()
{
	//__init();
}

ResponseError::~ResponseError()
{
	//__cleanup();
}

void
ResponseError::__init()
{
	//http_status = int(0);
	//error_code = int(0);
	//description = std::string();
	//documentation_link = std::string();
	//new std::map()std::map> additional_info;
}

void
ResponseError::__cleanup()
{
	//if(http_status != NULL) {
	//
	//delete http_status;
	//http_status = NULL;
	//}
	//if(error_code != NULL) {
	//
	//delete error_code;
	//error_code = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(documentation_link != NULL) {
	//
	//delete documentation_link;
	//documentation_link = NULL;
	//}
	//if(additional_info != NULL) {
	//additional_info.RemoveAll(true);
	//delete additional_info;
	//additional_info = NULL;
	//}
	//
}

void
ResponseError::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *http_statusKey = "http_status";
	node = json_object_get_member(pJsonObject, http_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&http_status, node, "int", "");
		} else {
			
		}
	}
	const gchar *error_codeKey = "error_code";
	node = json_object_get_member(pJsonObject, error_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&error_code, node, "int", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *documentation_linkKey = "documentation_link";
	node = json_object_get_member(pJsonObject, documentation_linkKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&documentation_link, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *additional_infoKey = "additional_info";
	node = json_object_get_member(pJsonObject, additional_infoKey);
	if (node !=NULL) {
	
		{
			JsonObject* json_obj = json_node_get_object(node);
			map<string,string> new_map;
			json_object_foreach_member(json_obj,helper_func,&new_map);
			additional_info = new_map;
		}
		
	}
}

ResponseError::ResponseError(char* json)
{
	this->fromJson(json);
}

char*
ResponseError::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getHttpStatus();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *http_statusKey = "http_status";
	json_object_set_member(pJsonObject, http_statusKey, node);
	if (isprimitive("int")) {
		int obj = getErrorCode();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *error_codeKey = "error_code";
	json_object_set_member(pJsonObject, error_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDocumentationLink();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *documentation_linkKey = "documentation_link";
	json_object_set_member(pJsonObject, documentation_linkKey, node);


	{
		JsonObject* json_obj;
		map<string, string> new_list = static_cast<map <string, string> > (getAdditionalInfo());
		json_obj = json_object_new();
		for (map<string, string>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			string obj = (*it).first;
			string obj2 = (*it).second;
			JsonNode* tempnode = json_from_string(obj2.c_str(),NULL);
			json_object_set_member(json_obj, obj.c_str(), tempnode);
		}
	node = json_node_alloc();
	json_node_init_object(node, json_obj);
	json_object_unref(json_obj);
	}

	const gchar *additional_infoKey = "additional_info";
	json_object_set_member(pJsonObject, additional_infoKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ResponseError::getHttpStatus()
{
	return http_status;
}

void
ResponseError::setHttpStatus(int  http_status)
{
	this->http_status = http_status;
}

int
ResponseError::getErrorCode()
{
	return error_code;
}

void
ResponseError::setErrorCode(int  error_code)
{
	this->error_code = error_code;
}

std::string
ResponseError::getDescription()
{
	return description;
}

void
ResponseError::setDescription(std::string  description)
{
	this->description = description;
}

std::string
ResponseError::getDocumentationLink()
{
	return documentation_link;
}

void
ResponseError::setDocumentationLink(std::string  documentation_link)
{
	this->documentation_link = documentation_link;
}

std::map<string, string>
ResponseError::getAdditionalInfo()
{
	return additional_info;
}

void
ResponseError::setAdditionalInfo(std::map <string, string> additional_info)
{
	this->additional_info = additional_info;
}


