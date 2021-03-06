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

/*
 * ResponseTimeFilterPostcodeSector.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterPostcodeSector_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterPostcodeSector_H_


#include "../ModelBase.h"

#include "ResponseTimeFilterPostcodeSectorProperties.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterPostcodeSector
    : public ModelBase
{
public:
    ResponseTimeFilterPostcodeSector();
    virtual ~ResponseTimeFilterPostcodeSector();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcodeSector members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCode() const;
    bool codeIsSet() const;
    void unsetCode();

    void setCode(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ResponseTimeFilterPostcodeSectorProperties> getProperties() const;
    bool propertiesIsSet() const;
    void unsetProperties();

    void setProperties(const std::shared_ptr<ResponseTimeFilterPostcodeSectorProperties>& value);


protected:
    utility::string_t m_Code;
    bool m_CodeIsSet;
    std::shared_ptr<ResponseTimeFilterPostcodeSectorProperties> m_Properties;
    bool m_PropertiesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterPostcodeSector_H_ */
