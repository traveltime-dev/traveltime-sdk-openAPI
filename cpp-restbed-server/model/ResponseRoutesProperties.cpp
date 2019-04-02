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



#include "ResponseRoutesProperties.h"

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

ResponseRoutesProperties::ResponseRoutesProperties()
{
    m_Travel_time = 0;
    m_Distance = 0;
    
}

ResponseRoutesProperties::~ResponseRoutesProperties()
{
}

std::string ResponseRoutesProperties::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("Travel_time", m_Travel_time);
	pt.put("Distance", m_Distance);
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseRoutesProperties::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m_Travel_time = pt.get("Travel_time", 0);
	m_Distance = pt.get("Distance", 0);
}

int32_t ResponseRoutesProperties::getTravelTime() const
{
    return m_Travel_time;
}
void ResponseRoutesProperties::setTravelTime(int32_t value)
{
    m_Travel_time = value;
}
int32_t ResponseRoutesProperties::getDistance() const
{
    return m_Distance;
}
void ResponseRoutesProperties::setDistance(int32_t value)
{
    m_Distance = value;
}
std::shared_ptr<ResponseFares> ResponseRoutesProperties::getFares() const
{
    return m_Fares;
}
void ResponseRoutesProperties::setFares(std::shared_ptr<ResponseFares> value)
{
    m_Fares = value;
}
std::shared_ptr<ResponseRoute> ResponseRoutesProperties::getRoute() const
{
    return m_Route;
}
void ResponseRoutesProperties::setRoute(std::shared_ptr<ResponseRoute> value)
{
    m_Route = value;
}

}
}
}
}
