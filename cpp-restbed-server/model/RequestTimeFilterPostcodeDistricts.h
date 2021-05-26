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
 * RequestTimeFilterPostcodeDistricts.h
 *
 * 
 */

#ifndef RequestTimeFilterPostcodeDistricts_H_
#define RequestTimeFilterPostcodeDistricts_H_



#include "RequestTimeFilterPostcodeDistrictsArrivalSearch.h"
#include "RequestTimeFilterPostcodeDistrictsDepartureSearch.h"
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
class  RequestTimeFilterPostcodeDistricts 
{
public:
    RequestTimeFilterPostcodeDistricts();
    virtual ~RequestTimeFilterPostcodeDistricts();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// RequestTimeFilterPostcodeDistricts members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>> getDepartureSearches() const;
    void setDepartureSearches(std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>> getArrivalSearches() const;
    void setArrivalSearches(std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>> value);
protected:
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>> m_Departure_searches;
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>> m_Arrival_searches;
};

}
}
}
}

#endif /* RequestTimeFilterPostcodeDistricts_H_ */
