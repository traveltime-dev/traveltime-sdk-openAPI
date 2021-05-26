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
 * ResponseError.h
 *
 * 
 */

#ifndef ResponseError_H_
#define ResponseError_H_



#include <string>
#include <map>
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
class  ResponseError 
{
public:
    ResponseError();
    virtual ~ResponseError();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseError members

    /// <summary>
    /// 
    /// </summary>
    int32_t getHttpStatus() const;
    void setHttpStatus(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getErrorCode() const;
    void setErrorCode(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getDescription() const;
    void setDescription(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getDocumentationLink() const;
    void setDocumentationLink(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::map<std::string, std::vector<std::string>> getAdditionalInfo() const;
    void setAdditionalInfo(std::map<std::string, std::vector<std::string>> value);
protected:
    int32_t m_Http_status;
    int32_t m_Error_code;
    std::string m_Description;
    std::string m_Documentation_link;
    std::map<std::string, std::vector<std::string>> m_Additional_info;
};

}
}
}
}

#endif /* ResponseError_H_ */
