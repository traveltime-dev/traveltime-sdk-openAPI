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
 * RequestTimeFilterFast.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFast_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFast_H_


#include "../ModelBase.h"

#include "RequestTimeFilterFastArrivalSearches.h"
#include "RequestLocation.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  RequestTimeFilterFast
    : public ModelBase
{
public:
    RequestTimeFilterFast();
    virtual ~RequestTimeFilterFast();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// RequestTimeFilterFast members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestLocation>>& getLocations();
    bool locationsIsSet() const;
    void unsetLocations();

    void setLocations(const std::vector<std::shared_ptr<RequestLocation>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestTimeFilterFastArrivalSearches> getArrivalSearches() const;
    bool arrivalSearchesIsSet() const;
    void unsetArrival_searches();

    void setArrivalSearches(const std::shared_ptr<RequestTimeFilterFastArrivalSearches>& value);


protected:
    std::vector<std::shared_ptr<RequestLocation>> m_Locations;
    bool m_LocationsIsSet;
    std::shared_ptr<RequestTimeFilterFastArrivalSearches> m_Arrival_searches;
    bool m_Arrival_searchesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFast_H_ */
