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



#include "RequestRoutesArrivalSearch.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

RequestRoutesArrivalSearch::RequestRoutesArrivalSearch()
{
    m_Id = utility::conversions::to_string_t("");
    m_Arrival_location_id = utility::conversions::to_string_t("");
    m_Arrival_time = utility::datetime();
    m_RangeIsSet = false;
}

RequestRoutesArrivalSearch::~RequestRoutesArrivalSearch()
{
}

void RequestRoutesArrivalSearch::validate()
{
    // TODO: implement validation
}

web::json::value RequestRoutesArrivalSearch::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Departure_location_ids )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val[utility::conversions::to_string_t("departure_location_ids")] = web::json::value::array(jsonArray);
    }
    val[utility::conversions::to_string_t("arrival_location_id")] = ModelBase::toJson(m_Arrival_location_id);
    val[utility::conversions::to_string_t("transportation")] = ModelBase::toJson(m_Transportation);
    val[utility::conversions::to_string_t("arrival_time")] = ModelBase::toJson(m_Arrival_time);
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Properties )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val[utility::conversions::to_string_t("properties")] = web::json::value::array(jsonArray);
    }
    if(m_RangeIsSet)
    {
        val[utility::conversions::to_string_t("range")] = ModelBase::toJson(m_Range);
    }

    return val;
}

void RequestRoutesArrivalSearch::fromJson(const web::json::value& val)
{
    setId(ModelBase::stringFromJson(val.at(utility::conversions::to_string_t("id"))));
    {
        m_Departure_location_ids.clear();
        std::vector<web::json::value> jsonArray;
        for( auto& item : val.at(utility::conversions::to_string_t("departure_location_ids")).as_array() )
        {
            m_Departure_location_ids.push_back(ModelBase::stringFromJson(item));
        }
    }
    setArrivalLocationId(ModelBase::stringFromJson(val.at(utility::conversions::to_string_t("arrival_location_id"))));
    std::shared_ptr<RequestTransportation> newTransportation(new RequestTransportation());
    newTransportation->fromJson(val.at(utility::conversions::to_string_t("transportation")));
    setTransportation( newTransportation );
    setArrivalTime
    (ModelBase::dateFromJson(val.at(utility::conversions::to_string_t("arrival_time"))));
    {
        m_Properties.clear();
        std::vector<web::json::value> jsonArray;
        for( auto& item : val.at(utility::conversions::to_string_t("properties")).as_array() )
        {
            if(item.is_null())
            {
                m_Properties.push_back( std::shared_ptr<RequestRoutesProperty>(nullptr) );
            }
            else
            {
                std::shared_ptr<RequestRoutesProperty> newItem(new RequestRoutesProperty());
                newItem->fromJson(item);
                m_Properties.push_back( newItem );
            }
        }
    }
    if(val.has_field(utility::conversions::to_string_t("range")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("range"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<RequestRangeFull> newItem(new RequestRangeFull());
            newItem->fromJson(fieldValue);
            setRange( newItem );
        }
    }
}

void RequestRoutesArrivalSearch::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Departure_location_ids )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_location_ids"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
            }
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_location_id"), m_Arrival_location_id));
    m_Transportation->toMultipart(multipart, utility::conversions::to_string_t("transportation."));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_time"), m_Arrival_time));
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Properties )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("properties"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
            }
    if(m_RangeIsSet)
    {
        if (m_Range.get())
        {
            m_Range->toMultipart(multipart, utility::conversions::to_string_t("range."));
        }
    }
}

void RequestRoutesArrivalSearch::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setId(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("id"))));
    {
        m_Departure_location_ids.clear();

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_location_ids"))));
        for( auto& item : jsonArray.as_array() )
        {
            m_Departure_location_ids.push_back(ModelBase::stringFromJson(item));
        }
    }
    setArrivalLocationId(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_location_id"))));
    std::shared_ptr<RequestTransportation> newTransportation(new RequestTransportation());
    newTransportation->fromMultiPart(multipart, utility::conversions::to_string_t("transportation."));
    setTransportation( newTransportation );
    setArrivalTime(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_time"))));
    {
        m_Properties.clear();

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("properties"))));
        for( auto& item : jsonArray.as_array() )
        {
            if(item.is_null())
            {
                m_Properties.push_back( std::shared_ptr<RequestRoutesProperty>(nullptr) );
            }
            else
            {
                std::shared_ptr<RequestRoutesProperty> newItem(new RequestRoutesProperty());
                newItem->fromJson(item);
                m_Properties.push_back( newItem );
            }
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("range")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("range")))
        {
            std::shared_ptr<RequestRangeFull> newItem(new RequestRangeFull());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("range."));
            setRange( newItem );
        }
    }
}

utility::string_t RequestRoutesArrivalSearch::getId() const
{
    return m_Id;
}

void RequestRoutesArrivalSearch::setId(const utility::string_t& value)
{
    m_Id = value;
    
}

std::vector<utility::string_t>& RequestRoutesArrivalSearch::getDepartureLocationIds()
{
    return m_Departure_location_ids;
}

void RequestRoutesArrivalSearch::setDepartureLocationIds(const std::vector<utility::string_t>& value)
{
    m_Departure_location_ids = value;
    
}

utility::string_t RequestRoutesArrivalSearch::getArrivalLocationId() const
{
    return m_Arrival_location_id;
}

void RequestRoutesArrivalSearch::setArrivalLocationId(const utility::string_t& value)
{
    m_Arrival_location_id = value;
    
}

std::shared_ptr<RequestTransportation> RequestRoutesArrivalSearch::getTransportation() const
{
    return m_Transportation;
}

void RequestRoutesArrivalSearch::setTransportation(const std::shared_ptr<RequestTransportation>& value)
{
    m_Transportation = value;
    
}

utility::datetime RequestRoutesArrivalSearch::getArrivalTime() const
{
    return m_Arrival_time;
}

void RequestRoutesArrivalSearch::setArrivalTime(const utility::datetime& value)
{
    m_Arrival_time = value;
    
}

std::vector<std::shared_ptr<RequestRoutesProperty>>& RequestRoutesArrivalSearch::getProperties()
{
    return m_Properties;
}

void RequestRoutesArrivalSearch::setProperties(const std::vector<std::shared_ptr<RequestRoutesProperty>>& value)
{
    m_Properties = value;
    
}

std::shared_ptr<RequestRangeFull> RequestRoutesArrivalSearch::getRange() const
{
    return m_Range;
}

void RequestRoutesArrivalSearch::setRange(const std::shared_ptr<RequestRangeFull>& value)
{
    m_Range = value;
    m_RangeIsSet = true;
}

bool RequestRoutesArrivalSearch::rangeIsSet() const
{
    return m_RangeIsSet;
}

void RequestRoutesArrivalSearch::unsetRange()
{
    m_RangeIsSet = false;
}

}
}
}
}
