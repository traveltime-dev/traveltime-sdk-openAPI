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



#include "ResponseFaresBreakdownItem.h"

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

ResponseFaresBreakdownItem::ResponseFaresBreakdownItem()
{
    
}

ResponseFaresBreakdownItem::~ResponseFaresBreakdownItem()
{
}

std::string ResponseFaresBreakdownItem::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	write_json(ss, pt, false);
	return ss.str();
}

void ResponseFaresBreakdownItem::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
}

std::vector<std::shared_ptr<ResponseTransportationMode>> ResponseFaresBreakdownItem::getModes() const
{
    return m_Modes;
}
void ResponseFaresBreakdownItem::setModes(std::vector<std::shared_ptr<ResponseTransportationMode>> value)
{
    m_Modes = value;
}
std::vector<int32_t> ResponseFaresBreakdownItem::getRoutePartIds() const
{
    return m_Route_part_ids;
}
void ResponseFaresBreakdownItem::setRoutePartIds(std::vector<int32_t> value)
{
    m_Route_part_ids = value;
}
std::vector<std::shared_ptr<ResponseFareTicket>> ResponseFaresBreakdownItem::getTickets() const
{
    return m_Tickets;
}
void ResponseFaresBreakdownItem::setTickets(std::vector<std::shared_ptr<ResponseFareTicket>> value)
{
    m_Tickets = value;
}

}
}
}
}
