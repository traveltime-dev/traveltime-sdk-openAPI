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
 * ResponseTimeMapProperties.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeMapProperties_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeMapProperties_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  ResponseTimeMapProperties
    : public ModelBase
{
public:
    ResponseTimeMapProperties();
    virtual ~ResponseTimeMapProperties();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseTimeMapProperties members

    /// <summary>
    /// 
    /// </summary>
    bool isIsOnlyWalking() const;
    bool isOnlyWalkingIsSet() const;
    void unsetIs_only_walking();

    void setIsOnlyWalking(bool value);


protected:
    bool m_Is_only_walking;
    bool m_Is_only_walkingIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeMapProperties_H_ */
