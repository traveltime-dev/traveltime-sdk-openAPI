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


#include "RequestTimeFilterArrivalSearch.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

RequestTimeFilterArrivalSearch::RequestTimeFilterArrivalSearch()
{
    m_Id = "";
    m_Arrival_location_id = "";
    m_Travel_time = 0;
    m_Arrival_time = "";
    m_RangeIsSet = false;
    
}

void RequestTimeFilterArrivalSearch::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestTimeFilterArrivalSearch::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestTimeFilterArrivalSearch::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestTimeFilterArrivalSearch" : pathPrefix;

        
     
    
    /* Departure_location_ids */ {
        const std::vector<std::string>& value = m_Departure_location_ids;
        const std::string currentValuePath = _pathPrefix + ".departureLocationIds";
                
        
        if (value.size() < 1)
        {
            success = false;
            msg << currentValuePath << ": must have at least 1 elements;";
        }
        if (value.size() > 2000)
        {
            success = false;
            msg << currentValuePath << ": must have at most 2000 elements;";
        }
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const std::string& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        
 
                i++;
            }
        }

    }
    
    
    
     
    
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
        const std::vector<RequestTimeFilterProperty>& value = m_Properties;
        const std::string currentValuePath = _pathPrefix + ".properties";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const RequestTimeFilterProperty& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath) && success;
        
        
 
                i++;
            }
        }

    }
    
    

    return success;
}

bool RequestTimeFilterArrivalSearch::operator==(const RequestTimeFilterArrivalSearch& rhs) const
{
    return
    
    
    (getId() == rhs.getId())
     &&
    
    (getDepartureLocationIds() == rhs.getDepartureLocationIds())
     &&
    
    (getArrivalLocationId() == rhs.getArrivalLocationId())
     &&
    
    (getTransportation() == rhs.getTransportation())
     &&
    
    (getTravelTime() == rhs.getTravelTime())
     &&
    
    (getArrivalTime() == rhs.getArrivalTime())
     &&
    
    (getProperties() == rhs.getProperties())
     &&
    
    
    ((!rangeIsSet() && !rhs.rangeIsSet()) || (rangeIsSet() && rhs.rangeIsSet() && getRange() == rhs.getRange()))
    
    ;
}

bool RequestTimeFilterArrivalSearch::operator!=(const RequestTimeFilterArrivalSearch& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestTimeFilterArrivalSearch& o)
{
    j = nlohmann::json();
    j["id"] = o.m_Id;
    j["departure_location_ids"] = o.m_Departure_location_ids;
    j["arrival_location_id"] = o.m_Arrival_location_id;
    j["transportation"] = o.m_Transportation;
    j["travel_time"] = o.m_Travel_time;
    j["arrival_time"] = o.m_Arrival_time;
    j["properties"] = o.m_Properties;
    if(o.rangeIsSet())
        j["range"] = o.m_Range;
    
}

void from_json(const nlohmann::json& j, RequestTimeFilterArrivalSearch& o)
{
    j.at("id").get_to(o.m_Id);
    j.at("departure_location_ids").get_to(o.m_Departure_location_ids);
    j.at("arrival_location_id").get_to(o.m_Arrival_location_id);
    j.at("transportation").get_to(o.m_Transportation);
    j.at("travel_time").get_to(o.m_Travel_time);
    j.at("arrival_time").get_to(o.m_Arrival_time);
    j.at("properties").get_to(o.m_Properties);
    if(j.find("range") != j.end())
    {
        j.at("range").get_to(o.m_Range);
        o.m_RangeIsSet = true;
    } 
    
}

std::string RequestTimeFilterArrivalSearch::getId() const
{
    return m_Id;
}
void RequestTimeFilterArrivalSearch::setId(std::string const& value)
{
    m_Id = value;
}
std::vector<std::string> RequestTimeFilterArrivalSearch::getDepartureLocationIds() const
{
    return m_Departure_location_ids;
}
void RequestTimeFilterArrivalSearch::setDepartureLocationIds(std::vector<std::string> const& value)
{
    m_Departure_location_ids = value;
}
std::string RequestTimeFilterArrivalSearch::getArrivalLocationId() const
{
    return m_Arrival_location_id;
}
void RequestTimeFilterArrivalSearch::setArrivalLocationId(std::string const& value)
{
    m_Arrival_location_id = value;
}
RequestTransportation RequestTimeFilterArrivalSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeFilterArrivalSearch::setTransportation(RequestTransportation const& value)
{
    m_Transportation = value;
}
int32_t RequestTimeFilterArrivalSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeFilterArrivalSearch::setTravelTime(int32_t const value)
{
    m_Travel_time = value;
}
std::string RequestTimeFilterArrivalSearch::getArrivalTime() const
{
    return m_Arrival_time;
}
void RequestTimeFilterArrivalSearch::setArrivalTime(std::string const& value)
{
    m_Arrival_time = value;
}
std::vector<RequestTimeFilterProperty> RequestTimeFilterArrivalSearch::getProperties() const
{
    return m_Properties;
}
void RequestTimeFilterArrivalSearch::setProperties(std::vector<RequestTimeFilterProperty> const& value)
{
    m_Properties = value;
}
RequestRangeFull RequestTimeFilterArrivalSearch::getRange() const
{
    return m_Range;
}
void RequestTimeFilterArrivalSearch::setRange(RequestRangeFull const& value)
{
    m_Range = value;
    m_RangeIsSet = true;
}
bool RequestTimeFilterArrivalSearch::rangeIsSet() const
{
    return m_RangeIsSet;
}
void RequestTimeFilterArrivalSearch::unsetRange()
{
    m_RangeIsSet = false;
}


} // namespace org::openapitools::server::model

