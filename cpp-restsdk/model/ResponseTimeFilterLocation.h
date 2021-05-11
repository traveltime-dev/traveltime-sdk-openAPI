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

/*
 * ResponseTimeFilterLocation.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterLocation_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterLocation_H_


#include "../ModelBase.h"

#include "ResponseTimeFilterProperties.h"
#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterLocation
    : public ModelBase
{
public:
    ResponseTimeFilterLocation();
    virtual ~ResponseTimeFilterLocation();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseTimeFilterLocation members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterProperties>>& getProperties();
    bool propertiesIsSet() const;
    void unsetProperties();

    void setProperties(const std::vector<std::shared_ptr<ResponseTimeFilterProperties>>& value);


protected:
    utility::string_t m_Id;
    bool m_IdIsSet;
    std::vector<std::shared_ptr<ResponseTimeFilterProperties>> m_Properties;
    bool m_PropertiesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterLocation_H_ */
