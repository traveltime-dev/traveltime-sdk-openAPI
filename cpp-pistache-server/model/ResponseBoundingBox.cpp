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


#include "ResponseBoundingBox.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseBoundingBox::ResponseBoundingBox()
{
    
}

void ResponseBoundingBox::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseBoundingBox::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseBoundingBox::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseBoundingBox" : pathPrefix;

        
     
    
    /* Boxes */ {
        const std::vector<ResponseBox>& value = m_Boxes;
        const std::string currentValuePath = _pathPrefix + ".boxes";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseBox& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".boxes") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseBoundingBox::operator==(const ResponseBoundingBox& rhs) const
{
    return
    
    
    (getEnvelope() == rhs.getEnvelope())
     &&
    
    (getBoxes() == rhs.getBoxes())
    
    
    ;
}

bool ResponseBoundingBox::operator!=(const ResponseBoundingBox& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseBoundingBox& o)
{
    j = nlohmann::json();
    j["envelope"] = o.m_Envelope;
    j["boxes"] = o.m_Boxes;
    
}

void from_json(const nlohmann::json& j, ResponseBoundingBox& o)
{
    j.at("envelope").get_to(o.m_Envelope);
    j.at("boxes").get_to(o.m_Boxes);
    
}

ResponseBox ResponseBoundingBox::getEnvelope() const
{
    return m_Envelope;
}
void ResponseBoundingBox::setEnvelope(ResponseBox const& value)
{
    m_Envelope = value;
}
std::vector<ResponseBox> ResponseBoundingBox::getBoxes() const
{
    return m_Boxes;
}
void ResponseBoundingBox::setBoxes(std::vector<ResponseBox> const& value)
{
    m_Boxes = value;
}


} // namespace org::openapitools::server::model

