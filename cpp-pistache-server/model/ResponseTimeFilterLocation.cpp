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


#include "ResponseTimeFilterLocation.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterLocation::ResponseTimeFilterLocation()
{
    m_Id = "";
    
}

void ResponseTimeFilterLocation::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterLocation::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterLocation::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterLocation" : pathPrefix;

        
     
    
    /* Properties */ {
        const std::vector<ResponseTimeFilterProperties>& value = m_Properties;
        const std::string currentValuePath = _pathPrefix + ".properties";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseTimeFilterProperties& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".properties") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseTimeFilterLocation::operator==(const ResponseTimeFilterLocation& rhs) const
{
    return
    
    
    (getId() == rhs.getId())
     &&
    
    (getProperties() == rhs.getProperties())
    
    
    ;
}

bool ResponseTimeFilterLocation::operator!=(const ResponseTimeFilterLocation& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterLocation& o)
{
    j = nlohmann::json();
    j["id"] = o.m_Id;
    j["properties"] = o.m_Properties;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterLocation& o)
{
    j.at("id").get_to(o.m_Id);
    j.at("properties").get_to(o.m_Properties);
    
}

std::string ResponseTimeFilterLocation::getId() const
{
    return m_Id;
}
void ResponseTimeFilterLocation::setId(std::string const& value)
{
    m_Id = value;
}
std::vector<ResponseTimeFilterProperties> ResponseTimeFilterLocation::getProperties() const
{
    return m_Properties;
}
void ResponseTimeFilterLocation::setProperties(std::vector<ResponseTimeFilterProperties> const& value)
{
    m_Properties = value;
}


} // namespace org::openapitools::server::model

