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
 * ResponseShape.h
 *
 * 
 */

#ifndef ResponseShape_H_
#define ResponseShape_H_


#include "Coords.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseShape
{
public:
    ResponseShape();
    virtual ~ResponseShape() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseShape& rhs) const;
    bool operator!=(const ResponseShape& rhs) const;

    /////////////////////////////////////////////
    /// ResponseShape members

    /// <summary>
    /// 
    /// </summary>
    std::vector<Coords> getShell() const;
    void setShell(std::vector<Coords> const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::vector<Coords>> getHoles() const;
    void setHoles(std::vector<std::vector<Coords>> const& value);

    friend void to_json(nlohmann::json& j, const ResponseShape& o);
    friend void from_json(const nlohmann::json& j, ResponseShape& o);
protected:
    std::vector<Coords> m_Shell;

    std::vector<std::vector<Coords>> m_Holes;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseShape_H_ */
