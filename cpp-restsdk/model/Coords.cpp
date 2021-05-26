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



#include "Coords.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




Coords::Coords()
{
    m_Lat = 0.0;
    m_LatIsSet = false;
    m_Lng = 0.0;
    m_LngIsSet = false;
}

Coords::~Coords()
{
}

void Coords::validate()
{
    // TODO: implement validation
}

web::json::value Coords::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_LatIsSet)
    {
        val[utility::conversions::to_string_t("lat")] = ModelBase::toJson(m_Lat);
    }
    if(m_LngIsSet)
    {
        val[utility::conversions::to_string_t("lng")] = ModelBase::toJson(m_Lng);
    }

    return val;
}

bool Coords::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("lat")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("lat"));
        if(!fieldValue.is_null())
        {
            double refVal_lat;
            ok &= ModelBase::fromJson(fieldValue, refVal_lat);
            setLat(refVal_lat);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("lng")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("lng"));
        if(!fieldValue.is_null())
        {
            double refVal_lng;
            ok &= ModelBase::fromJson(fieldValue, refVal_lng);
            setLng(refVal_lng);
        }
    }
    return ok;
}

void Coords::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_LatIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("lat"), m_Lat));
    }
    if(m_LngIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("lng"), m_Lng));
    }
}

bool Coords::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("lat")))
    {
        double refVal_lat;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("lat")), refVal_lat );
        setLat(refVal_lat);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("lng")))
    {
        double refVal_lng;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("lng")), refVal_lng );
        setLng(refVal_lng);
    }
    return ok;
}

double Coords::getLat() const
{
    return m_Lat;
}

void Coords::setLat(double value)
{
    m_Lat = value;
    m_LatIsSet = true;
}

bool Coords::latIsSet() const
{
    return m_LatIsSet;
}

void Coords::unsetLat()
{
    m_LatIsSet = false;
}
double Coords::getLng() const
{
    return m_Lng;
}

void Coords::setLng(double value)
{
    m_Lng = value;
    m_LngIsSet = true;
}

bool Coords::lngIsSet() const
{
    return m_LngIsSet;
}

void Coords::unsetLng()
{
    m_LngIsSet = false;
}
}
}
}
}


