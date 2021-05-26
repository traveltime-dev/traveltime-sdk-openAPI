/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.3
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * RequestTimeFilterArrivalSearch.h
 *
 * 
 */

#ifndef RequestTimeFilterArrivalSearch_H_
#define RequestTimeFilterArrivalSearch_H_


#include "RequestRangeFull.h"
#include "RequestTimeFilterProperty.h"
#include <string>
#include "RequestTransportation.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterArrivalSearch
{
public:
    RequestTimeFilterArrivalSearch();
    virtual ~RequestTimeFilterArrivalSearch() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestTimeFilterArrivalSearch& rhs) const;
    bool operator!=(const RequestTimeFilterArrivalSearch& rhs) const;

    /////////////////////////////////////////////
    /// RequestTimeFilterArrivalSearch members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getDepartureLocationIds() const;
    void setDepartureLocationIds(std::vector<std::string> const& value);
    /// <summary>
    /// 
    /// </summary>
    std::string getArrivalLocationId() const;
    void setArrivalLocationId(std::string const& value);
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
    std::vector<RequestTimeFilterProperty> getProperties() const;
    void setProperties(std::vector<RequestTimeFilterProperty> const& value);
    /// <summary>
    /// 
    /// </summary>
    RequestRangeFull getRange() const;
    void setRange(RequestRangeFull const& value);
    bool rangeIsSet() const;
    void unsetRange();

    friend void to_json(nlohmann::json& j, const RequestTimeFilterArrivalSearch& o);
    friend void from_json(const nlohmann::json& j, RequestTimeFilterArrivalSearch& o);
protected:
    std::string m_Id;

    std::vector<std::string> m_Departure_location_ids;

    std::string m_Arrival_location_id;

    RequestTransportation m_Transportation;

    int32_t m_Travel_time;

    std::string m_Arrival_time;

    std::vector<RequestTimeFilterProperty> m_Properties;

    RequestRangeFull m_Range;
    bool m_RangeIsSet;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestTimeFilterArrivalSearch_H_ */
