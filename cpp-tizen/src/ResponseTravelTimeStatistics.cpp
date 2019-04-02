#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTravelTimeStatistics.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTravelTimeStatistics::ResponseTravelTimeStatistics()
{
	//__init();
}

ResponseTravelTimeStatistics::~ResponseTravelTimeStatistics()
{
	//__cleanup();
}

void
ResponseTravelTimeStatistics::__init()
{
	//min = int(0);
	//max = int(0);
	//mean = int(0);
	//median = int(0);
}

void
ResponseTravelTimeStatistics::__cleanup()
{
	//if(min != NULL) {
	//
	//delete min;
	//min = NULL;
	//}
	//if(max != NULL) {
	//
	//delete max;
	//max = NULL;
	//}
	//if(mean != NULL) {
	//
	//delete mean;
	//mean = NULL;
	//}
	//if(median != NULL) {
	//
	//delete median;
	//median = NULL;
	//}
	//
}

void
ResponseTravelTimeStatistics::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *minKey = "min";
	node = json_object_get_member(pJsonObject, minKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&min, node, "int", "");
		} else {
			
		}
	}
	const gchar *maxKey = "max";
	node = json_object_get_member(pJsonObject, maxKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&max, node, "int", "");
		} else {
			
		}
	}
	const gchar *meanKey = "mean";
	node = json_object_get_member(pJsonObject, meanKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&mean, node, "int", "");
		} else {
			
		}
	}
	const gchar *medianKey = "median";
	node = json_object_get_member(pJsonObject, medianKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&median, node, "int", "");
		} else {
			
		}
	}
}

ResponseTravelTimeStatistics::ResponseTravelTimeStatistics(char* json)
{
	this->fromJson(json);
}

char*
ResponseTravelTimeStatistics::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getMin();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *minKey = "min";
	json_object_set_member(pJsonObject, minKey, node);
	if (isprimitive("int")) {
		int obj = getMax();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *maxKey = "max";
	json_object_set_member(pJsonObject, maxKey, node);
	if (isprimitive("int")) {
		int obj = getMean();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *meanKey = "mean";
	json_object_set_member(pJsonObject, meanKey, node);
	if (isprimitive("int")) {
		int obj = getMedian();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *medianKey = "median";
	json_object_set_member(pJsonObject, medianKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ResponseTravelTimeStatistics::getMin()
{
	return min;
}

void
ResponseTravelTimeStatistics::setMin(int  min)
{
	this->min = min;
}

int
ResponseTravelTimeStatistics::getMax()
{
	return max;
}

void
ResponseTravelTimeStatistics::setMax(int  max)
{
	this->max = max;
}

int
ResponseTravelTimeStatistics::getMean()
{
	return mean;
}

void
ResponseTravelTimeStatistics::setMean(int  mean)
{
	this->mean = mean;
}

int
ResponseTravelTimeStatistics::getMedian()
{
	return median;
}

void
ResponseTravelTimeStatistics::setMedian(int  median)
{
	this->median = median;
}


