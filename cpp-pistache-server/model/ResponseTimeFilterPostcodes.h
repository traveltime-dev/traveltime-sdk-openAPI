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
 * ResponseTimeFilterPostcodes.h
 *
 * 
 */

#ifndef ResponseTimeFilterPostcodes_H_
#define ResponseTimeFilterPostcodes_H_


#include "ResponseTimeFilterPostcodesResult.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterPostcodes
{
public:
    ResponseTimeFilterPostcodes();
    virtual ~ResponseTimeFilterPostcodes() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseTimeFilterPostcodes& rhs) const;
    bool operator!=(const ResponseTimeFilterPostcodes& rhs) const;

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcodes members

    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseTimeFilterPostcodesResult> getResults() const;
    void setResults(std::vector<ResponseTimeFilterPostcodesResult> const& value);

    friend void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodes& o);
    friend void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodes& o);
protected:
    std::vector<ResponseTimeFilterPostcodesResult> m_Results;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseTimeFilterPostcodes_H_ */
