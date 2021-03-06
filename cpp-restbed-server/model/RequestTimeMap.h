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
 * RequestTimeMap.h
 *
 * 
 */

#ifndef RequestTimeMap_H_
#define RequestTimeMap_H_



#include "RequestTimeMapDepartureSearch.h"
#include "RequestUnionOnIntersection.h"
#include "RequestTimeMapArrivalSearch.h"
#include <vector>
#include <memory>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  RequestTimeMap 
{
public:
    RequestTimeMap();
    virtual ~RequestTimeMap();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// RequestTimeMap members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>> getDepartureSearches() const;
    void setDepartureSearches(std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>> getArrivalSearches() const;
    void setArrivalSearches(std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> getUnions() const;
    void setUnions(std::vector<std::shared_ptr<RequestUnionOnIntersection>> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> getIntersections() const;
    void setIntersections(std::vector<std::shared_ptr<RequestUnionOnIntersection>> value);
protected:
    std::vector<std::shared_ptr<RequestTimeMapDepartureSearch>> m_Departure_searches;
    std::vector<std::shared_ptr<RequestTimeMapArrivalSearch>> m_Arrival_searches;
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> m_Unions;
    std::vector<std::shared_ptr<RequestUnionOnIntersection>> m_Intersections;
};

}
}
}
}

#endif /* RequestTimeMap_H_ */
