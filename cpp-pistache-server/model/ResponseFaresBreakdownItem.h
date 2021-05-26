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
 * ResponseFaresBreakdownItem.h
 *
 * 
 */

#ifndef ResponseFaresBreakdownItem_H_
#define ResponseFaresBreakdownItem_H_


#include "ResponseTransportationMode.h"
#include "ResponseFareTicket.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseFaresBreakdownItem
{
public:
    ResponseFaresBreakdownItem();
    virtual ~ResponseFaresBreakdownItem() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseFaresBreakdownItem& rhs) const;
    bool operator!=(const ResponseFaresBreakdownItem& rhs) const;

    /////////////////////////////////////////////
    /// ResponseFaresBreakdownItem members

    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseTransportationMode> getModes() const;
    void setModes(std::vector<ResponseTransportationMode> const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<int32_t> getRoutePartIds() const;
    void setRoutePartIds(std::vector<int32_t> const value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseFareTicket> getTickets() const;
    void setTickets(std::vector<ResponseFareTicket> const& value);

    friend void to_json(nlohmann::json& j, const ResponseFaresBreakdownItem& o);
    friend void from_json(const nlohmann::json& j, ResponseFaresBreakdownItem& o);
protected:
    std::vector<ResponseTransportationMode> m_Modes;

    std::vector<int32_t> m_Route_part_ids;

    std::vector<ResponseFareTicket> m_Tickets;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseFaresBreakdownItem_H_ */
