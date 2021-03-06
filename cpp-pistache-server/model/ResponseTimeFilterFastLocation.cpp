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


#include "ResponseTimeFilterFastLocation.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterFastLocation::ResponseTimeFilterFastLocation()
{
    m_Id = "";
    
}

void ResponseTimeFilterFastLocation::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterFastLocation::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterFastLocation::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterFastLocation" : pathPrefix;

        
     
    
    /* Properties */ {
        const std::vector<ResponseTimeFilterFastProperties>& value = m_Properties;
        const std::string currentValuePath = _pathPrefix + ".properties";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseTimeFilterFastProperties& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".properties") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseTimeFilterFastLocation::operator==(const ResponseTimeFilterFastLocation& rhs) const
{
    return
    
    
    (getId() == rhs.getId())
     &&
    
    (getProperties() == rhs.getProperties())
    
    
    ;
}

bool ResponseTimeFilterFastLocation::operator!=(const ResponseTimeFilterFastLocation& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterFastLocation& o)
{
    j = nlohmann::json();
    j["id"] = o.m_Id;
    j["properties"] = o.m_Properties;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterFastLocation& o)
{
    j.at("id").get_to(o.m_Id);
    j.at("properties").get_to(o.m_Properties);
    
}

std::string ResponseTimeFilterFastLocation::getId() const
{
    return m_Id;
}
void ResponseTimeFilterFastLocation::setId(std::string const& value)
{
    m_Id = value;
}
std::vector<ResponseTimeFilterFastProperties> ResponseTimeFilterFastLocation::getProperties() const
{
    return m_Properties;
}
void ResponseTimeFilterFastLocation::setProperties(std::vector<ResponseTimeFilterFastProperties> const& value)
{
    m_Properties = value;
}


} // namespace org::openapitools::server::model

