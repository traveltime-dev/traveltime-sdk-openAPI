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
 * RequestRoutesArrivalSearch.h
 *
 * 
 */

#ifndef RequestRoutesArrivalSearch_H_
#define RequestRoutesArrivalSearch_H_



#include "RequestRangeFull.h"
#include <string>
#include "RequestRoutesProperty.h"
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
class  RequestRoutesArrivalSearch 
{
public:
    RequestRoutesArrivalSearch();
    virtual ~RequestRoutesArrivalSearch();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// RequestRoutesArrivalSearch members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getDepartureLocationIds() const;
    void setDepartureLocationIds(std::vector<std::string> value);

    /// <summary>
    /// 
    /// </summary>
    std::string getArrivalLocationId() const;
    void setArrivalLocationId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestTransportation> getTransportation() const;
    void setTransportation(std::shared_ptr<RequestTransportation> value);

    /// <summary>
    /// 
    /// </summary>
    std::string getArrivalTime() const;
    void setArrivalTime(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestRoutesProperty>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<RequestRoutesProperty>> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestRangeFull> getRange() const;
    void setRange(std::shared_ptr<RequestRangeFull> value);
protected:
    std::string m_Id;
    std::vector<std::string> m_Departure_location_ids;
    std::string m_Arrival_location_id;
    std::shared_ptr<RequestTransportation> m_Transportation;
    std::string m_Arrival_time;
    std::vector<std::shared_ptr<RequestRoutesProperty>> m_Properties;
    std::shared_ptr<RequestRangeFull> m_Range;
};

}
}
}
}

#endif /* RequestRoutesArrivalSearch_H_ */
