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



#include "RequestTimeMapArrivalSearch.h"

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

RequestTimeMapArrivalSearch::RequestTimeMapArrivalSearch()
{
    m_Id = "";
    m_Travel_time = 0;
    m_Arrival_time = "";
    
}

RequestTimeMapArrivalSearch::~RequestTimeMapArrivalSearch()
{
}

std::string RequestTimeMapArrivalSearch::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("Id", m_Id);
	pt.put("Travel_time", m_Travel_time);
	pt.put("Arrival_time", m_Arrival_time);
	write_json(ss, pt, false);
	return ss.str();
}

void RequestTimeMapArrivalSearch::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m_Id = pt.get("Id", "");
	m_Travel_time = pt.get("Travel_time", 0);
	m_Arrival_time = pt.get("Arrival_time", "");
}

std::string RequestTimeMapArrivalSearch::getId() const
{
    return m_Id;
}
void RequestTimeMapArrivalSearch::setId(std::string value)
{
    m_Id = value;
}
std::shared_ptr<Coords> RequestTimeMapArrivalSearch::getCoords() const
{
    return m_Coords;
}
void RequestTimeMapArrivalSearch::setCoords(std::shared_ptr<Coords> value)
{
    m_Coords = value;
}
std::shared_ptr<RequestTransportation> RequestTimeMapArrivalSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeMapArrivalSearch::setTransportation(std::shared_ptr<RequestTransportation> value)
{
    m_Transportation = value;
}
int32_t RequestTimeMapArrivalSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeMapArrivalSearch::setTravelTime(int32_t value)
{
    m_Travel_time = value;
}
std::string RequestTimeMapArrivalSearch::getArrivalTime() const
{
    return m_Arrival_time;
}
void RequestTimeMapArrivalSearch::setArrivalTime(std::string value)
{
    m_Arrival_time = value;
}
std::vector<std::shared_ptr<RequestTimeMapProperty>> RequestTimeMapArrivalSearch::getProperties() const
{
    return m_Properties;
}
void RequestTimeMapArrivalSearch::setProperties(std::vector<std::shared_ptr<RequestTimeMapProperty>> value)
{
    m_Properties = value;
}
std::shared_ptr<RequestRangeNoMaxResults> RequestTimeMapArrivalSearch::getRange() const
{
    return m_Range;
}
void RequestTimeMapArrivalSearch::setRange(std::shared_ptr<RequestRangeNoMaxResults> value)
{
    m_Range = value;
}

}
}
}
}
