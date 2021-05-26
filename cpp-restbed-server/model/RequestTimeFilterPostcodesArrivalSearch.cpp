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



#include "RequestTimeFilterPostcodesArrivalSearch.h"

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

RequestTimeFilterPostcodesArrivalSearch::RequestTimeFilterPostcodesArrivalSearch()
{
	m_Id = "";
	m_Travel_time = 0;
	m_Arrival_time = "";
}

RequestTimeFilterPostcodesArrivalSearch::~RequestTimeFilterPostcodesArrivalSearch()
{
}

std::string RequestTimeFilterPostcodesArrivalSearch::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void RequestTimeFilterPostcodesArrivalSearch::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree RequestTimeFilterPostcodesArrivalSearch::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	pt.put("id", m_Id);
	if (m_Transportation != nullptr) {
		pt.add_child("transportation", m_Transportation->toPropertyTree());
	}
	pt.put("travel_time", m_Travel_time);
	pt.put("arrival_time", m_Arrival_time);
	// generate tree for Properties
	if (!m_Properties.empty()) {
		for (const auto &childEntry : m_Properties) {
			ptree Properties_node;
			Properties_node.put("", childEntry);
			tmp_node.push_back(std::make_pair("", Properties_node));
		}
		pt.add_child("properties", tmp_node);
		tmp_node.clear();
	}
	if (m_Range != nullptr) {
		pt.add_child("range", m_Range->toPropertyTree());
	}
	return pt;
}

void RequestTimeFilterPostcodesArrivalSearch::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Id = pt.get("id", "");
	if (pt.get_child_optional("transportation")) {
		m_Transportation = std::make_shared<RequestTransportation>();
		m_Transportation->fromPropertyTree(pt.get_child("transportation"));
	}
	m_Travel_time = pt.get("travel_time", 0);
	m_Arrival_time = pt.get("arrival_time", "");
	// push all items of Properties into member vector
	if (pt.get_child_optional("properties")) {
		for (const auto &childTree : pt.get_child("properties")) {
			m_Properties.emplace_back(childTree.second.data());
		}
	}
	if (pt.get_child_optional("range")) {
		m_Range = std::make_shared<RequestRangeFull>();
		m_Range->fromPropertyTree(pt.get_child("range"));
	}
}

std::string RequestTimeFilterPostcodesArrivalSearch::getId() const
{
    return m_Id;
}
void RequestTimeFilterPostcodesArrivalSearch::setId(std::string value)
{
	m_Id = value;
}
std::shared_ptr<RequestTransportation> RequestTimeFilterPostcodesArrivalSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeFilterPostcodesArrivalSearch::setTransportation(std::shared_ptr<RequestTransportation> value)
{
	m_Transportation = value;
}
int32_t RequestTimeFilterPostcodesArrivalSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeFilterPostcodesArrivalSearch::setTravelTime(int32_t value)
{
	m_Travel_time = value;
}
std::string RequestTimeFilterPostcodesArrivalSearch::getArrivalTime() const
{
    return m_Arrival_time;
}
void RequestTimeFilterPostcodesArrivalSearch::setArrivalTime(std::string value)
{
	m_Arrival_time = value;
}
std::vector<std::shared_ptr<RequestTimeFilterPostcodesProperty>> RequestTimeFilterPostcodesArrivalSearch::getProperties() const
{
    return m_Properties;
}
void RequestTimeFilterPostcodesArrivalSearch::setProperties(std::vector<std::shared_ptr<RequestTimeFilterPostcodesProperty>> value)
{
	m_Properties = value;
}
std::shared_ptr<RequestRangeFull> RequestTimeFilterPostcodesArrivalSearch::getRange() const
{
    return m_Range;
}
void RequestTimeFilterPostcodesArrivalSearch::setRange(std::shared_ptr<RequestRangeFull> value)
{
	m_Range = value;
}

}
}
}
}

