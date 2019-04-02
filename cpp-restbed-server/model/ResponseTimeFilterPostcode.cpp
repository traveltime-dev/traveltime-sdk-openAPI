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



#include "ResponseTimeFilterPostcode.h"

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

ResponseTimeFilterPostcode::ResponseTimeFilterPostcode()
{
    
}

ResponseTimeFilterPostcode::~ResponseTimeFilterPostcode()
{
}

std::string ResponseTimeFilterPostcode::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseTimeFilterPostcode::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
}

std::shared_ptr<String> ResponseTimeFilterPostcode::getCode() const
{
    return m_Code;
}
void ResponseTimeFilterPostcode::setCode(std::shared_ptr<String> value)
{
    m_Code = value;
}
std::vector<std::shared_ptr<ResponseTimeFilterPostcodesProperties>> ResponseTimeFilterPostcode::getProperties() const
{
    return m_Properties;
}
void ResponseTimeFilterPostcode::setProperties(std::vector<std::shared_ptr<ResponseTimeFilterPostcodesProperties>> value)
{
    m_Properties = value;
}

}
}
}
}
