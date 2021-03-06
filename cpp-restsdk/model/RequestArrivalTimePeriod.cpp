/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "RequestArrivalTimePeriod.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



RequestArrivalTimePeriod::RequestArrivalTimePeriod()
{
}

RequestArrivalTimePeriod::~RequestArrivalTimePeriod()
{
}

void RequestArrivalTimePeriod::validate()
{
    // TODO: implement validation
}

web::json::value RequestArrivalTimePeriod::toJson() const
{
    web::json::value val = web::json::value::object();

    
    if (m_value == eRequestArrivalTimePeriod::RequestArrivalTimePeriod_WEEKDAY_MORNING) val = web::json::value::string(U(weekday_morning));

    return val;
}

bool RequestArrivalTimePeriod::fromJson(const web::json::value& val)
{
    auto s = val.as_string();

    
    if (s == utility::conversions::to_string_t(weekday_morning)) m_value = eRequestArrivalTimePeriod::RequestArrivalTimePeriod_WEEKDAY_MORNING;
    return true;
}

void RequestArrivalTimePeriod::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    utility::string_t s;

    
    if (m_value == eRequestArrivalTimePeriod::RequestArrivalTimePeriod_WEEKDAY_MORNING) s = utility::conversions::to_string_t(weekday_morning);

    multipart->add(ModelBase::toHttpContent(namePrefix, s));
}

bool RequestArrivalTimePeriod::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    {
        utility::string_t s;
        ok = ModelBase::fromHttpContent(multipart->getContent(namePrefix), s);
        eRequestArrivalTimePeriod v;

        
        if (s == utility::conversions::to_string_t(weekday_morning)) v = eRequestArrivalTimePeriod::RequestArrivalTimePeriod_WEEKDAY_MORNING;

        setValue(v);
    }
    return ok;
}

RequestArrivalTimePeriod::eRequestArrivalTimePeriod RequestArrivalTimePeriod::getValue() const
{
   return m_value;
}

void RequestArrivalTimePeriod::setValue(RequestArrivalTimePeriod::eRequestArrivalTimePeriod const value)
{
   m_value = value;
}


}
}
}
}


