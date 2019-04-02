#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseGeocodingProperties.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseGeocodingProperties::ResponseGeocodingProperties()
{
	//__init();
}

ResponseGeocodingProperties::~ResponseGeocodingProperties()
{
	//__cleanup();
}

void
ResponseGeocodingProperties::__init()
{
	//name = std::string();
	//label = std::string();
	//score = double(0);
	//house_number = std::string();
	//street = std::string();
	//region = std::string();
	//region_code = std::string();
	//neighbourhood = std::string();
	//county = std::string();
	//macroregion = std::string();
	//city = std::string();
	//country = std::string();
	//country_code = std::string();
	//continent = std::string();
	//postcode = std::string();
	//features = new ResponseMapInfoFeatures();
}

void
ResponseGeocodingProperties::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(score != NULL) {
	//
	//delete score;
	//score = NULL;
	//}
	//if(house_number != NULL) {
	//
	//delete house_number;
	//house_number = NULL;
	//}
	//if(street != NULL) {
	//
	//delete street;
	//street = NULL;
	//}
	//if(region != NULL) {
	//
	//delete region;
	//region = NULL;
	//}
	//if(region_code != NULL) {
	//
	//delete region_code;
	//region_code = NULL;
	//}
	//if(neighbourhood != NULL) {
	//
	//delete neighbourhood;
	//neighbourhood = NULL;
	//}
	//if(county != NULL) {
	//
	//delete county;
	//county = NULL;
	//}
	//if(macroregion != NULL) {
	//
	//delete macroregion;
	//macroregion = NULL;
	//}
	//if(city != NULL) {
	//
	//delete city;
	//city = NULL;
	//}
	//if(country != NULL) {
	//
	//delete country;
	//country = NULL;
	//}
	//if(country_code != NULL) {
	//
	//delete country_code;
	//country_code = NULL;
	//}
	//if(continent != NULL) {
	//
	//delete continent;
	//continent = NULL;
	//}
	//if(postcode != NULL) {
	//
	//delete postcode;
	//postcode = NULL;
	//}
	//if(features != NULL) {
	//
	//delete features;
	//features = NULL;
	//}
	//
}

void
ResponseGeocodingProperties::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *labelKey = "label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *scoreKey = "score";
	node = json_object_get_member(pJsonObject, scoreKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&score, node, "double", "");
		} else {
			
		}
	}
	const gchar *house_numberKey = "house_number";
	node = json_object_get_member(pJsonObject, house_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&house_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *streetKey = "street";
	node = json_object_get_member(pJsonObject, streetKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&street, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *regionKey = "region";
	node = json_object_get_member(pJsonObject, regionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&region, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *region_codeKey = "region_code";
	node = json_object_get_member(pJsonObject, region_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&region_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *neighbourhoodKey = "neighbourhood";
	node = json_object_get_member(pJsonObject, neighbourhoodKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&neighbourhood, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *countyKey = "county";
	node = json_object_get_member(pJsonObject, countyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&county, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *macroregionKey = "macroregion";
	node = json_object_get_member(pJsonObject, macroregionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&macroregion, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cityKey = "city";
	node = json_object_get_member(pJsonObject, cityKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&city, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *countryKey = "country";
	node = json_object_get_member(pJsonObject, countryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&country, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *country_codeKey = "country_code";
	node = json_object_get_member(pJsonObject, country_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&country_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *continentKey = "continent";
	node = json_object_get_member(pJsonObject, continentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&continent, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *postcodeKey = "postcode";
	node = json_object_get_member(pJsonObject, postcodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&postcode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *featuresKey = "features";
	node = json_object_get_member(pJsonObject, featuresKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseMapInfoFeatures")) {
			jsonToValue(&features, node, "ResponseMapInfoFeatures", "ResponseMapInfoFeatures");
		} else {
			
			ResponseMapInfoFeatures* obj = static_cast<ResponseMapInfoFeatures*> (&features);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ResponseGeocodingProperties::ResponseGeocodingProperties(char* json)
{
	this->fromJson(json);
}

char*
ResponseGeocodingProperties::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("double")) {
		double obj = getScore();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *scoreKey = "score";
	json_object_set_member(pJsonObject, scoreKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHouseNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *house_numberKey = "house_number";
	json_object_set_member(pJsonObject, house_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStreet();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *streetKey = "street";
	json_object_set_member(pJsonObject, streetKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRegion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *regionKey = "region";
	json_object_set_member(pJsonObject, regionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRegionCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *region_codeKey = "region_code";
	json_object_set_member(pJsonObject, region_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNeighbourhood();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *neighbourhoodKey = "neighbourhood";
	json_object_set_member(pJsonObject, neighbourhoodKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCounty();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *countyKey = "county";
	json_object_set_member(pJsonObject, countyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMacroregion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *macroregionKey = "macroregion";
	json_object_set_member(pJsonObject, macroregionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCity();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cityKey = "city";
	json_object_set_member(pJsonObject, cityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCountry();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *countryKey = "country";
	json_object_set_member(pJsonObject, countryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCountryCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *country_codeKey = "country_code";
	json_object_set_member(pJsonObject, country_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getContinent();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *continentKey = "continent";
	json_object_set_member(pJsonObject, continentKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPostcode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *postcodeKey = "postcode";
	json_object_set_member(pJsonObject, postcodeKey, node);
	if (isprimitive("ResponseMapInfoFeatures")) {
		ResponseMapInfoFeatures obj = getFeatures();
		node = converttoJson(&obj, "ResponseMapInfoFeatures", "");
	}
	else {
		
		ResponseMapInfoFeatures obj = static_cast<ResponseMapInfoFeatures> (getFeatures());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *featuresKey = "features";
	json_object_set_member(pJsonObject, featuresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ResponseGeocodingProperties::getName()
{
	return name;
}

void
ResponseGeocodingProperties::setName(std::string  name)
{
	this->name = name;
}

std::string
ResponseGeocodingProperties::getLabel()
{
	return label;
}

void
ResponseGeocodingProperties::setLabel(std::string  label)
{
	this->label = label;
}

double
ResponseGeocodingProperties::getScore()
{
	return score;
}

void
ResponseGeocodingProperties::setScore(double  score)
{
	this->score = score;
}

std::string
ResponseGeocodingProperties::getHouseNumber()
{
	return house_number;
}

void
ResponseGeocodingProperties::setHouseNumber(std::string  house_number)
{
	this->house_number = house_number;
}

std::string
ResponseGeocodingProperties::getStreet()
{
	return street;
}

void
ResponseGeocodingProperties::setStreet(std::string  street)
{
	this->street = street;
}

std::string
ResponseGeocodingProperties::getRegion()
{
	return region;
}

void
ResponseGeocodingProperties::setRegion(std::string  region)
{
	this->region = region;
}

std::string
ResponseGeocodingProperties::getRegionCode()
{
	return region_code;
}

void
ResponseGeocodingProperties::setRegionCode(std::string  region_code)
{
	this->region_code = region_code;
}

std::string
ResponseGeocodingProperties::getNeighbourhood()
{
	return neighbourhood;
}

void
ResponseGeocodingProperties::setNeighbourhood(std::string  neighbourhood)
{
	this->neighbourhood = neighbourhood;
}

std::string
ResponseGeocodingProperties::getCounty()
{
	return county;
}

void
ResponseGeocodingProperties::setCounty(std::string  county)
{
	this->county = county;
}

std::string
ResponseGeocodingProperties::getMacroregion()
{
	return macroregion;
}

void
ResponseGeocodingProperties::setMacroregion(std::string  macroregion)
{
	this->macroregion = macroregion;
}

std::string
ResponseGeocodingProperties::getCity()
{
	return city;
}

void
ResponseGeocodingProperties::setCity(std::string  city)
{
	this->city = city;
}

std::string
ResponseGeocodingProperties::getCountry()
{
	return country;
}

void
ResponseGeocodingProperties::setCountry(std::string  country)
{
	this->country = country;
}

std::string
ResponseGeocodingProperties::getCountryCode()
{
	return country_code;
}

void
ResponseGeocodingProperties::setCountryCode(std::string  country_code)
{
	this->country_code = country_code;
}

std::string
ResponseGeocodingProperties::getContinent()
{
	return continent;
}

void
ResponseGeocodingProperties::setContinent(std::string  continent)
{
	this->continent = continent;
}

std::string
ResponseGeocodingProperties::getPostcode()
{
	return postcode;
}

void
ResponseGeocodingProperties::setPostcode(std::string  postcode)
{
	this->postcode = postcode;
}

ResponseMapInfoFeatures
ResponseGeocodingProperties::getFeatures()
{
	return features;
}

void
ResponseGeocodingProperties::setFeatures(ResponseMapInfoFeatures  features)
{
	this->features = features;
}


