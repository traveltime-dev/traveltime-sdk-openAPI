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


#include "RequestRoutesProperty.h"
#include "Helpers.h"
#include <stdexcept>
#include <sstream>

namespace org::openapitools::server::model
{

RequestRoutesProperty::RequestRoutesProperty()
{
    
}

void RequestRoutesProperty::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestRoutesProperty::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestRoutesProperty::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestRoutesProperty" : pathPrefix;

    
    if (m_value == RequestRoutesProperty::eRequestRoutesProperty::INVALID_VALUE_OPENAPI_GENERATED)
    {
        success = false;
        msg << _pathPrefix << ": has no value;";
    }

    return success;
}

bool RequestRoutesProperty::operator==(const RequestRoutesProperty& rhs) const
{
    return
    getValue() == rhs.getValue()
    
    ;
}

bool RequestRoutesProperty::operator!=(const RequestRoutesProperty& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestRoutesProperty& o)
{
    j = nlohmann::json();
    
    switch (o.getValue())
    {
        case RequestRoutesProperty::eRequestRoutesProperty::INVALID_VALUE_OPENAPI_GENERATED:
            j = "INVALID_VALUE_OPENAPI_GENERATED";
            break;
        case RequestRoutesProperty::eRequestRoutesProperty::TRAVEL_TIME:
            j = "travel_time";
            break;
        case RequestRoutesProperty::eRequestRoutesProperty::DISTANCE:
            j = "distance";
            break;
        case RequestRoutesProperty::eRequestRoutesProperty::FARES:
            j = "fares";
            break;
        case RequestRoutesProperty::eRequestRoutesProperty::ROUTE:
            j = "route";
            break;
    }
}

void from_json(const nlohmann::json& j, RequestRoutesProperty& o)
{
    
    auto s = j.get<std::string>();
    if (s == "travel_time") {
     o.setValue(RequestRoutesProperty::eRequestRoutesProperty::TRAVEL_TIME);
    } 
    else if (s == "distance") {
     o.setValue(RequestRoutesProperty::eRequestRoutesProperty::DISTANCE);
    } 
    else if (s == "fares") {
     o.setValue(RequestRoutesProperty::eRequestRoutesProperty::FARES);
    } 
    else if (s == "route") {
     o.setValue(RequestRoutesProperty::eRequestRoutesProperty::ROUTE);
    }  else {
     std::stringstream ss;
     ss << "Unexpected value " << s << " in json"
        << " cannot be converted to enum of type"
        << " RequestRoutesProperty::eRequestRoutesProperty";
     throw std::invalid_argument(ss.str());
    } 

}

RequestRoutesProperty::eRequestRoutesProperty RequestRoutesProperty::getValue() const
{
    return m_value;
}
void RequestRoutesProperty::setValue(RequestRoutesProperty::eRequestRoutesProperty value)
{
    m_value = value;
}

} // namespace org::openapitools::server::model

