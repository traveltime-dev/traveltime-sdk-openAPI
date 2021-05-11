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



#include "ResponseBox.h"

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

ResponseBox::ResponseBox()
{
	m_Min_lat = 0.0;
	m_Max_lat = 0.0;
	m_Min_lng = 0.0;
	m_Max_lng = 0.0;
}

ResponseBox::~ResponseBox()
{
}

std::string ResponseBox::toJsonString(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void ResponseBox::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree ResponseBox::toPropertyTree()
{
	ptree pt;
	ptree tmp_node;
	pt.put("min_lat", m_Min_lat);
	pt.put("max_lat", m_Max_lat);
	pt.put("min_lng", m_Min_lng);
	pt.put("max_lng", m_Max_lng);
	return pt;
}

void ResponseBox::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Min_lat = pt.get("min_lat", 0.0);
	m_Max_lat = pt.get("max_lat", 0.0);
	m_Min_lng = pt.get("min_lng", 0.0);
	m_Max_lng = pt.get("max_lng", 0.0);
}

double ResponseBox::getMinLat() const
{
    return m_Min_lat;
}
void ResponseBox::setMinLat(double value)
{
	m_Min_lat = value;
}
double ResponseBox::getMaxLat() const
{
    return m_Max_lat;
}
void ResponseBox::setMaxLat(double value)
{
	m_Max_lat = value;
}
double ResponseBox::getMinLng() const
{
    return m_Min_lng;
}
void ResponseBox::setMinLng(double value)
{
	m_Min_lng = value;
}
double ResponseBox::getMaxLng() const
{
    return m_Max_lng;
}
void ResponseBox::setMaxLng(double value)
{
	m_Max_lng = value;
}

}
}
}
}

