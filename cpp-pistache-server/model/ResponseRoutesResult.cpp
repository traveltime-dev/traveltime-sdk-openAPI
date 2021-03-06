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


#include "ResponseRoutesResult.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseRoutesResult::ResponseRoutesResult()
{
    m_Search_id = "";
    
}

void ResponseRoutesResult::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseRoutesResult::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseRoutesResult::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseRoutesResult" : pathPrefix;

        
     
    
    /* Locations */ {
        const std::vector<ResponseRoutesLocation>& value = m_Locations;
        const std::string currentValuePath = _pathPrefix + ".locations";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseRoutesLocation& value : value)
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

bool ResponseRoutesResult::operator==(const ResponseRoutesResult& rhs) const
{
    return
    
    
    (getSearchId() == rhs.getSearchId())
     &&
    
    (getLocations() == rhs.getLocations())
     &&
    
    (getUnreachable() == rhs.getUnreachable())
    
    
    ;
}

bool ResponseRoutesResult::operator!=(const ResponseRoutesResult& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseRoutesResult& o)
{
    j = nlohmann::json();
    j["search_id"] = o.m_Search_id;
    j["locations"] = o.m_Locations;
    j["unreachable"] = o.m_Unreachable;
    
}

void from_json(const nlohmann::json& j, ResponseRoutesResult& o)
{
    j.at("search_id").get_to(o.m_Search_id);
    j.at("locations").get_to(o.m_Locations);
    j.at("unreachable").get_to(o.m_Unreachable);
    
}

std::string ResponseRoutesResult::getSearchId() const
{
    return m_Search_id;
}
void ResponseRoutesResult::setSearchId(std::string const& value)
{
    m_Search_id = value;
}
std::vector<ResponseRoutesLocation> ResponseRoutesResult::getLocations() const
{
    return m_Locations;
}
void ResponseRoutesResult::setLocations(std::vector<ResponseRoutesLocation> const& value)
{
    m_Locations = value;
}
std::vector<std::string> ResponseRoutesResult::getUnreachable() const
{
    return m_Unreachable;
}
void ResponseRoutesResult::setUnreachable(std::vector<std::string> const& value)
{
    m_Unreachable = value;
}


} // namespace org::openapitools::server::model

