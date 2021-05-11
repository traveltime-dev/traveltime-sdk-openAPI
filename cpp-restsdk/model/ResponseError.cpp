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



#include "ResponseError.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ResponseError::ResponseError()
{
    m_Http_status = 0;
    m_Http_statusIsSet = false;
    m_Error_code = 0;
    m_Error_codeIsSet = false;
    m_Description = utility::conversions::to_string_t("");
    m_DescriptionIsSet = false;
    m_Documentation_link = utility::conversions::to_string_t("");
    m_Documentation_linkIsSet = false;
    m_Additional_infoIsSet = false;
}

ResponseError::~ResponseError()
{
}

void ResponseError::validate()
{
    // TODO: implement validation
}

web::json::value ResponseError::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Http_statusIsSet)
    {
        val[utility::conversions::to_string_t("http_status")] = ModelBase::toJson(m_Http_status);
    }
    if(m_Error_codeIsSet)
    {
        val[utility::conversions::to_string_t("error_code")] = ModelBase::toJson(m_Error_code);
    }
    if(m_DescriptionIsSet)
    {
        val[utility::conversions::to_string_t("description")] = ModelBase::toJson(m_Description);
    }
    if(m_Documentation_linkIsSet)
    {
        val[utility::conversions::to_string_t("documentation_link")] = ModelBase::toJson(m_Documentation_link);
    }
    if(m_Additional_infoIsSet)
    {
        val[utility::conversions::to_string_t("additional_info")] = ModelBase::toJson(m_Additional_info);
    }

    return val;
}

bool ResponseError::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("http_status")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("http_status"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_http_status;
            ok &= ModelBase::fromJson(fieldValue, refVal_http_status);
            setHttpStatus(refVal_http_status);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("error_code")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("error_code"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_error_code;
            ok &= ModelBase::fromJson(fieldValue, refVal_error_code);
            setErrorCode(refVal_error_code);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("description")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("description"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_description;
            ok &= ModelBase::fromJson(fieldValue, refVal_description);
            setDescription(refVal_description);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("documentation_link")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("documentation_link"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_documentation_link;
            ok &= ModelBase::fromJson(fieldValue, refVal_documentation_link);
            setDocumentationLink(refVal_documentation_link);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("additional_info")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("additional_info"));
        if(!fieldValue.is_null())
        {
            std::map<utility::string_t, std::vector<utility::string_t>> refVal_additional_info;
            ok &= ModelBase::fromJson(fieldValue, refVal_additional_info);
            setAdditionalInfo(refVal_additional_info);
        }
    }
    return ok;
}

void ResponseError::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Http_statusIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("http_status"), m_Http_status));
    }
    if(m_Error_codeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("error_code"), m_Error_code));
    }
    if(m_DescriptionIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("description"), m_Description));
    }
    if(m_Documentation_linkIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("documentation_link"), m_Documentation_link));
    }
    if(m_Additional_infoIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("additional_info"), m_Additional_info));
    }
}

bool ResponseError::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("http_status")))
    {
        int32_t refVal_http_status;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("http_status")), refVal_http_status );
        setHttpStatus(refVal_http_status);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("error_code")))
    {
        int32_t refVal_error_code;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("error_code")), refVal_error_code );
        setErrorCode(refVal_error_code);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("description")))
    {
        utility::string_t refVal_description;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("description")), refVal_description );
        setDescription(refVal_description);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("documentation_link")))
    {
        utility::string_t refVal_documentation_link;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("documentation_link")), refVal_documentation_link );
        setDocumentationLink(refVal_documentation_link);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("additional_info")))
    {
        std::map<utility::string_t, std::vector<utility::string_t>> refVal_additional_info;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("additional_info")), refVal_additional_info );
        setAdditionalInfo(refVal_additional_info);
    }
    return ok;
}

int32_t ResponseError::getHttpStatus() const
{
    return m_Http_status;
}

void ResponseError::setHttpStatus(int32_t value)
{
    m_Http_status = value;
    m_Http_statusIsSet = true;
}

bool ResponseError::httpStatusIsSet() const
{
    return m_Http_statusIsSet;
}

void ResponseError::unsetHttp_status()
{
    m_Http_statusIsSet = false;
}
int32_t ResponseError::getErrorCode() const
{
    return m_Error_code;
}

void ResponseError::setErrorCode(int32_t value)
{
    m_Error_code = value;
    m_Error_codeIsSet = true;
}

bool ResponseError::errorCodeIsSet() const
{
    return m_Error_codeIsSet;
}

void ResponseError::unsetError_code()
{
    m_Error_codeIsSet = false;
}
utility::string_t ResponseError::getDescription() const
{
    return m_Description;
}

void ResponseError::setDescription(const utility::string_t& value)
{
    m_Description = value;
    m_DescriptionIsSet = true;
}

bool ResponseError::descriptionIsSet() const
{
    return m_DescriptionIsSet;
}

void ResponseError::unsetDescription()
{
    m_DescriptionIsSet = false;
}
utility::string_t ResponseError::getDocumentationLink() const
{
    return m_Documentation_link;
}

void ResponseError::setDocumentationLink(const utility::string_t& value)
{
    m_Documentation_link = value;
    m_Documentation_linkIsSet = true;
}

bool ResponseError::documentationLinkIsSet() const
{
    return m_Documentation_linkIsSet;
}

void ResponseError::unsetDocumentation_link()
{
    m_Documentation_linkIsSet = false;
}
std::map<utility::string_t, std::vector<utility::string_t>>& ResponseError::getAdditionalInfo()
{
    return m_Additional_info;
}

void ResponseError::setAdditionalInfo(const std::map<utility::string_t, std::vector<utility::string_t>>& value)
{
    m_Additional_info = value;
    m_Additional_infoIsSet = true;
}

bool ResponseError::additionalInfoIsSet() const
{
    return m_Additional_infoIsSet;
}

void ResponseError::unsetAdditional_info()
{
    m_Additional_infoIsSet = false;
}
}
}
}
}


