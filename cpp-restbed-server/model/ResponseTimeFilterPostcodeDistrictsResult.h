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
 * ResponseTimeFilterPostcodeDistrictsResult.h
 *
 * 
 */

#ifndef ResponseTimeFilterPostcodeDistrictsResult_H_
#define ResponseTimeFilterPostcodeDistrictsResult_H_



#include <string>
#include "ResponseTimeFilterPostcodeDistrict.h"
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
class  ResponseTimeFilterPostcodeDistrictsResult 
{
public:
    ResponseTimeFilterPostcodeDistrictsResult();
    virtual ~ResponseTimeFilterPostcodeDistrictsResult();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcodeDistrictsResult members

    /// <summary>
    /// 
    /// </summary>
    std::string getSearchId() const;
    void setSearchId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterPostcodeDistrict>> getDistricts() const;
    void setDistricts(std::vector<std::shared_ptr<ResponseTimeFilterPostcodeDistrict>> value);
protected:
    std::string m_Search_id;
    std::vector<std::shared_ptr<ResponseTimeFilterPostcodeDistrict>> m_Districts;
};

}
}
}
}

#endif /* ResponseTimeFilterPostcodeDistrictsResult_H_ */
