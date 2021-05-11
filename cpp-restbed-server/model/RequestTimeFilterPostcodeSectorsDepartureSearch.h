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
 * RequestTimeFilterPostcodeSectorsDepartureSearch.h
 *
 * 
 */

#ifndef RequestTimeFilterPostcodeSectorsDepartureSearch_H_
#define RequestTimeFilterPostcodeSectorsDepartureSearch_H_



#include "RequestTimeFilterPostcodeSectorsProperty.h"
#include "RequestRangeFull.h"
#include <string>
#include "RequestTransportation.h"
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
class  RequestTimeFilterPostcodeSectorsDepartureSearch 
{
public:
    RequestTimeFilterPostcodeSectorsDepartureSearch();
    virtual ~RequestTimeFilterPostcodeSectorsDepartureSearch();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// RequestTimeFilterPostcodeSectorsDepartureSearch members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestTransportation> getTransportation() const;
    void setTransportation(std::shared_ptr<RequestTransportation> value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTravelTime() const;
    void setTravelTime(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getDepartureTime() const;
    void setDepartureTime(std::string value);

    /// <summary>
    /// 
    /// </summary>
    double getReachablePostcodesThreshold() const;
    void setReachablePostcodesThreshold(double value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeSectorsProperty>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<RequestTimeFilterPostcodeSectorsProperty>> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestRangeFull> getRange() const;
    void setRange(std::shared_ptr<RequestRangeFull> value);
protected:
    std::string m_Id;
    std::shared_ptr<RequestTransportation> m_Transportation;
    int32_t m_Travel_time;
    std::string m_Departure_time;
    double m_Reachable_postcodes_threshold;
    std::vector<std::shared_ptr<RequestTimeFilterPostcodeSectorsProperty>> m_Properties;
    std::shared_ptr<RequestRangeFull> m_Range;
};

}
}
}
}

#endif /* RequestTimeFilterPostcodeSectorsDepartureSearch_H_ */
