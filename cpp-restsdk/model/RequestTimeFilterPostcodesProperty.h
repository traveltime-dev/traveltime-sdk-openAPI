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
 * RequestTimeFilterPostcodesProperty.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterPostcodesProperty_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterPostcodesProperty_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  RequestTimeFilterPostcodesProperty
    : public ModelBase
{
public:
    RequestTimeFilterPostcodesProperty();
    virtual ~RequestTimeFilterPostcodesProperty();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eRequestTimeFilterPostcodesProperty
    {
        RequestTimeFilterPostcodesProperty_TRAVEL_TIME,
        RequestTimeFilterPostcodesProperty_DISTANCE,
    };

    eRequestTimeFilterPostcodesProperty getValue() const;
    void setValue(eRequestTimeFilterPostcodesProperty const value);

    protected:
        eRequestTimeFilterPostcodesProperty m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterPostcodesProperty_H_ */
