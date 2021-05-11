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


#include "RequestRoutesDepartureSearch.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

RequestRoutesDepartureSearch::RequestRoutesDepartureSearch()
{
    m_Id = "";
    m_Departure_location_id = "";
    m_Departure_time = "";
    m_RangeIsSet = false;
    
}

void RequestRoutesDepartureSearch::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestRoutesDepartureSearch::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestRoutesDepartureSearch::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestRoutesDepartureSearch" : pathPrefix;

        
    
     
    
    /* Arrival_location_ids */ {
        const std::vector<std::string>& value = m_Arrival_location_ids;
        const std::string currentValuePath = _pathPrefix + ".arrivalLocationIds";
                
        
        if (value.size() < 1)
        {
            success = false;
            msg << currentValuePath << ": must have at least 1 elements;";
        }
        if (value.size() > 2)
        {
            success = false;
            msg << currentValuePath << ": must have at most 2 elements;";
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
    
    
    
     
    
    /* Properties */ {
        const std::vector<RequestRoutesProperty>& value = m_Properties;
        const std::string currentValuePath = _pathPrefix + ".properties";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const RequestRoutesProperty& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath) && success;
        
        
 
                i++;
            }
        }

    }
    
    

    return success;
}

bool RequestRoutesDepartureSearch::operator==(const RequestRoutesDepartureSearch& rhs) const
{
    return
    
    
    (getId() == rhs.getId())
     &&
    
    (getDepartureLocationId() == rhs.getDepartureLocationId())
     &&
    
    (getArrivalLocationIds() == rhs.getArrivalLocationIds())
     &&
    
    (getTransportation() == rhs.getTransportation())
     &&
    
    (getDepartureTime() == rhs.getDepartureTime())
     &&
    
    (getProperties() == rhs.getProperties())
     &&
    
    
    ((!rangeIsSet() && !rhs.rangeIsSet()) || (rangeIsSet() && rhs.rangeIsSet() && getRange() == rhs.getRange()))
    
    ;
}

bool RequestRoutesDepartureSearch::operator!=(const RequestRoutesDepartureSearch& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestRoutesDepartureSearch& o)
{
    j = nlohmann::json();
    j["id"] = o.m_Id;
    j["departure_location_id"] = o.m_Departure_location_id;
    j["arrival_location_ids"] = o.m_Arrival_location_ids;
    j["transportation"] = o.m_Transportation;
    j["departure_time"] = o.m_Departure_time;
    j["properties"] = o.m_Properties;
    if(o.rangeIsSet())
        j["range"] = o.m_Range;
    
}

void from_json(const nlohmann::json& j, RequestRoutesDepartureSearch& o)
{
    j.at("id").get_to(o.m_Id);
    j.at("departure_location_id").get_to(o.m_Departure_location_id);
    j.at("arrival_location_ids").get_to(o.m_Arrival_location_ids);
    j.at("transportation").get_to(o.m_Transportation);
    j.at("departure_time").get_to(o.m_Departure_time);
    j.at("properties").get_to(o.m_Properties);
    if(j.find("range") != j.end())
    {
        j.at("range").get_to(o.m_Range);
        o.m_RangeIsSet = true;
    } 
    
}

std::string RequestRoutesDepartureSearch::getId() const
{
    return m_Id;
}
void RequestRoutesDepartureSearch::setId(std::string const& value)
{
    m_Id = value;
}
std::string RequestRoutesDepartureSearch::getDepartureLocationId() const
{
    return m_Departure_location_id;
}
void RequestRoutesDepartureSearch::setDepartureLocationId(std::string const& value)
{
    m_Departure_location_id = value;
}
std::vector<std::string> RequestRoutesDepartureSearch::getArrivalLocationIds() const
{
    return m_Arrival_location_ids;
}
void RequestRoutesDepartureSearch::setArrivalLocationIds(std::vector<std::string> const& value)
{
    m_Arrival_location_ids = value;
}
RequestTransportation RequestRoutesDepartureSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestRoutesDepartureSearch::setTransportation(RequestTransportation const& value)
{
    m_Transportation = value;
}
std::string RequestRoutesDepartureSearch::getDepartureTime() const
{
    return m_Departure_time;
}
void RequestRoutesDepartureSearch::setDepartureTime(std::string const& value)
{
    m_Departure_time = value;
}
std::vector<RequestRoutesProperty> RequestRoutesDepartureSearch::getProperties() const
{
    return m_Properties;
}
void RequestRoutesDepartureSearch::setProperties(std::vector<RequestRoutesProperty> const& value)
{
    m_Properties = value;
}
RequestRangeFull RequestRoutesDepartureSearch::getRange() const
{
    return m_Range;
}
void RequestRoutesDepartureSearch::setRange(RequestRangeFull const& value)
{
    m_Range = value;
    m_RangeIsSet = true;
}
bool RequestRoutesDepartureSearch::rangeIsSet() const
{
    return m_RangeIsSet;
}
void RequestRoutesDepartureSearch::unsetRange()
{
    m_RangeIsSet = false;
}


} // namespace org::openapitools::server::model

