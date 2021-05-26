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


#include "ResponseTimeFilterResult.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterResult::ResponseTimeFilterResult()
{
    m_Search_id = "";
    
}

void ResponseTimeFilterResult::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterResult::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterResult::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterResult" : pathPrefix;

        
     
    
    /* Locations */ {
        const std::vector<ResponseTimeFilterLocation>& value = m_Locations;
        const std::string currentValuePath = _pathPrefix + ".locations";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseTimeFilterLocation& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".locations") && success;
 
                i++;
            }
        }

    }
    
     
    
    /* Unreachable */ {
        const std::vector<std::string>& value = m_Unreachable;
        const std::string currentValuePath = _pathPrefix + ".unreachable";
                
        
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
    

    return success;
}

bool ResponseTimeFilterResult::operator==(const ResponseTimeFilterResult& rhs) const
{
    return
    
    
    (getSearchId() == rhs.getSearchId())
     &&
    
    (getLocations() == rhs.getLocations())
     &&
    
    (getUnreachable() == rhs.getUnreachable())
    
    
    ;
}

bool ResponseTimeFilterResult::operator!=(const ResponseTimeFilterResult& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterResult& o)
{
    j = nlohmann::json();
    j["search_id"] = o.m_Search_id;
    j["locations"] = o.m_Locations;
    j["unreachable"] = o.m_Unreachable;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterResult& o)
{
    j.at("search_id").get_to(o.m_Search_id);
    j.at("locations").get_to(o.m_Locations);
    j.at("unreachable").get_to(o.m_Unreachable);
    
}

std::string ResponseTimeFilterResult::getSearchId() const
{
    return m_Search_id;
}
void ResponseTimeFilterResult::setSearchId(std::string const& value)
{
    m_Search_id = value;
}
std::vector<ResponseTimeFilterLocation> ResponseTimeFilterResult::getLocations() const
{
    return m_Locations;
}
void ResponseTimeFilterResult::setLocations(std::vector<ResponseTimeFilterLocation> const& value)
{
    m_Locations = value;
}
std::vector<std::string> ResponseTimeFilterResult::getUnreachable() const
{
    return m_Unreachable;
}
void ResponseTimeFilterResult::setUnreachable(std::vector<std::string> const& value)
{
    m_Unreachable = value;
}


} // namespace org::openapitools::server::model

