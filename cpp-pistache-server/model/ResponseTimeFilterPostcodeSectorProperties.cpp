/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.2
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "ResponseTimeFilterPostcodeSectorProperties.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterPostcodeSectorProperties::ResponseTimeFilterPostcodeSectorProperties()
{
    m_Travel_time_reachableIsSet = false;
    m_Travel_time_allIsSet = false;
    m_Coverage = 0.0;
    m_CoverageIsSet = false;
    
}

void ResponseTimeFilterPostcodeSectorProperties::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterPostcodeSectorProperties::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterPostcodeSectorProperties::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterPostcodeSectorProperties" : pathPrefix;

        
    
    

    return success;
}

bool ResponseTimeFilterPostcodeSectorProperties::operator==(const ResponseTimeFilterPostcodeSectorProperties& rhs) const
{
    return
    
    
    
    ((!travelTimeReachableIsSet() && !rhs.travelTimeReachableIsSet()) || (travelTimeReachableIsSet() && rhs.travelTimeReachableIsSet() && getTravelTimeReachable() == rhs.getTravelTimeReachable())) &&
    
    
    ((!travelTimeAllIsSet() && !rhs.travelTimeAllIsSet()) || (travelTimeAllIsSet() && rhs.travelTimeAllIsSet() && getTravelTimeAll() == rhs.getTravelTimeAll())) &&
    
    
    ((!coverageIsSet() && !rhs.coverageIsSet()) || (coverageIsSet() && rhs.coverageIsSet() && getCoverage() == rhs.getCoverage()))
    
    ;
}

bool ResponseTimeFilterPostcodeSectorProperties::operator!=(const ResponseTimeFilterPostcodeSectorProperties& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodeSectorProperties& o)
{
    j = nlohmann::json();
    if(o.travelTimeReachableIsSet())
        j["travel_time_reachable"] = o.m_Travel_time_reachable;
    if(o.travelTimeAllIsSet())
        j["travel_time_all"] = o.m_Travel_time_all;
    if(o.coverageIsSet())
        j["coverage"] = o.m_Coverage;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodeSectorProperties& o)
{
    if(j.find("travel_time_reachable") != j.end())
    {
        j.at("travel_time_reachable").get_to(o.m_Travel_time_reachable);
        o.m_Travel_time_reachableIsSet = true;
    } 
    if(j.find("travel_time_all") != j.end())
    {
        j.at("travel_time_all").get_to(o.m_Travel_time_all);
        o.m_Travel_time_allIsSet = true;
    } 
    if(j.find("coverage") != j.end())
    {
        j.at("coverage").get_to(o.m_Coverage);
        o.m_CoverageIsSet = true;
    } 
    
}

ResponseTravelTimeStatistics ResponseTimeFilterPostcodeSectorProperties::getTravelTimeReachable() const
{
    return m_Travel_time_reachable;
}
void ResponseTimeFilterPostcodeSectorProperties::setTravelTimeReachable(ResponseTravelTimeStatistics const& value)
{
    m_Travel_time_reachable = value;
    m_Travel_time_reachableIsSet = true;
}
bool ResponseTimeFilterPostcodeSectorProperties::travelTimeReachableIsSet() const
{
    return m_Travel_time_reachableIsSet;
}
void ResponseTimeFilterPostcodeSectorProperties::unsetTravel_time_reachable()
{
    m_Travel_time_reachableIsSet = false;
}
ResponseTravelTimeStatistics ResponseTimeFilterPostcodeSectorProperties::getTravelTimeAll() const
{
    return m_Travel_time_all;
}
void ResponseTimeFilterPostcodeSectorProperties::setTravelTimeAll(ResponseTravelTimeStatistics const& value)
{
    m_Travel_time_all = value;
    m_Travel_time_allIsSet = true;
}
bool ResponseTimeFilterPostcodeSectorProperties::travelTimeAllIsSet() const
{
    return m_Travel_time_allIsSet;
}
void ResponseTimeFilterPostcodeSectorProperties::unsetTravel_time_all()
{
    m_Travel_time_allIsSet = false;
}
double ResponseTimeFilterPostcodeSectorProperties::getCoverage() const
{
    return m_Coverage;
}
void ResponseTimeFilterPostcodeSectorProperties::setCoverage(double const value)
{
    m_Coverage = value;
    m_CoverageIsSet = true;
}
bool ResponseTimeFilterPostcodeSectorProperties::coverageIsSet() const
{
    return m_CoverageIsSet;
}
void ResponseTimeFilterPostcodeSectorProperties::unsetCoverage()
{
    m_CoverageIsSet = false;
}


} // namespace org::openapitools::server::model

