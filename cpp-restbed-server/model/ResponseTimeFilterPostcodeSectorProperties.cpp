/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ResponseTimeFilterPostcodeSectorProperties.h"

#include <string>
#include <sstream>
#include <stdexcept>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

ResponseTimeFilterPostcodeSectorProperties::ResponseTimeFilterPostcodeSectorProperties()
{
	m_Coverage = 0.0;
}

ResponseTimeFilterPostcodeSectorProperties::~ResponseTimeFilterPostcodeSectorProperties()
{
}

std::string ResponseTimeFilterPostcodeSectorProperties::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void ResponseTimeFilterPostcodeSectorProperties::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree ResponseTimeFilterPostcodeSectorProperties::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	if (m_Travel_time_reachable != nullptr) {
		pt.add_child("travel_time_reachable", m_Travel_time_reachable->toPropertyTree());
	}
	if (m_Travel_time_all != nullptr) {
		pt.add_child("travel_time_all", m_Travel_time_all->toPropertyTree());
	}
	pt.put("coverage", m_Coverage);
	return pt;
}

void ResponseTimeFilterPostcodeSectorProperties::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	if (pt.get_child_optional("travel_time_reachable")) {
		m_Travel_time_reachable = std::make_shared<ResponseTravelTimeStatistics>();
		m_Travel_time_reachable->fromPropertyTree(pt.get_child("travel_time_reachable"));
	}
	if (pt.get_child_optional("travel_time_all")) {
		m_Travel_time_all = std::make_shared<ResponseTravelTimeStatistics>();
		m_Travel_time_all->fromPropertyTree(pt.get_child("travel_time_all"));
	}
	m_Coverage = pt.get("coverage", 0.0);
}

std::shared_ptr<ResponseTravelTimeStatistics> ResponseTimeFilterPostcodeSectorProperties::getTravelTimeReachable() const
{
    return m_Travel_time_reachable;
}
void ResponseTimeFilterPostcodeSectorProperties::setTravelTimeReachable(std::shared_ptr<ResponseTravelTimeStatistics> value)
{
	m_Travel_time_reachable = value;
}
std::shared_ptr<ResponseTravelTimeStatistics> ResponseTimeFilterPostcodeSectorProperties::getTravelTimeAll() const
{
    return m_Travel_time_all;
}
void ResponseTimeFilterPostcodeSectorProperties::setTravelTimeAll(std::shared_ptr<ResponseTravelTimeStatistics> value)
{
	m_Travel_time_all = value;
}
double ResponseTimeFilterPostcodeSectorProperties::getCoverage() const
{
    return m_Coverage;
}
void ResponseTimeFilterPostcodeSectorProperties::setCoverage(double value)
{
	m_Coverage = value;
}

}
}
}
}

