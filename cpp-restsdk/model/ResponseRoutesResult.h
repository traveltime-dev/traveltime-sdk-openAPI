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
 * ResponseRoutesResult.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseRoutesResult_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseRoutesResult_H_


#include "../ModelBase.h"

#include "ResponseRoutesLocation.h"
#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseRoutesResult
    : public ModelBase
{
public:
    ResponseRoutesResult();
    virtual ~ResponseRoutesResult();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseRoutesResult members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getSearchId() const;
    
    void setSearchId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseRoutesLocation>>& getLocations();
    
    void setLocations(const std::vector<std::shared_ptr<ResponseRoutesLocation>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<utility::string_t>& getUnreachable();
    
    void setUnreachable(const std::vector<utility::string_t>& value);


protected:
    utility::string_t m_Search_id;
        std::vector<std::shared_ptr<ResponseRoutesLocation>> m_Locations;
        std::vector<utility::string_t> m_Unreachable;
    };

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseRoutesResult_H_ */