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
 * Coords.h
 *
 * 
 */

#ifndef Coords_H_
#define Coords_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  Coords
{
public:
    Coords();
    virtual ~Coords() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const Coords& rhs) const;
    bool operator!=(const Coords& rhs) const;

    /////////////////////////////////////////////
    /// Coords members

    /// <summary>
    /// 
    /// </summary>
    double getLat() const;
    void setLat(double const value);
    /// <summary>
    /// 
    /// </summary>
    double getLng() const;
    void setLng(double const value);

    friend void to_json(nlohmann::json& j, const Coords& o);
    friend void from_json(const nlohmann::json& j, Coords& o);
protected:
    double m_Lat;

    double m_Lng;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* Coords_H_ */
