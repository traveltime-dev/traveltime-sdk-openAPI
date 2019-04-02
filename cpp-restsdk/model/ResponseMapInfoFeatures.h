/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.3.4.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ResponseMapInfoFeatures.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseMapInfoFeatures_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseMapInfoFeatures_H_


#include "../ModelBase.h"

#include "ResponseMapInfoFeaturesPublicTransport.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseMapInfoFeatures
    : public ModelBase
{
public:
    ResponseMapInfoFeatures();
    virtual ~ResponseMapInfoFeatures();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseMapInfoFeatures members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ResponseMapInfoFeaturesPublicTransport> getPublicTransport() const;
    bool publicTransportIsSet() const;
    void unsetPublic_transport();

    void setPublicTransport(const std::shared_ptr<ResponseMapInfoFeaturesPublicTransport>& value);

    /// <summary>
    /// 
    /// </summary>
    bool isFares() const;
    
    void setFares(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isPostcodes() const;
    
    void setPostcodes(bool value);


protected:
    std::shared_ptr<ResponseMapInfoFeaturesPublicTransport> m_Public_transport;
    bool m_Public_transportIsSet;
    bool m_Fares;
        bool m_Postcodes;
    };

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseMapInfoFeatures_H_ */