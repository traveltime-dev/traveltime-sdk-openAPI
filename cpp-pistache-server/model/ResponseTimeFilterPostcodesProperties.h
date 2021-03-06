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
 * ResponseTimeFilterPostcodesProperties.h
 *
 * 
 */

#ifndef ResponseTimeFilterPostcodesProperties_H_
#define ResponseTimeFilterPostcodesProperties_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterPostcodesProperties
{
public:
    ResponseTimeFilterPostcodesProperties();
    virtual ~ResponseTimeFilterPostcodesProperties() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseTimeFilterPostcodesProperties& rhs) const;
    bool operator!=(const ResponseTimeFilterPostcodesProperties& rhs) const;

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcodesProperties members

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

    friend void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodesProperties& o);
    friend void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodesProperties& o);
protected:
    int32_t m_Travel_time;
    bool m_Travel_timeIsSet;
    int32_t m_Distance;
    bool m_DistanceIsSet;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseTimeFilterPostcodesProperties_H_ */
