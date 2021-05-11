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
 * RequestTimeFilterPostcodeSectorsProperty.h
 *
 * 
 */

#ifndef RequestTimeFilterPostcodeSectorsProperty_H_
#define RequestTimeFilterPostcodeSectorsProperty_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterPostcodeSectorsProperty
{
public:
    RequestTimeFilterPostcodeSectorsProperty();
    virtual ~RequestTimeFilterPostcodeSectorsProperty() = default;

    enum class eRequestTimeFilterPostcodeSectorsProperty {
    // To have a valid default value.
    // Avoiding nameclashes with user defined
    // enum values
    INVALID_VALUE_OPENAPI_GENERATED = 0,
    TRAVEL_TIME_REACHABLE, 
    TRAVEL_TIME_ALL, 
    COVERAGE
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

    bool operator==(const RequestTimeFilterPostcodeSectorsProperty& rhs) const;
    bool operator!=(const RequestTimeFilterPostcodeSectorsProperty& rhs) const;

    /////////////////////////////////////////////
    /// RequestTimeFilterPostcodeSectorsProperty members

    RequestTimeFilterPostcodeSectorsProperty::eRequestTimeFilterPostcodeSectorsProperty getValue() const;
    void setValue(RequestTimeFilterPostcodeSectorsProperty::eRequestTimeFilterPostcodeSectorsProperty value);

    friend void to_json(nlohmann::json& j, const RequestTimeFilterPostcodeSectorsProperty& o);
    friend void from_json(const nlohmann::json& j, RequestTimeFilterPostcodeSectorsProperty& o);
protected:
    RequestTimeFilterPostcodeSectorsProperty::eRequestTimeFilterPostcodeSectorsProperty m_value = RequestTimeFilterPostcodeSectorsProperty::eRequestTimeFilterPostcodeSectorsProperty::INVALID_VALUE_OPENAPI_GENERATED;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestTimeFilterPostcodeSectorsProperty_H_ */
