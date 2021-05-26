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



#include "ResponseGeocoding.h"

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

ResponseGeocoding::ResponseGeocoding()
{
	m_Type = "";
}

ResponseGeocoding::~ResponseGeocoding()
{
}

std::string ResponseGeocoding::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void ResponseGeocoding::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree ResponseGeocoding::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	pt.put("type", m_Type);
	// generate tree for Features
	if (!m_Features.empty()) {
		for (const auto &childEntry : m_Features) {
			ptree Features_node;
			Features_node.put("", childEntry);
			tmp_node.push_back(std::make_pair("", Features_node));
		}
		pt.add_child("features", tmp_node);
		tmp_node.clear();
	}
	return pt;
}

void ResponseGeocoding::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Type = pt.get("type", "");
	// push all items of Features into member vector
	if (pt.get_child_optional("features")) {
		for (const auto &childTree : pt.get_child("features")) {
			m_Features.emplace_back(childTree.second.data());
		}
	}
}

std::string ResponseGeocoding::getType() const
{
    return m_Type;
}
void ResponseGeocoding::setType(std::string value)
{
	m_Type = value;
}
std::vector<std::shared_ptr<ResponseGeocodingGeoJsonFeature>> ResponseGeocoding::getFeatures() const
{
    return m_Features;
}
void ResponseGeocoding::setFeatures(std::vector<std::shared_ptr<ResponseGeocodingGeoJsonFeature>> value)
{
	m_Features = value;
}

}
}
}
}

