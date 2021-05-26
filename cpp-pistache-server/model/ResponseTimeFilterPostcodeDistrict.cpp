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


#include "ResponseTimeFilterPostcodeDistrict.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterPostcodeDistrict::ResponseTimeFilterPostcodeDistrict()
{
    m_Code = "";
    
}

void ResponseTimeFilterPostcodeDistrict::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterPostcodeDistrict::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterPostcodeDistrict::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterPostcodeDistrict" : pathPrefix;

        
    

    return success;
}

bool ResponseTimeFilterPostcodeDistrict::operator==(const ResponseTimeFilterPostcodeDistrict& rhs) const
{
    return
    
    
    (getCode() == rhs.getCode())
     &&
    
    (getProperties() == rhs.getProperties())
    
    
    ;
}

bool ResponseTimeFilterPostcodeDistrict::operator!=(const ResponseTimeFilterPostcodeDistrict& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodeDistrict& o)
{
    j = nlohmann::json();
    j["code"] = o.m_Code;
    j["properties"] = o.m_Properties;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodeDistrict& o)
{
    j.at("code").get_to(o.m_Code);
    j.at("properties").get_to(o.m_Properties);
    
}

std::string ResponseTimeFilterPostcodeDistrict::getCode() const
{
    return m_Code;
}
void ResponseTimeFilterPostcodeDistrict::setCode(std::string const& value)
{
    m_Code = value;
}
ResponseTimeFilterPostcodeDistrictProperties ResponseTimeFilterPostcodeDistrict::getProperties() const
{
    return m_Properties;
}
void ResponseTimeFilterPostcodeDistrict::setProperties(ResponseTimeFilterPostcodeDistrictProperties const& value)
{
    m_Properties = value;
}


} // namespace org::openapitools::server::model

