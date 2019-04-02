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
 * RequestTimeFilter.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilter_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilter_H_


#include "../ModelBase.h"

#include "RequestTimeFilterArrivalSearch.h"
#include "RequestLocation.h"
#include <vector>
#include "RequestTimeFilterDepartureSearch.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  RequestTimeFilter
    : public ModelBase
{
public:
    RequestTimeFilter();
    virtual ~RequestTimeFilter();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// RequestTimeFilter members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestLocation>>& getLocations();
    
    void setLocations(const std::vector<std::shared_ptr<RequestLocation>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterDepartureSearch>>& getDepartureSearches();
    bool departureSearchesIsSet() const;
    void unsetDeparture_searches();

    void setDepartureSearches(const std::vector<std::shared_ptr<RequestTimeFilterDepartureSearch>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterArrivalSearch>>& getArrivalSearches();
    bool arrivalSearchesIsSet() const;
    void unsetArrival_searches();

    void setArrivalSearches(const std::vector<std::shared_ptr<RequestTimeFilterArrivalSearch>>& value);


protected:
    std::vector<std::shared_ptr<RequestLocation>> m_Locations;
        std::vector<std::shared_ptr<RequestTimeFilterDepartureSearch>> m_Departure_searches;
    bool m_Departure_searchesIsSet;
    std::vector<std::shared_ptr<RequestTimeFilterArrivalSearch>> m_Arrival_searches;
    bool m_Arrival_searchesIsSet;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilter_H_ */