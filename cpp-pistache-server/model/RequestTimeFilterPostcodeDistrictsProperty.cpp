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


#include "RequestTimeFilterPostcodeDistrictsProperty.h"
#include "Helpers.h"
#include <stdexcept>
#include <sstream>

namespace org::openapitools::server::model
{

RequestTimeFilterPostcodeDistrictsProperty::RequestTimeFilterPostcodeDistrictsProperty()
{
    
}

void RequestTimeFilterPostcodeDistrictsProperty::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestTimeFilterPostcodeDistrictsProperty::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestTimeFilterPostcodeDistrictsProperty::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestTimeFilterPostcodeDistrictsProperty" : pathPrefix;

    
    if (m_value == RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::INVALID_VALUE_OPENAPI_GENERATED)
    {
        success = false;
        msg << _pathPrefix << ": has no value;";
    }

    return success;
}

bool RequestTimeFilterPostcodeDistrictsProperty::operator==(const RequestTimeFilterPostcodeDistrictsProperty& rhs) const
{
    return
    getValue() == rhs.getValue()
    
    ;
}

bool RequestTimeFilterPostcodeDistrictsProperty::operator!=(const RequestTimeFilterPostcodeDistrictsProperty& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestTimeFilterPostcodeDistrictsProperty& o)
{
    j = nlohmann::json();
    
    switch (o.getValue())
    {
        case RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::INVALID_VALUE_OPENAPI_GENERATED:
            j = "INVALID_VALUE_OPENAPI_GENERATED";
            break;
        case RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE:
            j = "travel_time_reachable";
            break;
        case RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL:
            j = "travel_time_all";
            break;
        case RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::COVERAGE:
            j = "coverage";
            break;
    }
}

void from_json(const nlohmann::json& j, RequestTimeFilterPostcodeDistrictsProperty& o)
{
    
    auto s = j.get<std::string>();
    if (s == "travel_time_reachable") {
     o.setValue(RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE);
    } 
    else if (s == "travel_time_all") {
     o.setValue(RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL);
    } 
    else if (s == "coverage") {
     o.setValue(RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty::COVERAGE);
    }  else {
     std::stringstream ss;
     ss << "Unexpected value " << s << " in json"
        << " cannot be converted to enum of type"
        << " RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty";
     throw std::invalid_argument(ss.str());
    } 

}

RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty RequestTimeFilterPostcodeDistrictsProperty::getValue() const
{
    return m_value;
}
void RequestTimeFilterPostcodeDistrictsProperty::setValue(RequestTimeFilterPostcodeDistrictsProperty::eRequestTimeFilterPostcodeDistrictsProperty value)
{
    m_value = value;
}

} // namespace org::openapitools::server::model

