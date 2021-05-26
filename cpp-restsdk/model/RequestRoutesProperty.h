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
 * RequestRoutesProperty.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestRoutesProperty_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestRoutesProperty_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  RequestRoutesProperty
    : public ModelBase
{
public:
    RequestRoutesProperty();
    virtual ~RequestRoutesProperty();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eRequestRoutesProperty
    {
        RequestRoutesProperty_TRAVEL_TIME,
        RequestRoutesProperty_DISTANCE,
        RequestRoutesProperty_FARES,
        RequestRoutesProperty_ROUTE,
    };

    eRequestRoutesProperty getValue() const;
    void setValue(eRequestRoutesProperty const value);

    protected:
        eRequestRoutesProperty m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestRoutesProperty_H_ */
