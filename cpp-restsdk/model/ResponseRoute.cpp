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



#include "ResponseRoute.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ResponseRoute::ResponseRoute()
{
    m_Departure_time = utility::datetime();
    m_Departure_timeIsSet = false;
    m_Arrival_time = utility::datetime();
    m_Arrival_timeIsSet = false;
    m_PartsIsSet = false;
}

ResponseRoute::~ResponseRoute()
{
}

void ResponseRoute::validate()
{
    // TODO: implement validation
}

web::json::value ResponseRoute::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Departure_timeIsSet)
    {
        val[utility::conversions::to_string_t("departure_time")] = ModelBase::toJson(m_Departure_time);
    }
    if(m_Arrival_timeIsSet)
    {
        val[utility::conversions::to_string_t("arrival_time")] = ModelBase::toJson(m_Arrival_time);
    }
    if(m_PartsIsSet)
    {
        val[utility::conversions::to_string_t("parts")] = ModelBase::toJson(m_Parts);
    }

    return val;
}

bool ResponseRoute::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("departure_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departure_time"));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_departure_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_departure_time);
            setDepartureTime(refVal_departure_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("arrival_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("arrival_time"));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_arrival_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_arrival_time);
            setArrivalTime(refVal_arrival_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("parts")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("parts"));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<ResponseRoutePart>> refVal_parts;
            ok &= ModelBase::fromJson(fieldValue, refVal_parts);
            setParts(refVal_parts);
        }
    }
    return ok;
}

void ResponseRoute::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Departure_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_time"), m_Departure_time));
    }
    if(m_Arrival_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_time"), m_Arrival_time));
    }
    if(m_PartsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("parts"), m_Parts));
    }
}

bool ResponseRoute::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("departure_time")))
    {
        utility::datetime refVal_departure_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_time")), refVal_departure_time );
        setDepartureTime(refVal_departure_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("arrival_time")))
    {
        utility::datetime refVal_arrival_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_time")), refVal_arrival_time );
        setArrivalTime(refVal_arrival_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("parts")))
    {
        std::vector<std::shared_ptr<ResponseRoutePart>> refVal_parts;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("parts")), refVal_parts );
        setParts(refVal_parts);
    }
    return ok;
}

utility::datetime ResponseRoute::getDepartureTime() const
{
    return m_Departure_time;
}

void ResponseRoute::setDepartureTime(const utility::datetime& value)
{
    m_Departure_time = value;
    m_Departure_timeIsSet = true;
}

bool ResponseRoute::departureTimeIsSet() const
{
    return m_Departure_timeIsSet;
}

void ResponseRoute::unsetDeparture_time()
{
    m_Departure_timeIsSet = false;
}
utility::datetime ResponseRoute::getArrivalTime() const
{
    return m_Arrival_time;
}

void ResponseRoute::setArrivalTime(const utility::datetime& value)
{
    m_Arrival_time = value;
    m_Arrival_timeIsSet = true;
}

bool ResponseRoute::arrivalTimeIsSet() const
{
    return m_Arrival_timeIsSet;
}

void ResponseRoute::unsetArrival_time()
{
    m_Arrival_timeIsSet = false;
}
std::vector<std::shared_ptr<ResponseRoutePart>>& ResponseRoute::getParts()
{
    return m_Parts;
}

void ResponseRoute::setParts(const std::vector<std::shared_ptr<ResponseRoutePart>>& value)
{
    m_Parts = value;
    m_PartsIsSet = true;
}

bool ResponseRoute::partsIsSet() const
{
    return m_PartsIsSet;
}

void ResponseRoute::unsetParts()
{
    m_PartsIsSet = false;
}
}
}
}
}


