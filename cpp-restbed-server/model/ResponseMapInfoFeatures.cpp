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



#include "ResponseMapInfoFeatures.h"

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

ResponseMapInfoFeatures::ResponseMapInfoFeatures()
{
    m_Fares = false;
    m_Postcodes = false;
    
}

ResponseMapInfoFeatures::~ResponseMapInfoFeatures()
{
}

std::string ResponseMapInfoFeatures::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("Fares", m_Fares);
	pt.put("Postcodes", m_Postcodes);
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseMapInfoFeatures::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m_Fares = pt.get("Fares", false);
	m_Postcodes = pt.get("Postcodes", false);
}

std::shared_ptr<ResponseMapInfoFeaturesPublicTransport> ResponseMapInfoFeatures::getPublicTransport() const
{
    return m_Public_transport;
}
void ResponseMapInfoFeatures::setPublicTransport(std::shared_ptr<ResponseMapInfoFeaturesPublicTransport> value)
{
    m_Public_transport = value;
}
bool ResponseMapInfoFeatures::isFares() const
{
    return m_Fares;
}
void ResponseMapInfoFeatures::setFares(bool value)
{
    m_Fares = value;
}
bool ResponseMapInfoFeatures::isPostcodes() const
{
    return m_Postcodes;
}
void ResponseMapInfoFeatures::setPostcodes(bool value)
{
    m_Postcodes = value;
}

}
}
}
}
