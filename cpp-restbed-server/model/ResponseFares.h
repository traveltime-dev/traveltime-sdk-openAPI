/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
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



#include "ResponseFaresBreakdownItem.h"
#include "ResponseFareTicket.h"
#include <vector>
#include <memory>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseFares 
{
public:
    ResponseFares();
    virtual ~ResponseFares();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseFares members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseFaresBreakdownItem>> getBreakdown() const;
    void setBreakdown(std::vector<std::shared_ptr<ResponseFaresBreakdownItem>> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseFareTicket>> getTicketsTotal() const;
    void setTicketsTotal(std::vector<std::shared_ptr<ResponseFareTicket>> value);
protected:
    std::vector<std::shared_ptr<ResponseFaresBreakdownItem>> m_Breakdown;
    std::vector<std::shared_ptr<ResponseFareTicket>> m_Tickets_total;
};

}
}
}
}

#endif /* ResponseFares_H_ */
