/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ResponseRoutesLocation.h
 *
 * 
 */

#ifndef ResponseRoutesLocation_H_
#define ResponseRoutesLocation_H_



#include <string>
#include "ResponseRoutesProperties.h"
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
class  ResponseRoutesLocation 
{
public:
    ResponseRoutesLocation();
    virtual ~ResponseRoutesLocation();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseRoutesLocation members

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseRoutesProperties>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<ResponseRoutesProperties>> value);
protected:
    std::string m_Id;
    std::vector<std::shared_ptr<ResponseRoutesProperties>> m_Properties;
};

}
}
}
}

#endif /* ResponseRoutesLocation_H_ */
