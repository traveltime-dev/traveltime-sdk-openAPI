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
 * RequestUnionOnIntersection.h
 *
 * 
 */

#ifndef RequestUnionOnIntersection_H_
#define RequestUnionOnIntersection_H_


#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestUnionOnIntersection
{
public:
    RequestUnionOnIntersection();
    virtual ~RequestUnionOnIntersection() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestUnionOnIntersection& rhs) const;
    bool operator!=(const RequestUnionOnIntersection& rhs) const;

    /////////////////////////////////////////////
    /// RequestUnionOnIntersection members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getSearchIds() const;
    void setSearchIds(std::vector<std::string> const& value);

    friend void to_json(nlohmann::json& j, const RequestUnionOnIntersection& o);
    friend void from_json(const nlohmann::json& j, RequestUnionOnIntersection& o);
protected:
    std::string m_Id;

    std::vector<std::string> m_Search_ids;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestUnionOnIntersection_H_ */
