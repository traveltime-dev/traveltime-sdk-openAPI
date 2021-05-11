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



#include "ResponseTimeFilterFast.h"

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

ResponseTimeFilterFast::ResponseTimeFilterFast()
{
}

ResponseTimeFilterFast::~ResponseTimeFilterFast()
{
}

std::string ResponseTimeFilterFast::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void ResponseTimeFilterFast::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree ResponseTimeFilterFast::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	// generate tree for Results
	if (!m_Results.empty()) {
		for (const auto &childEntry : m_Results) {
			ptree Results_node;
			Results_node.put("", childEntry);
			tmp_node.push_back(std::make_pair("", Results_node));
		}
		pt.add_child("results", tmp_node);
		tmp_node.clear();
	}
	return pt;
}

void ResponseTimeFilterFast::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	// push all items of Results into member vector
	if (pt.get_child_optional("results")) {
		for (const auto &childTree : pt.get_child("results")) {
			m_Results.emplace_back(childTree.second.data());
		}
	}
}

std::vector<std::shared_ptr<ResponseTimeFilterFastResult>> ResponseTimeFilterFast::getResults() const
{
    return m_Results;
}
void ResponseTimeFilterFast::setResults(std::vector<std::shared_ptr<ResponseTimeFilterFastResult>> value)
{
	m_Results = value;
}

}
}
}
}

