/**
* TravelTime Platform API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * RequestTimeFilterPostcodesArrivalSearch.h
 *
 * 
 */

#ifndef RequestTimeFilterPostcodesArrivalSearch_H_
#define RequestTimeFilterPostcodesArrivalSearch_H_


#include "ModelBase.h"

#include "RequestRangeFull.h"
#include <string>
#include "RequestTransportation.h"
#include "RequestTimeFilterPostcodesProperty.h"
#include <vector>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterPostcodesArrivalSearch
    : public ModelBase
{
public:
    RequestTimeFilterPostcodesArrivalSearch();
    virtual ~RequestTimeFilterPostcodesArrivalSearch();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(const nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// RequestTimeFilterPostcodesArrivalSearch members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
        /// <summary>
    /// 
    /// </summary>
    RequestTransportation getTransportation() const;
    void setTransportation(RequestTransportation const& value);
        /// <summary>
    /// 
    /// </summary>
    int32_t getTravelTime() const;
    void setTravelTime(int32_t const value);
        /// <summary>
    /// 
    /// </summary>
    std::string getArrivalTime() const;
    void setArrivalTime(std::string const& value);
        /// <summary>
    /// 
    /// </summary>
    std::vector<RequestTimeFilterPostcodesProperty>& getProperties();
        /// <summary>
    /// 
    /// </summary>
    RequestRangeFull getRange() const;
    void setRange(RequestRangeFull const& value);
    bool rangeIsSet() const;
    void unsetRange();

protected:
    std::string m_Id;

    RequestTransportation m_Transportation;

    int32_t m_Travel_time;

    std::string m_Arrival_time;

    std::vector<RequestTimeFilterPostcodesProperty> m_Properties;

    RequestRangeFull m_Range;
    bool m_RangeIsSet;
};

}
}
}
}

#endif /* RequestTimeFilterPostcodesArrivalSearch_H_ */