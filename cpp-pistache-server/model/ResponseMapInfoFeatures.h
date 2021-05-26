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
 * ResponseMapInfoFeatures.h
 *
 * 
 */

#ifndef ResponseMapInfoFeatures_H_
#define ResponseMapInfoFeatures_H_


#include "ResponseMapInfoFeaturesPublicTransport.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseMapInfoFeatures
{
public:
    ResponseMapInfoFeatures();
    virtual ~ResponseMapInfoFeatures() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseMapInfoFeatures& rhs) const;
    bool operator!=(const ResponseMapInfoFeatures& rhs) const;

    /////////////////////////////////////////////
    /// ResponseMapInfoFeatures members

    /// <summary>
    /// 
    /// </summary>
    ResponseMapInfoFeaturesPublicTransport getPublicTransport() const;
    void setPublicTransport(ResponseMapInfoFeaturesPublicTransport const& value);
    bool publicTransportIsSet() const;
    void unsetPublic_transport();
    /// <summary>
    /// 
    /// </summary>
    bool isFares() const;
    void setFares(bool const value);
    /// <summary>
    /// 
    /// </summary>
    bool isPostcodes() const;
    void setPostcodes(bool const value);

    friend void to_json(nlohmann::json& j, const ResponseMapInfoFeatures& o);
    friend void from_json(const nlohmann::json& j, ResponseMapInfoFeatures& o);
protected:
    ResponseMapInfoFeaturesPublicTransport m_Public_transport;
    bool m_Public_transportIsSet;
    bool m_Fares;

    bool m_Postcodes;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseMapInfoFeatures_H_ */
