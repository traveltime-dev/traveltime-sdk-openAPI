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
 * ResponseTimeFilterFastLocation.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFastLocation_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFastLocation_H_


#include "../ModelBase.h"

#include "ResponseTimeFilterFastProperties.h"
#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterFastLocation
    : public ModelBase
{
public:
    ResponseTimeFilterFastLocation();
    virtual ~ResponseTimeFilterFastLocation();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseTimeFilterFastLocation members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getId() const;
    
    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterFastProperties>>& getProperties();
    
    void setProperties(const std::vector<std::shared_ptr<ResponseTimeFilterFastProperties>>& value);


protected:
    utility::string_t m_Id;
        std::vector<std::shared_ptr<ResponseTimeFilterFastProperties>> m_Properties;
    };

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFastLocation_H_ */