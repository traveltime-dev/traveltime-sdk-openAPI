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



#include "RequestLevelOfDetail.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




RequestLevelOfDetail::RequestLevelOfDetail()
{
    m_Scale_type = utility::conversions::to_string_t("");
    m_Scale_typeIsSet = false;
    m_Level = utility::conversions::to_string_t("");
    m_LevelIsSet = false;
}

RequestLevelOfDetail::~RequestLevelOfDetail()
{
}

void RequestLevelOfDetail::validate()
{
    // TODO: implement validation
}

web::json::value RequestLevelOfDetail::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Scale_typeIsSet)
    {
        val[utility::conversions::to_string_t("scale_type")] = ModelBase::toJson(m_Scale_type);
    }
    if(m_LevelIsSet)
    {
        val[utility::conversions::to_string_t("level")] = ModelBase::toJson(m_Level);
    }

    return val;
}

bool RequestLevelOfDetail::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("scale_type")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("scale_type"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_scale_type;
            ok &= ModelBase::fromJson(fieldValue, refVal_scale_type);
            setScaleType(refVal_scale_type);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("level")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("level"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_level;
            ok &= ModelBase::fromJson(fieldValue, refVal_level);
            setLevel(refVal_level);
        }
    }
    return ok;
}

void RequestLevelOfDetail::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Scale_typeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("scale_type"), m_Scale_type));
    }
    if(m_LevelIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("level"), m_Level));
    }
}

bool RequestLevelOfDetail::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("scale_type")))
    {
        utility::string_t refVal_scale_type;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("scale_type")), refVal_scale_type );
        setScaleType(refVal_scale_type);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("level")))
    {
        utility::string_t refVal_level;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("level")), refVal_level );
        setLevel(refVal_level);
    }
    return ok;
}

utility::string_t RequestLevelOfDetail::getScaleType() const
{
    return m_Scale_type;
}

void RequestLevelOfDetail::setScaleType(const utility::string_t& value)
{
    m_Scale_type = value;
    m_Scale_typeIsSet = true;
}

bool RequestLevelOfDetail::scaleTypeIsSet() const
{
    return m_Scale_typeIsSet;
}

void RequestLevelOfDetail::unsetScale_type()
{
    m_Scale_typeIsSet = false;
}
utility::string_t RequestLevelOfDetail::getLevel() const
{
    return m_Level;
}

void RequestLevelOfDetail::setLevel(const utility::string_t& value)
{
    m_Level = value;
    m_LevelIsSet = true;
}

bool RequestLevelOfDetail::levelIsSet() const
{
    return m_LevelIsSet;
}

void RequestLevelOfDetail::unsetLevel()
{
    m_LevelIsSet = false;
}
}
}
}
}


