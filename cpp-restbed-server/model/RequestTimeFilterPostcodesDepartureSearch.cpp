/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "RequestTimeFilterPostcodesDepartureSearch.h"

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

RequestTimeFilterPostcodesDepartureSearch::RequestTimeFilterPostcodesDepartureSearch()
{
	m_Id = "";
	m_Travel_time = 0;
	m_Departure_time = "";
}

RequestTimeFilterPostcodesDepartureSearch::~RequestTimeFilterPostcodesDepartureSearch()
{
}

std::string RequestTimeFilterPostcodesDepartureSearch::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void RequestTimeFilterPostcodesDepartureSearch::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree RequestTimeFilterPostcodesDepartureSearch::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	pt.put("id", m_Id);
	if (m_Transportation != nullptr) {
		pt.add_child("transportation", m_Transportation->toPropertyTree());
	}
	pt.put("travel_time", m_Travel_time);
	pt.put("departure_time", m_Departure_time);
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

void RequestTimeFilterPostcodesDepartureSearch::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Id = pt.get("id", "");
	if (pt.get_child_optional("transportation")) {
		m_Transportation = std::make_shared<RequestTransportation>();
		m_Transportation->fromPropertyTree(pt.get_child("transportation"));
	}
	m_Travel_time = pt.get("travel_time", 0);
	m_Departure_time = pt.get("departure_time", "");
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

std::string RequestTimeFilterPostcodesDepartureSearch::getId() const
{
    return m_Id;
}
void RequestTimeFilterPostcodesDepartureSearch::setId(std::string value)
{
	m_Id = value;
}
std::shared_ptr<RequestTransportation> RequestTimeFilterPostcodesDepartureSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeFilterPostcodesDepartureSearch::setTransportation(std::shared_ptr<RequestTransportation> value)
{
	m_Transportation = value;
}
int32_t RequestTimeFilterPostcodesDepartureSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeFilterPostcodesDepartureSearch::setTravelTime(int32_t value)
{
	m_Travel_time = value;
}
std::string RequestTimeFilterPostcodesDepartureSearch::getDepartureTime() const
{
    return m_Departure_time;
}
void RequestTimeFilterPostcodesDepartureSearch::setDepartureTime(std::string value)
{
	m_Departure_time = value;
}
std::vector<std::shared_ptr<RequestTimeFilterPostcodesProperty>> RequestTimeFilterPostcodesDepartureSearch::getProperties() const
{
    return m_Properties;
}
void RequestTimeFilterPostcodesDepartureSearch::setProperties(std::vector<std::shared_ptr<RequestTimeFilterPostcodesProperty>> value)
{
	m_Properties = value;
}
std::shared_ptr<RequestRangeFull> RequestTimeFilterPostcodesDepartureSearch::getRange() const
{
    return m_Range;
}
void RequestTimeFilterPostcodesDepartureSearch::setRange(std::shared_ptr<RequestRangeFull> value)
{
	m_Range = value;
}

}
}
}
}

