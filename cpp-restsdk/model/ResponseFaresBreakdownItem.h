/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.3.4.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ResponseFaresBreakdownItem.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseFaresBreakdownItem_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseFaresBreakdownItem_H_


#include "../ModelBase.h"

#include "ResponseTransportationMode.h"
#include "ResponseFareTicket.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseFaresBreakdownItem
    : public ModelBase
{
public:
    ResponseFaresBreakdownItem();
    virtual ~ResponseFaresBreakdownItem();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseFaresBreakdownItem members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTransportationMode>>& getModes();
    
    void setModes(const std::vector<std::shared_ptr<ResponseTransportationMode>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<int32_t>& getRoutePartIds();
    
    void setRoutePartIds(std::vector<int32_t> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseFareTicket>>& getTickets();
    
    void setTickets(const std::vector<std::shared_ptr<ResponseFareTicket>>& value);


protected:
    std::vector<std::shared_ptr<ResponseTransportationMode>> m_Modes;
        std::vector<int32_t> m_Route_part_ids;
        std::vector<std::shared_ptr<ResponseFareTicket>> m_Tickets;
    };

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseFaresBreakdownItem_H_ */