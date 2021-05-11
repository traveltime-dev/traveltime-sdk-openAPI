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


#include "ResponseMapInfoFeaturesPublicTransport.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseMapInfoFeaturesPublicTransport::ResponseMapInfoFeaturesPublicTransport()
{
    m_Date_start = "";
    m_Date_end = "";
    
}

void ResponseMapInfoFeaturesPublicTransport::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseMapInfoFeaturesPublicTransport::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseMapInfoFeaturesPublicTransport::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseMapInfoFeaturesPublicTransport" : pathPrefix;

        
    

    return success;
}

bool ResponseMapInfoFeaturesPublicTransport::operator==(const ResponseMapInfoFeaturesPublicTransport& rhs) const
{
    return
    
    
    (getDateStart() == rhs.getDateStart())
     &&
    
    (getDateEnd() == rhs.getDateEnd())
    
    
    ;
}

bool ResponseMapInfoFeaturesPublicTransport::operator!=(const ResponseMapInfoFeaturesPublicTransport& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseMapInfoFeaturesPublicTransport& o)
{
    j = nlohmann::json();
    j["date_start"] = o.m_Date_start;
    j["date_end"] = o.m_Date_end;
    
}

void from_json(const nlohmann::json& j, ResponseMapInfoFeaturesPublicTransport& o)
{
    j.at("date_start").get_to(o.m_Date_start);
    j.at("date_end").get_to(o.m_Date_end);
    
}

std::string ResponseMapInfoFeaturesPublicTransport::getDateStart() const
{
    return m_Date_start;
}
void ResponseMapInfoFeaturesPublicTransport::setDateStart(std::string const& value)
{
    m_Date_start = value;
}
std::string ResponseMapInfoFeaturesPublicTransport::getDateEnd() const
{
    return m_Date_end;
}
void ResponseMapInfoFeaturesPublicTransport::setDateEnd(std::string const& value)
{
    m_Date_end = value;
}


} // namespace org::openapitools::server::model

