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
 * ResponseFareTicket.h
 *
 * 
 */

#ifndef ResponseFareTicket_H_
#define ResponseFareTicket_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseFareTicket
{
public:
    ResponseFareTicket();
    virtual ~ResponseFareTicket() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseFareTicket& rhs) const;
    bool operator!=(const ResponseFareTicket& rhs) const;

    /////////////////////////////////////////////
    /// ResponseFareTicket members

    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    double getPrice() const;
    void setPrice(double const value);
    /// <summary>
    /// 
    /// </summary>
    std::string getCurrency() const;
    void setCurrency(std::string const& value);

    friend void to_json(nlohmann::json& j, const ResponseFareTicket& o);
    friend void from_json(const nlohmann::json& j, ResponseFareTicket& o);
protected:
    std::string m_Type;

    double m_Price;

    std::string m_Currency;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseFareTicket_H_ */
