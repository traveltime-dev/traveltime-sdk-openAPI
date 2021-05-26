/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.3
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "RequestTimeFilterPostcodeSectorsDepartureSearch.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

RequestTimeFilterPostcodeSectorsDepartureSearch::RequestTimeFilterPostcodeSectorsDepartureSearch()
{
    m_Id = "";
    m_Travel_time = 0;
    m_Departure_time = "";
    m_Reachable_postcodes_threshold = 0.0;
    m_RangeIsSet = false;
    
}

void RequestTimeFilterPostcodeSectorsDepartureSearch::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestTimeFilterPostcodeSectorsDepartureSearch::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestTimeFilterPostcodeSectorsDepartureSearch::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestTimeFilterPostcodeSectorsDepartureSearch" : pathPrefix;

        
    
     
    
    /* Travel_time */ {
        const int32_t& value = m_Travel_time;
        const std::string currentValuePath = _pathPrefix + ".travelTime";
                
        
        if (value < 60)
        {
            success = false;
            msg << currentValuePath << ": must be greater than or equal to 60;";
        }
        if (value > 14400)
        {
            success = false;
            msg << currentValuePath << ": must be less than or equal to 14400;";
        }

    }
    
    
    
     
    
    /* Properties */ {
        const std::vector<RequestTimeFilterPostcodeSectorsProperty>& value = m_Properties;
        const std::string currentValuePath = _pathPrefix + ".properties";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const RequestTimeFilterPostcodeSectorsProperty& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath) && success;
        
        
 
                i++;
            }
        }

    }
    
    

    return success;
}

bool RequestTimeFilterPostcodeSectorsDepartureSearch::operator==(const RequestTimeFilterPostcodeSectorsDepartureSearch& rhs) const
{
    return
    
    
    (getId() == rhs.getId())
     &&
    
    (getTransportation() == rhs.getTransportation())
     &&
    
    (getTravelTime() == rhs.getTravelTime())
     &&
    
    (getDepartureTime() == rhs.getDepartureTime())
     &&
    
    (getReachablePostcodesThreshold() == rhs.getReachablePostcodesThreshold())
     &&
    
    (getProperties() == rhs.getProperties())
     &&
    
    
    ((!rangeIsSet() && !rhs.rangeIsSet()) || (rangeIsSet() && rhs.rangeIsSet() && getRange() == rhs.getRange()))
    
    ;
}

bool RequestTimeFilterPostcodeSectorsDepartureSearch::operator!=(const RequestTimeFilterPostcodeSectorsDepartureSearch& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestTimeFilterPostcodeSectorsDepartureSearch& o)
{
    j = nlohmann::json();
    j["id"] = o.m_Id;
    j["transportation"] = o.m_Transportation;
    j["travel_time"] = o.m_Travel_time;
    j["departure_time"] = o.m_Departure_time;
    j["reachable_postcodes_threshold"] = o.m_Reachable_postcodes_threshold;
    j["properties"] = o.m_Properties;
    if(o.rangeIsSet())
        j["range"] = o.m_Range;
    
}

void from_json(const nlohmann::json& j, RequestTimeFilterPostcodeSectorsDepartureSearch& o)
{
    j.at("id").get_to(o.m_Id);
    j.at("transportation").get_to(o.m_Transportation);
    j.at("travel_time").get_to(o.m_Travel_time);
    j.at("departure_time").get_to(o.m_Departure_time);
    j.at("reachable_postcodes_threshold").get_to(o.m_Reachable_postcodes_threshold);
    j.at("properties").get_to(o.m_Properties);
    if(j.find("range") != j.end())
    {
        j.at("range").get_to(o.m_Range);
        o.m_RangeIsSet = true;
    } 
    
}

std::string RequestTimeFilterPostcodeSectorsDepartureSearch::getId() const
{
    return m_Id;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setId(std::string const& value)
{
    m_Id = value;
}
RequestTransportation RequestTimeFilterPostcodeSectorsDepartureSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setTransportation(RequestTransportation const& value)
{
    m_Transportation = value;
}
int32_t RequestTimeFilterPostcodeSectorsDepartureSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setTravelTime(int32_t const value)
{
    m_Travel_time = value;
}
std::string RequestTimeFilterPostcodeSectorsDepartureSearch::getDepartureTime() const
{
    return m_Departure_time;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setDepartureTime(std::string const& value)
{
    m_Departure_time = value;
}
double RequestTimeFilterPostcodeSectorsDepartureSearch::getReachablePostcodesThreshold() const
{
    return m_Reachable_postcodes_threshold;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setReachablePostcodesThreshold(double const value)
{
    m_Reachable_postcodes_threshold = value;
}
std::vector<RequestTimeFilterPostcodeSectorsProperty> RequestTimeFilterPostcodeSectorsDepartureSearch::getProperties() const
{
    return m_Properties;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setProperties(std::vector<RequestTimeFilterPostcodeSectorsProperty> const& value)
{
    m_Properties = value;
}
RequestRangeFull RequestTimeFilterPostcodeSectorsDepartureSearch::getRange() const
{
    return m_Range;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::setRange(RequestRangeFull const& value)
{
    m_Range = value;
    m_RangeIsSet = true;
}
bool RequestTimeFilterPostcodeSectorsDepartureSearch::rangeIsSet() const
{
    return m_RangeIsSet;
}
void RequestTimeFilterPostcodeSectorsDepartureSearch::unsetRange()
{
    m_RangeIsSet = false;
}


} // namespace org::openapitools::server::model

