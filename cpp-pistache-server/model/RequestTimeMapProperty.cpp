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


#include "RequestTimeMapProperty.h"
#include "Helpers.h"
#include <stdexcept>
#include <sstream>

namespace org::openapitools::server::model
{

RequestTimeMapProperty::RequestTimeMapProperty()
{
    
}

void RequestTimeMapProperty::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestTimeMapProperty::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestTimeMapProperty::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestTimeMapProperty" : pathPrefix;

    
    if (m_value == RequestTimeMapProperty::eRequestTimeMapProperty::INVALID_VALUE_OPENAPI_GENERATED)
    {
        success = false;
        msg << _pathPrefix << ": has no value;";
    }

    return success;
}

bool RequestTimeMapProperty::operator==(const RequestTimeMapProperty& rhs) const
{
    return
    getValue() == rhs.getValue()
    
    ;
}

bool RequestTimeMapProperty::operator!=(const RequestTimeMapProperty& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestTimeMapProperty& o)
{
    j = nlohmann::json();
    
    switch (o.getValue())
    {
        case RequestTimeMapProperty::eRequestTimeMapProperty::INVALID_VALUE_OPENAPI_GENERATED:
            j = "INVALID_VALUE_OPENAPI_GENERATED";
            break;
        case RequestTimeMapProperty::eRequestTimeMapProperty::IS_ONLY_WALKING:
            j = "is_only_walking";
            break;
    }
}

void from_json(const nlohmann::json& j, RequestTimeMapProperty& o)
{
    
    auto s = j.get<std::string>();
    if (s == "is_only_walking") {
     o.setValue(RequestTimeMapProperty::eRequestTimeMapProperty::IS_ONLY_WALKING);
    }  else {
     std::stringstream ss;
     ss << "Unexpected value " << s << " in json"
        << " cannot be converted to enum of type"
        << " RequestTimeMapProperty::eRequestTimeMapProperty";
     throw std::invalid_argument(ss.str());
    } 

}

RequestTimeMapProperty::eRequestTimeMapProperty RequestTimeMapProperty::getValue() const
{
    return m_value;
}
void RequestTimeMapProperty::setValue(RequestTimeMapProperty::eRequestTimeMapProperty value)
{
    m_value = value;
}

} // namespace org::openapitools::server::model

