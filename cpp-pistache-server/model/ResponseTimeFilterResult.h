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
 * ResponseTimeFilterResult.h
 *
 * 
 */

#ifndef ResponseTimeFilterResult_H_
#define ResponseTimeFilterResult_H_


#include <string>
#include <vector>
#include "ResponseTimeFilterLocation.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterResult
{
public:
    ResponseTimeFilterResult();
    virtual ~ResponseTimeFilterResult() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseTimeFilterResult& rhs) const;
    bool operator!=(const ResponseTimeFilterResult& rhs) const;

    /////////////////////////////////////////////
    /// ResponseTimeFilterResult members

    /// <summary>
    /// 
    /// </summary>
    std::string getSearchId() const;
    void setSearchId(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseTimeFilterLocation> getLocations() const;
    void setLocations(std::vector<ResponseTimeFilterLocation> const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getUnreachable() const;
    void setUnreachable(std::vector<std::string> const& value);

    friend void to_json(nlohmann::json& j, const ResponseTimeFilterResult& o);
    friend void from_json(const nlohmann::json& j, ResponseTimeFilterResult& o);
protected:
    std::string m_Search_id;

    std::vector<ResponseTimeFilterLocation> m_Locations;

    std::vector<std::string> m_Unreachable;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseTimeFilterResult_H_ */
