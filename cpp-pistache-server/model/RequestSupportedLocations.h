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
 * RequestSupportedLocations.h
 *
 * 
 */

#ifndef RequestSupportedLocations_H_
#define RequestSupportedLocations_H_


#include "RequestLocation.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestSupportedLocations
{
public:
    RequestSupportedLocations();
    virtual ~RequestSupportedLocations() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestSupportedLocations& rhs) const;
    bool operator!=(const RequestSupportedLocations& rhs) const;

    /////////////////////////////////////////////
    /// RequestSupportedLocations members

    /// <summary>
    /// 
    /// </summary>
    std::vector<RequestLocation> getLocations() const;
    void setLocations(std::vector<RequestLocation> const& value);

    friend void to_json(nlohmann::json& j, const RequestSupportedLocations& o);
    friend void from_json(const nlohmann::json& j, RequestSupportedLocations& o);
protected:
    std::vector<RequestLocation> m_Locations;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestSupportedLocations_H_ */
