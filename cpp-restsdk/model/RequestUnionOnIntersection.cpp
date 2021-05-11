/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "RequestUnionOnIntersection.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




RequestUnionOnIntersection::RequestUnionOnIntersection()
{
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Search_idsIsSet = false;
}

RequestUnionOnIntersection::~RequestUnionOnIntersection()
{
}

void RequestUnionOnIntersection::validate()
{
    // TODO: implement validation
}

web::json::value RequestUnionOnIntersection::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    if(m_Search_idsIsSet)
    {
        val[utility::conversions::to_string_t("search_ids")] = ModelBase::toJson(m_Search_ids);
    }

    return val;
}

bool RequestUnionOnIntersection::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("search_ids")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("search_ids"));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_search_ids;
            ok &= ModelBase::fromJson(fieldValue, refVal_search_ids);
            setSearchIds(refVal_search_ids);
        }
    }
    return ok;
}

void RequestUnionOnIntersection::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    if(m_Search_idsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("search_ids"), m_Search_ids));
    }
}

bool RequestUnionOnIntersection::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        utility::string_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("id")), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("search_ids")))
    {
        std::vector<utility::string_t> refVal_search_ids;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("search_ids")), refVal_search_ids );
        setSearchIds(refVal_search_ids);
    }
    return ok;
}

utility::string_t RequestUnionOnIntersection::getId() const
{
    return m_Id;
}

void RequestUnionOnIntersection::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool RequestUnionOnIntersection::idIsSet() const
{
    return m_IdIsSet;
}

void RequestUnionOnIntersection::unsetId()
{
    m_IdIsSet = false;
}
std::vector<utility::string_t>& RequestUnionOnIntersection::getSearchIds()
{
    return m_Search_ids;
}

void RequestUnionOnIntersection::setSearchIds(const std::vector<utility::string_t>& value)
{
    m_Search_ids = value;
    m_Search_idsIsSet = true;
}

bool RequestUnionOnIntersection::searchIdsIsSet() const
{
    return m_Search_idsIsSet;
}

void RequestUnionOnIntersection::unsetSearch_ids()
{
    m_Search_idsIsSet = false;
}
}
}
}
}


