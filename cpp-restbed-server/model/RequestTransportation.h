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
 * RequestTransportation.h
 *
 * 
 */

#ifndef RequestTransportation_H_
#define RequestTransportation_H_



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
class  RequestTransportation 
{
public:
    RequestTransportation();
    virtual ~RequestTransportation();
    
    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// RequestTransportation members

    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getPtChangeDelay() const;
    void setPtChangeDelay(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getWalkingTime() const;
    void setWalkingTime(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getDrivingTimeToStation() const;
    void setDrivingTimeToStation(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getParkingTime() const;
    void setParkingTime(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getBoardingTime() const;
    void setBoardingTime(int32_t value);
protected:
    std::string m_Type;
    int32_t m_Pt_change_delay;
    int32_t m_Walking_time;
    int32_t m_Driving_time_to_station;
    int32_t m_Parking_time;
    int32_t m_Boarding_time;
    std::vector<std::string> m_TypeEnum;
};

}
}
}
}

#endif /* RequestTransportation_H_ */
