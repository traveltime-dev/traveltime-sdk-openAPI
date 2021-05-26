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
 * ResponseTimeFilterPostcodeDistrictProperties.h
 *
 * 
 */

#ifndef ResponseTimeFilterPostcodeDistrictProperties_H_
#define ResponseTimeFilterPostcodeDistrictProperties_H_


#include "ResponseTravelTimeStatistics.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterPostcodeDistrictProperties
{
public:
    ResponseTimeFilterPostcodeDistrictProperties();
    virtual ~ResponseTimeFilterPostcodeDistrictProperties() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseTimeFilterPostcodeDistrictProperties& rhs) const;
    bool operator!=(const ResponseTimeFilterPostcodeDistrictProperties& rhs) const;

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcodeDistrictProperties members

    /// <summary>
    /// 
    /// </summary>
    ResponseTravelTimeStatistics getTravelTimeReachable() const;
    void setTravelTimeReachable(ResponseTravelTimeStatistics const& value);
    bool travelTimeReachableIsSet() const;
    void unsetTravel_time_reachable();
    /// <summary>
    /// 
    /// </summary>
    ResponseTravelTimeStatistics getTravelTimeAll() const;
    void setTravelTimeAll(ResponseTravelTimeStatistics const& value);
    bool travelTimeAllIsSet() const;
    void unsetTravel_time_all();
    /// <summary>
    /// 
    /// </summary>
    double getCoverage() const;
    void setCoverage(double const value);
    bool coverageIsSet() const;
    void unsetCoverage();

    friend void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodeDistrictProperties& o);
    friend void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodeDistrictProperties& o);
protected:
    ResponseTravelTimeStatistics m_Travel_time_reachable;
    bool m_Travel_time_reachableIsSet;
    ResponseTravelTimeStatistics m_Travel_time_all;
    bool m_Travel_time_allIsSet;
    double m_Coverage;
    bool m_CoverageIsSet;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseTimeFilterPostcodeDistrictProperties_H_ */
