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


#include "ResponseMapInfo.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseMapInfo::ResponseMapInfo()
{
    
}

void ResponseMapInfo::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseMapInfo::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseMapInfo::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseMapInfo" : pathPrefix;

         
    
    /* Maps */ {
        const std::vector<ResponseMapInfoMap>& value = m_Maps;
        const std::string currentValuePath = _pathPrefix + ".maps";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseMapInfoMap& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".maps") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseMapInfo::operator==(const ResponseMapInfo& rhs) const
{
    return
    
    
    (getMaps() == rhs.getMaps())
    
    
    ;
}

bool ResponseMapInfo::operator!=(const ResponseMapInfo& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseMapInfo& o)
{
    j = nlohmann::json();
    j["maps"] = o.m_Maps;
    
}

void from_json(const nlohmann::json& j, ResponseMapInfo& o)
{
    j.at("maps").get_to(o.m_Maps);
    
}

std::vector<ResponseMapInfoMap> ResponseMapInfo::getMaps() const
{
    return m_Maps;
}
void ResponseMapInfo::setMaps(std::vector<ResponseMapInfoMap> const& value)
{
    m_Maps = value;
}


} // namespace org::openapitools::server::model

