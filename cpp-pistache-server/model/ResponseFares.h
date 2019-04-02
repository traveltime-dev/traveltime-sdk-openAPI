/**
* TravelTime Platform API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * ResponseFares.h
 *
 * 
 */

#ifndef ResponseFares_H_
#define ResponseFares_H_


#include "ModelBase.h"

#include "ResponseFaresBreakdownItem.h"
#include "ResponseFareTicket.h"
#include <vector>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseFares
    : public ModelBase
{
public:
    ResponseFares();
    virtual ~ResponseFares();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(const nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// ResponseFares members

    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseFaresBreakdownItem>& getBreakdown();
        /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseFareTicket>& getTicketsTotal();
    
protected:
    std::vector<ResponseFaresBreakdownItem> m_Breakdown;

    std::vector<ResponseFareTicket> m_Tickets_total;

};

}
}
}
}

#endif /* ResponseFares_H_ */