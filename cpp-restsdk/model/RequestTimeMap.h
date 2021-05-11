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
 * RequestTimeMap.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeMap_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeMap_H_


#include "../ModelBase.h"

#include "RequestTimeMapDepartureSearch.h"
#include "RequestUnionOnIntersection.h"
#include "RequestTimeMapArrivalSearch.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  RequestTimeMap
    : public ModelBase
{
public:
    RequestTimeMap();
    virtual ~RequestTimeMap();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// RequestTimeMap members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>>& getDepartureSearches();
    bool departureSearchesIsSet() const;
    void unsetDeparture_searches();

    void setDepartureSearches(const std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>>& getArrivalSearches();
    bool arrivalSearchesIsSet() const;
    void unsetArrival_searches();

    void setArrivalSearches(const std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestUnionOnIntersection>>& getUnions();
    bool unionsIsSet() const;
    void unsetUnions();

    void setUnions(const std::vector<std::shared_ptr<RequestUnionOnIntersection>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestUnionOnIntersection>>& getIntersections();
    bool intersectionsIsSet() const;
    void unsetIntersections();

    void setIntersections(const std::vector<std::shared_ptr<RequestUnionOnIntersection>>& value);


protected:
    std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>> m_Departure_searches;
    bool m_Departure_searchesIsSet;
    std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>> m_Arrival_searches;
    bool m_Arrival_searchesIsSet;
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> m_Unions;
    bool m_UnionsIsSet;
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> m_Intersections;
    bool m_IntersectionsIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeMap_H_ */
