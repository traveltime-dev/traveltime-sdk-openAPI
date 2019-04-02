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


#include "RequestTimeFilterFastArrivalManyToOneSearch.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

RequestTimeFilterFastArrivalManyToOneSearch::RequestTimeFilterFastArrivalManyToOneSearch()
{
    m_Id = "";
    m_Arrival_location_id = "";
    m_Travel_time = 0;
    
}

RequestTimeFilterFastArrivalManyToOneSearch::~RequestTimeFilterFastArrivalManyToOneSearch()
{
}

void RequestTimeFilterFastArrivalManyToOneSearch::validate()
{
    // TODO: implement validation
}

nlohmann::json RequestTimeFilterFastArrivalManyToOneSearch::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    val["id"] = ModelBase::toJson(m_Id);
    val["arrival_location_id"] = ModelBase::toJson(m_Arrival_location_id);
    {
        nlohmann::json jsonArray;
        for( auto& item : m_Departure_location_ids )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val["departure_location_ids"] = jsonArray;
        
    }
    val["transportation"] = ModelBase::toJson(m_Transportation);
    val["travel_time"] = m_Travel_time;
    val["arrival_time_period"] = ModelBase::toJson(m_Arrival_time_period);
    {
        nlohmann::json jsonArray;
        for( auto& item : m_Properties )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val["properties"] = jsonArray;
        
    }
    

    return val;
}

void RequestTimeFilterFastArrivalManyToOneSearch::fromJson(const nlohmann::json& val)
{
    setId(val.at("id"));
    setArrivalLocationId(val.at("arrival_location_id"));
    {
        m_Departure_location_ids.clear();
                    for( auto& item : val["departure_location_ids"] )
            {
                m_Departure_location_ids.push_back(item);
                
            }
    }
    setTravelTime(val.at("travel_time"));
    {
        m_Properties.clear();
                    for( auto& item : val["properties"] )
            {
                
                if(item.is_null())
                {
                    m_Properties.push_back( RequestTimeFilterFastProperty() );
                }
                else
                {
                    RequestTimeFilterFastProperty newItem;
                    newItem.fromJson(item);
                    m_Properties.push_back( newItem );
                }
                
            }
    }
    
}


std::string RequestTimeFilterFastArrivalManyToOneSearch::getId() const
{
    return m_Id;
}
void RequestTimeFilterFastArrivalManyToOneSearch::setId(std::string const& value)
{
    m_Id = value;
    
}
std::string RequestTimeFilterFastArrivalManyToOneSearch::getArrivalLocationId() const
{
    return m_Arrival_location_id;
}
void RequestTimeFilterFastArrivalManyToOneSearch::setArrivalLocationId(std::string const& value)
{
    m_Arrival_location_id = value;
    
}
std::vector<std::string>& RequestTimeFilterFastArrivalManyToOneSearch::getDepartureLocationIds()
{
    return m_Departure_location_ids;
}
RequestTransportationFast RequestTimeFilterFastArrivalManyToOneSearch::getTransportation() const
{
    return m_Transportation;
}
void RequestTimeFilterFastArrivalManyToOneSearch::setTransportation(RequestTransportationFast const& value)
{
    m_Transportation = value;
    
}
int32_t RequestTimeFilterFastArrivalManyToOneSearch::getTravelTime() const
{
    return m_Travel_time;
}
void RequestTimeFilterFastArrivalManyToOneSearch::setTravelTime(int32_t const value)
{
    m_Travel_time = value;
    
}
RequestArrivalTimePeriod RequestTimeFilterFastArrivalManyToOneSearch::getArrivalTimePeriod() const
{
    return m_Arrival_time_period;
}
void RequestTimeFilterFastArrivalManyToOneSearch::setArrivalTimePeriod(RequestArrivalTimePeriod const& value)
{
    m_Arrival_time_period = value;
    
}
std::vector<RequestTimeFilterFastProperty>& RequestTimeFilterFastArrivalManyToOneSearch::getProperties()
{
    return m_Properties;
}

}
}
}
}
