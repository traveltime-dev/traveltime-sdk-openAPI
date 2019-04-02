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
 * RequestTimeFilterDepartureSearch.h
 *
 * 
 */

#ifndef RequestTimeFilterDepartureSearch_H_
#define RequestTimeFilterDepartureSearch_H_



#include "RequestRangeFull.h"
#include "RequestTimeFilterProperty.h"
#include <string>
#include "RequestTransportation.h"
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterDepartureSearch
{
public:
    RequestTimeFilterDepartureSearch();
    virtual ~RequestTimeFilterDepartureSearch();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// RequestTimeFilterDepartureSearch members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getDepartureLocationId() const;
    void setDepartureLocationId(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getArrivalLocationIds() const;
    void setArrivalLocationIds(std::vector<std::string> value);
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
    std::vector<std::shared_ptr<RequestTimeFilterProperty>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<RequestTimeFilterProperty>> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestRangeFull> getRange() const;
    void setRange(std::shared_ptr<RequestRangeFull> value);

protected:
    std::string m_Id;
    std::string m_Departure_location_id;
    std::vector<std::string> m_Arrival_location_ids;
    std::shared_ptr<RequestTransportation> m_Transportation;
    int32_t m_Travel_time;
    std::string m_Departure_time;
    std::vector<std::shared_ptr<RequestTimeFilterProperty>> m_Properties;
    std::shared_ptr<RequestRangeFull> m_Range;
};

}
}
}
}

#endif /* RequestTimeFilterDepartureSearch_H_ */