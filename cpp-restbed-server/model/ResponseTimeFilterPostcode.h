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
 * ResponseTimeFilterPostcode.h
 *
 * 
 */

#ifndef ResponseTimeFilterPostcode_H_
#define ResponseTimeFilterPostcode_H_



#include "ResponseTimeFilterPostcodesProperties.h"
#include <string>
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
class  ResponseTimeFilterPostcode 
{
public:
    ResponseTimeFilterPostcode();
    virtual ~ResponseTimeFilterPostcode();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseTimeFilterPostcode members

    /// <summary>
    /// 
    /// </summary>
    std::string getCode() const;
    void setCode(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterPostcodesProperties>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<ResponseTimeFilterPostcodesProperties>> value);
protected:
    std::string m_Code;
    std::vector<std::shared_ptr<ResponseTimeFilterPostcodesProperties>> m_Properties;
};

}
}
}
}

#endif /* ResponseTimeFilterPostcode_H_ */
