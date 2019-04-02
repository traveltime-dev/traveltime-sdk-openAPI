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



#include "ResponseRoutesLocation.h"

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

ResponseRoutesLocation::ResponseRoutesLocation()
{
    m_Id = "";
    
}

ResponseRoutesLocation::~ResponseRoutesLocation()
{
}

std::string ResponseRoutesLocation::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("Id", m_Id);
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseRoutesLocation::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m_Id = pt.get("Id", "");
}

std::string ResponseRoutesLocation::getId() const
{
    return m_Id;
}
void ResponseRoutesLocation::setId(std::string value)
{
    m_Id = value;
}
std::vector<std::shared_ptr<ResponseRoutesProperties>> ResponseRoutesLocation::getProperties() const
{
    return m_Properties;
}
void ResponseRoutesLocation::setProperties(std::vector<std::shared_ptr<ResponseRoutesProperties>> value)
{
    m_Properties = value;
}

}
}
}
}
