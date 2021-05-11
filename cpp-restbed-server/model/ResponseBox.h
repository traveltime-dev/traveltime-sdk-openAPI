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
 * ResponseBox.h
 *
 * 
 */

#ifndef ResponseBox_H_
#define ResponseBox_H_



#include <memory>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseBox 
{
public:
    ResponseBox();
    virtual ~ResponseBox();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ResponseBox members

    /// <summary>
    /// 
    /// </summary>
    double getMinLat() const;
    void setMinLat(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMaxLat() const;
    void setMaxLat(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMinLng() const;
    void setMinLng(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMaxLng() const;
    void setMaxLng(double value);
protected:
    double m_Min_lat;
    double m_Max_lat;
    double m_Min_lng;
    double m_Max_lng;
};

}
}
}
}

#endif /* ResponseBox_H_ */
