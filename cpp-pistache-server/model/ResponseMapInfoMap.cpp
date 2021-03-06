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


#include "ResponseMapInfoMap.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseMapInfoMap::ResponseMapInfoMap()
{
    m_Name = "";
    
}

void ResponseMapInfoMap::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseMapInfoMap::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseMapInfoMap::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseMapInfoMap" : pathPrefix;

        
    

    return success;
}

bool ResponseMapInfoMap::operator==(const ResponseMapInfoMap& rhs) const
{
    return
    
    
    (getName() == rhs.getName())
     &&
    
    (getFeatures() == rhs.getFeatures())
    
    
    ;
}

bool ResponseMapInfoMap::operator!=(const ResponseMapInfoMap& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseMapInfoMap& o)
{
    j = nlohmann::json();
    j["name"] = o.m_Name;
    j["features"] = o.m_Features;
    
}

void from_json(const nlohmann::json& j, ResponseMapInfoMap& o)
{
    j.at("name").get_to(o.m_Name);
    j.at("features").get_to(o.m_Features);
    
}

std::string ResponseMapInfoMap::getName() const
{
    return m_Name;
}
void ResponseMapInfoMap::setName(std::string const& value)
{
    m_Name = value;
}
ResponseMapInfoFeatures ResponseMapInfoMap::getFeatures() const
{
    return m_Features;
}
void ResponseMapInfoMap::setFeatures(ResponseMapInfoFeatures const& value)
{
    m_Features = value;
}


} // namespace org::openapitools::server::model

