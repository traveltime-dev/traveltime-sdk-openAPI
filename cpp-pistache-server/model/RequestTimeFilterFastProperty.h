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
 * RequestTimeFilterFastProperty.h
 *
 * 
 */

#ifndef RequestTimeFilterFastProperty_H_
#define RequestTimeFilterFastProperty_H_


#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterFastProperty
{
public:
    RequestTimeFilterFastProperty();
    virtual ~RequestTimeFilterFastProperty() = default;

    enum class eRequestTimeFilterFastProperty {
    // To have a valid default value.
    // Avoiding nameclashes with user defined
    // enum values
    INVALID_VALUE_OPENAPI_GENERATED = 0,
    TRAVEL_TIME, 
    FARES
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

    bool operator==(const RequestTimeFilterFastProperty& rhs) const;
    bool operator!=(const RequestTimeFilterFastProperty& rhs) const;

    /////////////////////////////////////////////
    /// RequestTimeFilterFastProperty members

    RequestTimeFilterFastProperty::eRequestTimeFilterFastProperty getValue() const;
    void setValue(RequestTimeFilterFastProperty::eRequestTimeFilterFastProperty value);

    friend void to_json(nlohmann::json& j, const RequestTimeFilterFastProperty& o);
    friend void from_json(const nlohmann::json& j, RequestTimeFilterFastProperty& o);
protected:
    RequestTimeFilterFastProperty::eRequestTimeFilterFastProperty m_value = RequestTimeFilterFastProperty::eRequestTimeFilterFastProperty::INVALID_VALUE_OPENAPI_GENERATED;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestTimeFilterFastProperty_H_ */
