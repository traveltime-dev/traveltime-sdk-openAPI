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


#include "RequestLevelOfDetail.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

RequestLevelOfDetail::RequestLevelOfDetail()
{
    m_Scale_type = "";
    m_Level = "";
    
}

void RequestLevelOfDetail::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestLevelOfDetail::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestLevelOfDetail::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestLevelOfDetail" : pathPrefix;

        
    

    return success;
}

bool RequestLevelOfDetail::operator==(const RequestLevelOfDetail& rhs) const
{
    return
    
    
    (getScaleType() == rhs.getScaleType())
     &&
    
    (getLevel() == rhs.getLevel())
    
    
    ;
}

bool RequestLevelOfDetail::operator!=(const RequestLevelOfDetail& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestLevelOfDetail& o)
{
    j = nlohmann::json();
    j["scale_type"] = o.m_Scale_type;
    j["level"] = o.m_Level;
    
}

void from_json(const nlohmann::json& j, RequestLevelOfDetail& o)
{
    j.at("scale_type").get_to(o.m_Scale_type);
    j.at("level").get_to(o.m_Level);
    
}

std::string RequestLevelOfDetail::getScaleType() const
{
    return m_Scale_type;
}
void RequestLevelOfDetail::setScaleType(std::string const& value)
{
    m_Scale_type = value;
}
std::string RequestLevelOfDetail::getLevel() const
{
    return m_Level;
}
void RequestLevelOfDetail::setLevel(std::string const& value)
{
    m_Level = value;
}


} // namespace org::openapitools::server::model

