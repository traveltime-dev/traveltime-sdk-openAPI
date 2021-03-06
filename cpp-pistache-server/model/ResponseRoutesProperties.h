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
 * ResponseRoutesProperties.h
 *
 * 
 */

#ifndef ResponseRoutesProperties_H_
#define ResponseRoutesProperties_H_


#include "ResponseRoute.h"
#include "ResponseFares.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseRoutesProperties
{
public:
    ResponseRoutesProperties();
    virtual ~ResponseRoutesProperties() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseRoutesProperties& rhs) const;
    bool operator!=(const ResponseRoutesProperties& rhs) const;

    /////////////////////////////////////////////
    /// ResponseRoutesProperties members

    /// <summary>
    /// 
    /// </summary>
    int32_t getTravelTime() const;
    void setTravelTime(int32_t const value);
    bool travelTimeIsSet() const;
    void unsetTravel_time();
    /// <summary>
    /// 
    /// </summary>
    int32_t getDistance() const;
    void setDistance(int32_t const value);
    bool distanceIsSet() const;
    void unsetDistance();
    /// <summary>
    /// 
    /// </summary>
    ResponseFares getFares() const;
    void setFares(ResponseFares const& value);
    bool faresIsSet() const;
    void unsetFares();
    /// <summary>
    /// 
    /// </summary>
    ResponseRoute getRoute() const;
    void setRoute(ResponseRoute const& value);
    bool routeIsSet() const;
    void unsetRoute();

    friend void to_json(nlohmann::json& j, const ResponseRoutesProperties& o);
    friend void from_json(const nlohmann::json& j, ResponseRoutesProperties& o);
protected:
    int32_t m_Travel_time;
    bool m_Travel_timeIsSet;
    int32_t m_Distance;
    bool m_DistanceIsSet;
    ResponseFares m_Fares;
    bool m_FaresIsSet;
    ResponseRoute m_Route;
    bool m_RouteIsSet;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseRoutesProperties_H_ */
