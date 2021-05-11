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


#include "ResponseShape.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseShape::ResponseShape()
{
    
}

void ResponseShape::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseShape::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseShape::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseShape" : pathPrefix;

         
    
    /* Shell */ {
        const std::vector<Coords>& value = m_Shell;
        const std::string currentValuePath = _pathPrefix + ".shell";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const Coords& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".shell") && success;
 
                i++;
            }
        }

    }
    
     
    
    /* Holes */ {
        const std::vector<std::vector<Coords>>& value = m_Holes;
        const std::string currentValuePath = _pathPrefix + ".holes";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const std::vector<Coords>& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const Coords& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".holes") && success;
 
                i++;
            }
        }
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseShape::operator==(const ResponseShape& rhs) const
{
    return
    
    
    (getShell() == rhs.getShell())
     &&
    
    (getHoles() == rhs.getHoles())
    
    
    ;
}

bool ResponseShape::operator!=(const ResponseShape& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseShape& o)
{
    j = nlohmann::json();
    j["shell"] = o.m_Shell;
    j["holes"] = o.m_Holes;
    
}

void from_json(const nlohmann::json& j, ResponseShape& o)
{
    j.at("shell").get_to(o.m_Shell);
    j.at("holes").get_to(o.m_Holes);
    
}

std::vector<Coords> ResponseShape::getShell() const
{
    return m_Shell;
}
void ResponseShape::setShell(std::vector<Coords> const& value)
{
    m_Shell = value;
}
std::vector<std::vector<Coords>> ResponseShape::getHoles() const
{
    return m_Holes;
}
void ResponseShape::setHoles(std::vector<std::vector<Coords>> const& value)
{
    m_Holes = value;
}


} // namespace org::openapitools::server::model

