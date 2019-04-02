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
 * RequestTransportation.h
 *
 * 
 */

#ifndef RequestTransportation_H_
#define RequestTransportation_H_



#include <string>
#include <memory>

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
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

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
};

}
}
}
}

#endif /* RequestTransportation_H_ */