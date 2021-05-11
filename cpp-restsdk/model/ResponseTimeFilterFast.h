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
 * ResponseTimeFilterFast.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFast_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFast_H_


#include "../ModelBase.h"

#include "ResponseTimeFilterFastResult.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterFast
    : public ModelBase
{
public:
    ResponseTimeFilterFast();
    virtual ~ResponseTimeFilterFast();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseTimeFilterFast members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterFastResult>>& getResults();
    bool resultsIsSet() const;
    void unsetResults();

    void setResults(const std::vector<std::shared_ptr<ResponseTimeFilterFastResult>>& value);


protected:
    std::vector<std::shared_ptr<ResponseTimeFilterFastResult>> m_Results;
    bool m_ResultsIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseTimeFilterFast_H_ */
