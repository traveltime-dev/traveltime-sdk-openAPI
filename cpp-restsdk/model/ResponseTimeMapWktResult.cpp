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



#include "ResponseTimeMapWktResult.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ResponseTimeMapWktResult::ResponseTimeMapWktResult()
{
    m_Search_id = utility::conversions::to_string_t("");
    m_Search_idIsSet = false;
    m_Shape = utility::conversions::to_string_t("");
    m_ShapeIsSet = false;
    m_PropertiesIsSet = false;
}

ResponseTimeMapWktResult::~ResponseTimeMapWktResult()
{
}

void ResponseTimeMapWktResult::validate()
{
    // TODO: implement validation
}

web::json::value ResponseTimeMapWktResult::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Search_idIsSet)
    {
        val[utility::conversions::to_string_t("search_id")] = ModelBase::toJson(m_Search_id);
    }
    if(m_ShapeIsSet)
    {
        val[utility::conversions::to_string_t("shape")] = ModelBase::toJson(m_Shape);
    }
    if(m_PropertiesIsSet)
    {
        val[utility::conversions::to_string_t("properties")] = ModelBase::toJson(m_Properties);
    }

    return val;
}

bool ResponseTimeMapWktResult::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("search_id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("search_id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_search_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_search_id);
            setSearchId(refVal_search_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("shape")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("shape"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_shape;
            ok &= ModelBase::fromJson(fieldValue, refVal_shape);
            setShape(refVal_shape);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("properties")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("properties"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<ResponseTimeMapProperties> refVal_properties;
            ok &= ModelBase::fromJson(fieldValue, refVal_properties);
            setProperties(refVal_properties);
        }
    }
    return ok;
}

void ResponseTimeMapWktResult::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Search_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("search_id"), m_Search_id));
    }
    if(m_ShapeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("shape"), m_Shape));
    }
    if(m_PropertiesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("properties"), m_Properties));
    }
}

bool ResponseTimeMapWktResult::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("search_id")))
    {
        utility::string_t refVal_search_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("search_id")), refVal_search_id );
        setSearchId(refVal_search_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("shape")))
    {
        utility::string_t refVal_shape;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("shape")), refVal_shape );
        setShape(refVal_shape);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("properties")))
    {
        std::shared_ptr<ResponseTimeMapProperties> refVal_properties;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("properties")), refVal_properties );
        setProperties(refVal_properties);
    }
    return ok;
}

utility::string_t ResponseTimeMapWktResult::getSearchId() const
{
    return m_Search_id;
}

void ResponseTimeMapWktResult::setSearchId(const utility::string_t& value)
{
    m_Search_id = value;
    m_Search_idIsSet = true;
}

bool ResponseTimeMapWktResult::searchIdIsSet() const
{
    return m_Search_idIsSet;
}

void ResponseTimeMapWktResult::unsetSearch_id()
{
    m_Search_idIsSet = false;
}
utility::string_t ResponseTimeMapWktResult::getShape() const
{
    return m_Shape;
}

void ResponseTimeMapWktResult::setShape(const utility::string_t& value)
{
    m_Shape = value;
    m_ShapeIsSet = true;
}

bool ResponseTimeMapWktResult::shapeIsSet() const
{
    return m_ShapeIsSet;
}

void ResponseTimeMapWktResult::unsetShape()
{
    m_ShapeIsSet = false;
}
std::shared_ptr<ResponseTimeMapProperties> ResponseTimeMapWktResult::getProperties() const
{
    return m_Properties;
}

void ResponseTimeMapWktResult::setProperties(const std::shared_ptr<ResponseTimeMapProperties>& value)
{
    m_Properties = value;
    m_PropertiesIsSet = true;
}

bool ResponseTimeMapWktResult::propertiesIsSet() const
{
    return m_PropertiesIsSet;
}

void ResponseTimeMapWktResult::unsetProperties()
{
    m_PropertiesIsSet = false;
}
}
}
}
}


