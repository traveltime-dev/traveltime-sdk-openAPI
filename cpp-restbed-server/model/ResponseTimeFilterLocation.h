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
 * ResponseTimeFilterLocation.h
 *
 * 
 */

#ifndef ResponseTimeFilterLocation_H_
#define ResponseTimeFilterLocation_H_



#include "ResponseTimeFilterProperties.h"
#include <string>
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseTimeFilterLocation
{
public:
    ResponseTimeFilterLocation();
    virtual ~ResponseTimeFilterLocation();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ResponseTimeFilterLocation members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseTimeFilterProperties>> getProperties() const;
    void setProperties(std::vector<std::shared_ptr<ResponseTimeFilterProperties>> value);

protected:
    std::string m_Id;
    std::vector<std::shared_ptr<ResponseTimeFilterProperties>> m_Properties;
};

}
}
}
}

#endif /* ResponseTimeFilterLocation_H_ */