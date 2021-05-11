/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.2
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * RequestRoutesProperty.h
 *
 * 
 */

#ifndef RequestRoutesProperty_H_
#define RequestRoutesProperty_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestRoutesProperty
{
public:
    RequestRoutesProperty();
    virtual ~RequestRoutesProperty() = default;

    enum class eRequestRoutesProperty {
    // To have a valid default value.
    // Avoiding nameclashes with user defined
    // enum values
    INVALID_VALUE_OPENAPI_GENERATED = 0,
    TRAVEL_TIME, 
    DISTANCE, 
    FARES, 
    ROUTE
    };

    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestRoutesProperty& rhs) const;
    bool operator!=(const RequestRoutesProperty& rhs) const;

    /////////////////////////////////////////////
    /// RequestRoutesProperty members

    RequestRoutesProperty::eRequestRoutesProperty getValue() const;
    void setValue(RequestRoutesProperty::eRequestRoutesProperty value);

    friend void to_json(nlohmann::json& j, const RequestRoutesProperty& o);
    friend void from_json(const nlohmann::json& j, RequestRoutesProperty& o);
protected:
    RequestRoutesProperty::eRequestRoutesProperty m_value = RequestRoutesProperty::eRequestRoutesProperty::INVALID_VALUE_OPENAPI_GENERATED;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestRoutesProperty_H_ */
