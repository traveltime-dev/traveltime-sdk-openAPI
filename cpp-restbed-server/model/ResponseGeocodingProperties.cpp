/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.3.4.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ResponseGeocodingProperties.h"

#include <string>
#include <sstream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

ResponseGeocodingProperties::ResponseGeocodingProperties()
{
    m_Name = "";
    m_Label = "";
    m_Score = 0.0;
    m_House_number = "";
    m_Street = "";
    m_Region = "";
    m_Region_code = "";
    m_Neighbourhood = "";
    m_County = "";
    m_Macroregion = "";
    m_City = "";
    m_Country = "";
    m_Country_code = "";
    m_Continent = "";
    m_Postcode = "";
    
}

ResponseGeocodingProperties::~ResponseGeocodingProperties()
{
}

std::string ResponseGeocodingProperties::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("Name", m_Name);
	pt.put("Label", m_Label);
	pt.put("Score", m_Score);
	pt.put("House_number", m_House_number);
	pt.put("Street", m_Street);
	pt.put("Region", m_Region);
	pt.put("Region_code", m_Region_code);
	pt.put("Neighbourhood", m_Neighbourhood);
	pt.put("County", m_County);
	pt.put("Macroregion", m_Macroregion);
	pt.put("City", m_City);
	pt.put("Country", m_Country);
	pt.put("Country_code", m_Country_code);
	pt.put("Continent", m_Continent);
	pt.put("Postcode", m_Postcode);
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseGeocodingProperties::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m_Name = pt.get("Name", "");
	m_Label = pt.get("Label", "");
	m_Score = pt.get("Score", 0.0);
	m_House_number = pt.get("House_number", "");
	m_Street = pt.get("Street", "");
	m_Region = pt.get("Region", "");
	m_Region_code = pt.get("Region_code", "");
	m_Neighbourhood = pt.get("Neighbourhood", "");
	m_County = pt.get("County", "");
	m_Macroregion = pt.get("Macroregion", "");
	m_City = pt.get("City", "");
	m_Country = pt.get("Country", "");
	m_Country_code = pt.get("Country_code", "");
	m_Continent = pt.get("Continent", "");
	m_Postcode = pt.get("Postcode", "");
}

std::string ResponseGeocodingProperties::getName() const
{
    return m_Name;
}
void ResponseGeocodingProperties::setName(std::string value)
{
    m_Name = value;
}
std::string ResponseGeocodingProperties::getLabel() const
{
    return m_Label;
}
void ResponseGeocodingProperties::setLabel(std::string value)
{
    m_Label = value;
}
double ResponseGeocodingProperties::getScore() const
{
    return m_Score;
}
void ResponseGeocodingProperties::setScore(double value)
{
    m_Score = value;
}
std::string ResponseGeocodingProperties::getHouseNumber() const
{
    return m_House_number;
}
void ResponseGeocodingProperties::setHouseNumber(std::string value)
{
    m_House_number = value;
}
std::string ResponseGeocodingProperties::getStreet() const
{
    return m_Street;
}
void ResponseGeocodingProperties::setStreet(std::string value)
{
    m_Street = value;
}
std::string ResponseGeocodingProperties::getRegion() const
{
    return m_Region;
}
void ResponseGeocodingProperties::setRegion(std::string value)
{
    m_Region = value;
}
std::string ResponseGeocodingProperties::getRegionCode() const
{
    return m_Region_code;
}
void ResponseGeocodingProperties::setRegionCode(std::string value)
{
    m_Region_code = value;
}
std::string ResponseGeocodingProperties::getNeighbourhood() const
{
    return m_Neighbourhood;
}
void ResponseGeocodingProperties::setNeighbourhood(std::string value)
{
    m_Neighbourhood = value;
}
std::string ResponseGeocodingProperties::getCounty() const
{
    return m_County;
}
void ResponseGeocodingProperties::setCounty(std::string value)
{
    m_County = value;
}
std::string ResponseGeocodingProperties::getMacroregion() const
{
    return m_Macroregion;
}
void ResponseGeocodingProperties::setMacroregion(std::string value)
{
    m_Macroregion = value;
}
std::string ResponseGeocodingProperties::getCity() const
{
    return m_City;
}
void ResponseGeocodingProperties::setCity(std::string value)
{
    m_City = value;
}
std::string ResponseGeocodingProperties::getCountry() const
{
    return m_Country;
}
void ResponseGeocodingProperties::setCountry(std::string value)
{
    m_Country = value;
}
std::string ResponseGeocodingProperties::getCountryCode() const
{
    return m_Country_code;
}
void ResponseGeocodingProperties::setCountryCode(std::string value)
{
    m_Country_code = value;
}
std::string ResponseGeocodingProperties::getContinent() const
{
    return m_Continent;
}
void ResponseGeocodingProperties::setContinent(std::string value)
{
    m_Continent = value;
}
std::string ResponseGeocodingProperties::getPostcode() const
{
    return m_Postcode;
}
void ResponseGeocodingProperties::setPostcode(std::string value)
{
    m_Postcode = value;
}
std::shared_ptr<ResponseMapInfoFeatures> ResponseGeocodingProperties::getFeatures() const
{
    return m_Features;
}
void ResponseGeocodingProperties::setFeatures(std::shared_ptr<ResponseMapInfoFeatures> value)
{
    m_Features = value;
}

}
}
}
}
