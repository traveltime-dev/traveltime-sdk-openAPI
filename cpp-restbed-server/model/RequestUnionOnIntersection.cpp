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



#include "RequestUnionOnIntersection.h"

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

RequestUnionOnIntersection::RequestUnionOnIntersection()
{
	m_Id = "";
}

RequestUnionOnIntersection::~RequestUnionOnIntersection()
{
}

std::string RequestUnionOnIntersection::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void RequestUnionOnIntersection::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree RequestUnionOnIntersection::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	pt.put("id", m_Id);
	// generate tree for Search_ids
	if (!m_Search_ids.empty()) {
		for (const auto &childEntry : m_Search_ids) {
			ptree Search_ids_node;
			Search_ids_node.put("", childEntry);
			tmp_node.push_back(std::make_pair("", Search_ids_node));
		}
		pt.add_child("search_ids", tmp_node);
		tmp_node.clear();
	}
	return pt;
}

void RequestUnionOnIntersection::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Id = pt.get("id", "");
	// push all items of Search_ids into member vector
	if (pt.get_child_optional("search_ids")) {
		for (const auto &childTree : pt.get_child("search_ids")) {
			m_Search_ids.emplace_back(childTree.second.data());
		}
	}
}

std::string RequestUnionOnIntersection::getId() const
{
    return m_Id;
}
void RequestUnionOnIntersection::setId(std::string value)
{
	m_Id = value;
}
std::vector<std::string> RequestUnionOnIntersection::getSearchIds() const
{
    return m_Search_ids;
}
void RequestUnionOnIntersection::setSearchIds(std::vector<std::string> value)
{
	m_Search_ids = value;
}

}
}
}
}

