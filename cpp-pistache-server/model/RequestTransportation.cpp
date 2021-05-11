/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.2
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "RequestTransportation.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

RequestTransportation::RequestTransportation()
{
    m_Type = "";
    m_Pt_change_delay = 0;
    m_Pt_change_delayIsSet = false;
    m_Walking_time = 0;
    m_Walking_timeIsSet = false;
    m_Driving_time_to_station = 0;
    m_Driving_time_to_stationIsSet = false;
    m_Parking_time = 0;
    m_Parking_timeIsSet = false;
    m_Boarding_time = 0;
    m_Boarding_timeIsSet = false;
    
}

void RequestTransportation::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool RequestTransportation::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool RequestTransportation::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "RequestTransportation" : pathPrefix;

        
    
    
    
    
    

    return success;
}

bool RequestTransportation::operator==(const RequestTransportation& rhs) const
{
    return
    
    
    (getType() == rhs.getType())
     &&
    
    
    ((!ptChangeDelayIsSet() && !rhs.ptChangeDelayIsSet()) || (ptChangeDelayIsSet() && rhs.ptChangeDelayIsSet() && getPtChangeDelay() == rhs.getPtChangeDelay())) &&
    
    
    ((!walkingTimeIsSet() && !rhs.walkingTimeIsSet()) || (walkingTimeIsSet() && rhs.walkingTimeIsSet() && getWalkingTime() == rhs.getWalkingTime())) &&
    
    
    ((!drivingTimeToStationIsSet() && !rhs.drivingTimeToStationIsSet()) || (drivingTimeToStationIsSet() && rhs.drivingTimeToStationIsSet() && getDrivingTimeToStation() == rhs.getDrivingTimeToStation())) &&
    
    
    ((!parkingTimeIsSet() && !rhs.parkingTimeIsSet()) || (parkingTimeIsSet() && rhs.parkingTimeIsSet() && getParkingTime() == rhs.getParkingTime())) &&
    
    
    ((!boardingTimeIsSet() && !rhs.boardingTimeIsSet()) || (boardingTimeIsSet() && rhs.boardingTimeIsSet() && getBoardingTime() == rhs.getBoardingTime()))
    
    ;
}

bool RequestTransportation::operator!=(const RequestTransportation& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const RequestTransportation& o)
{
    j = nlohmann::json();
    j["type"] = o.m_Type;
    if(o.ptChangeDelayIsSet())
        j["pt_change_delay"] = o.m_Pt_change_delay;
    if(o.walkingTimeIsSet())
        j["walking_time"] = o.m_Walking_time;
    if(o.drivingTimeToStationIsSet())
        j["driving_time_to_station"] = o.m_Driving_time_to_station;
    if(o.parkingTimeIsSet())
        j["parking_time"] = o.m_Parking_time;
    if(o.boardingTimeIsSet())
        j["boarding_time"] = o.m_Boarding_time;
    
}

void from_json(const nlohmann::json& j, RequestTransportation& o)
{
    j.at("type").get_to(o.m_Type);
    if(j.find("pt_change_delay") != j.end())
    {
        j.at("pt_change_delay").get_to(o.m_Pt_change_delay);
        o.m_Pt_change_delayIsSet = true;
    } 
    if(j.find("walking_time") != j.end())
    {
        j.at("walking_time").get_to(o.m_Walking_time);
        o.m_Walking_timeIsSet = true;
    } 
    if(j.find("driving_time_to_station") != j.end())
    {
        j.at("driving_time_to_station").get_to(o.m_Driving_time_to_station);
        o.m_Driving_time_to_stationIsSet = true;
    } 
    if(j.find("parking_time") != j.end())
    {
        j.at("parking_time").get_to(o.m_Parking_time);
        o.m_Parking_timeIsSet = true;
    } 
    if(j.find("boarding_time") != j.end())
    {
        j.at("boarding_time").get_to(o.m_Boarding_time);
        o.m_Boarding_timeIsSet = true;
    } 
    
}

std::string RequestTransportation::getType() const
{
    return m_Type;
}
void RequestTransportation::setType(std::string const& value)
{
    m_Type = value;
}
int32_t RequestTransportation::getPtChangeDelay() const
{
    return m_Pt_change_delay;
}
void RequestTransportation::setPtChangeDelay(int32_t const value)
{
    m_Pt_change_delay = value;
    m_Pt_change_delayIsSet = true;
}
bool RequestTransportation::ptChangeDelayIsSet() const
{
    return m_Pt_change_delayIsSet;
}
void RequestTransportation::unsetPt_change_delay()
{
    m_Pt_change_delayIsSet = false;
}
int32_t RequestTransportation::getWalkingTime() const
{
    return m_Walking_time;
}
void RequestTransportation::setWalkingTime(int32_t const value)
{
    m_Walking_time = value;
    m_Walking_timeIsSet = true;
}
bool RequestTransportation::walkingTimeIsSet() const
{
    return m_Walking_timeIsSet;
}
void RequestTransportation::unsetWalking_time()
{
    m_Walking_timeIsSet = false;
}
int32_t RequestTransportation::getDrivingTimeToStation() const
{
    return m_Driving_time_to_station;
}
void RequestTransportation::setDrivingTimeToStation(int32_t const value)
{
    m_Driving_time_to_station = value;
    m_Driving_time_to_stationIsSet = true;
}
bool RequestTransportation::drivingTimeToStationIsSet() const
{
    return m_Driving_time_to_stationIsSet;
}
void RequestTransportation::unsetDriving_time_to_station()
{
    m_Driving_time_to_stationIsSet = false;
}
int32_t RequestTransportation::getParkingTime() const
{
    return m_Parking_time;
}
void RequestTransportation::setParkingTime(int32_t const value)
{
    m_Parking_time = value;
    m_Parking_timeIsSet = true;
}
bool RequestTransportation::parkingTimeIsSet() const
{
    return m_Parking_timeIsSet;
}
void RequestTransportation::unsetParking_time()
{
    m_Parking_timeIsSet = false;
}
int32_t RequestTransportation::getBoardingTime() const
{
    return m_Boarding_time;
}
void RequestTransportation::setBoardingTime(int32_t const value)
{
    m_Boarding_time = value;
    m_Boarding_timeIsSet = true;
}
bool RequestTransportation::boardingTimeIsSet() const
{
    return m_Boarding_timeIsSet;
}
void RequestTransportation::unsetBoarding_time()
{
    m_Boarding_timeIsSet = false;
}


} // namespace org::openapitools::server::model

