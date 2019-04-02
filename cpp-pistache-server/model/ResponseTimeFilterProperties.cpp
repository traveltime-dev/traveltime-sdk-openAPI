/**
* TravelTime Platform API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "ResponseTimeFilterProperties.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

ResponseTimeFilterProperties::ResponseTimeFilterProperties()
{
    m_Travel_time = 0;
    m_Travel_timeIsSet = false;
    m_Distance = 0;
    m_DistanceIsSet = false;
    m_Distance_breakdownIsSet = false;
    m_FaresIsSet = false;
    m_RouteIsSet = false;
    
}

ResponseTimeFilterProperties::~ResponseTimeFilterProperties()
{
}

void ResponseTimeFilterProperties::validate()
{
    // TODO: implement validation
}

nlohmann::json ResponseTimeFilterProperties::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m_Travel_timeIsSet)
    {
        val["travel_time"] = m_Travel_time;
    }
    if(m_DistanceIsSet)
    {
        val["distance"] = m_Distance;
    }
    {
        nlohmann::json jsonArray;
        for( auto& item : m_Distance_breakdown )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            val["distance_breakdown"] = jsonArray;
        } 
    }
    if(m_FaresIsSet)
    {
        val["fares"] = ModelBase::toJson(m_Fares);
    }
    if(m_RouteIsSet)
    {
        val["route"] = ModelBase::toJson(m_Route);
    }
    

    return val;
}

void ResponseTimeFilterProperties::fromJson(const nlohmann::json& val)
{
    if(val.find("travel_time") != val.end())
    {
        setTravelTime(val.at("travel_time"));
    }
    if(val.find("distance") != val.end())
    {
        setDistance(val.at("distance"));
    }
    {
        m_Distance_breakdown.clear();
        if(val.find("distance_breakdown") != val.end())
        {
            for( auto& item : val["distance_breakdown"] )
            {
                
                if(item.is_null())
                {
                    m_Distance_breakdown.push_back( ResponseDistanceBreakdownItem() );
                }
                else
                {
                    ResponseDistanceBreakdownItem newItem;
                    newItem.fromJson(item);
                    m_Distance_breakdown.push_back( newItem );
                }
                
            }
        }
    }
    if(val.find("fares") != val.end())
    {
        if(!val["fares"].is_null())
        {
            ResponseFares newItem;
            newItem.fromJson(val["fares"]);
            setFares( newItem );
        }
        
    }
    if(val.find("route") != val.end())
    {
        if(!val["route"].is_null())
        {
            ResponseRoute newItem;
            newItem.fromJson(val["route"]);
            setRoute( newItem );
        }
        
    }
    
}


int32_t ResponseTimeFilterProperties::getTravelTime() const
{
    return m_Travel_time;
}
void ResponseTimeFilterProperties::setTravelTime(int32_t const value)
{
    m_Travel_time = value;
    m_Travel_timeIsSet = true;
}
bool ResponseTimeFilterProperties::travelTimeIsSet() const
{
    return m_Travel_timeIsSet;
}
void ResponseTimeFilterProperties::unsetTravel_time()
{
    m_Travel_timeIsSet = false;
}
int32_t ResponseTimeFilterProperties::getDistance() const
{
    return m_Distance;
}
void ResponseTimeFilterProperties::setDistance(int32_t const value)
{
    m_Distance = value;
    m_DistanceIsSet = true;
}
bool ResponseTimeFilterProperties::distanceIsSet() const
{
    return m_DistanceIsSet;
}
void ResponseTimeFilterProperties::unsetDistance()
{
    m_DistanceIsSet = false;
}
std::vector<ResponseDistanceBreakdownItem>& ResponseTimeFilterProperties::getDistanceBreakdown()
{
    return m_Distance_breakdown;
}
bool ResponseTimeFilterProperties::distanceBreakdownIsSet() const
{
    return m_Distance_breakdownIsSet;
}
void ResponseTimeFilterProperties::unsetDistance_breakdown()
{
    m_Distance_breakdownIsSet = false;
}
ResponseFares ResponseTimeFilterProperties::getFares() const
{
    return m_Fares;
}
void ResponseTimeFilterProperties::setFares(ResponseFares const& value)
{
    m_Fares = value;
    m_FaresIsSet = true;
}
bool ResponseTimeFilterProperties::faresIsSet() const
{
    return m_FaresIsSet;
}
void ResponseTimeFilterProperties::unsetFares()
{
    m_FaresIsSet = false;
}
ResponseRoute ResponseTimeFilterProperties::getRoute() const
{
    return m_Route;
}
void ResponseTimeFilterProperties::setRoute(ResponseRoute const& value)
{
    m_Route = value;
    m_RouteIsSet = true;
}
bool ResponseTimeFilterProperties::routeIsSet() const
{
    return m_RouteIsSet;
}
void ResponseTimeFilterProperties::unsetRoute()
{
    m_RouteIsSet = false;
}

}
}
}
}
