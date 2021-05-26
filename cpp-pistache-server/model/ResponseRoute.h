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
 * ResponseRoute.h
 *
 * 
 */

#ifndef ResponseRoute_H_
#define ResponseRoute_H_


#include "ResponseRoutePart.h"
#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseRoute
{
public:
    ResponseRoute();
    virtual ~ResponseRoute() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseRoute& rhs) const;
    bool operator!=(const ResponseRoute& rhs) const;

    /////////////////////////////////////////////
    /// ResponseRoute members

    /// <summary>
    /// 
    /// </summary>
    std::string getDepartureTime() const;
    void setDepartureTime(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::string getArrivalTime() const;
    void setArrivalTime(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseRoutePart> getParts() const;
    void setParts(std::vector<ResponseRoutePart> const& value);

    friend void to_json(nlohmann::json& j, const ResponseRoute& o);
    friend void from_json(const nlohmann::json& j, ResponseRoute& o);
protected:
    std::string m_Departure_time;

    std::string m_Arrival_time;

    std::vector<ResponseRoutePart> m_Parts;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseRoute_H_ */
