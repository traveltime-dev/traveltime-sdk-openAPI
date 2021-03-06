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
 * RequestRangeNoMaxResults.h
 *
 * 
 */

#ifndef RequestRangeNoMaxResults_H_
#define RequestRangeNoMaxResults_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestRangeNoMaxResults
{
public:
    RequestRangeNoMaxResults();
    virtual ~RequestRangeNoMaxResults() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestRangeNoMaxResults& rhs) const;
    bool operator!=(const RequestRangeNoMaxResults& rhs) const;

    /////////////////////////////////////////////
    /// RequestRangeNoMaxResults members

    /// <summary>
    /// 
    /// </summary>
    bool isEnabled() const;
    void setEnabled(bool const value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getWidth() const;
    void setWidth(int32_t const value);

    friend void to_json(nlohmann::json& j, const RequestRangeNoMaxResults& o);
    friend void from_json(const nlohmann::json& j, RequestRangeNoMaxResults& o);
protected:
    bool m_Enabled;

    int32_t m_Width;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestRangeNoMaxResults_H_ */
