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
 * ResponseBoundingBox.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBoundingBox_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBoundingBox_H_


#include "../ModelBase.h"

#include "ResponseBox.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseBoundingBox
    : public ModelBase
{
public:
    ResponseBoundingBox();
    virtual ~ResponseBoundingBox();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseBoundingBox members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ResponseBox> getEnvelope() const;
    
    void setEnvelope(const std::shared_ptr<ResponseBox>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseBox>>& getBoxes();
    
    void setBoxes(const std::vector<std::shared_ptr<ResponseBox>>& value);


protected:
    std::shared_ptr<ResponseBox> m_Envelope;
        std::vector<std::shared_ptr<ResponseBox>> m_Boxes;
    };

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBoundingBox_H_ */