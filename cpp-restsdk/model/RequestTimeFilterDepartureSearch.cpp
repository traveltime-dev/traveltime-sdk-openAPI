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



#include "RequestTimeFilterDepartureSearch.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




RequestTimeFilterDepartureSearch::RequestTimeFilterDepartureSearch()
{
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Departure_location_id = utility::conversions::to_string_t("");
    m_Departure_location_idIsSet = false;
    m_Arrival_location_idsIsSet = false;
    m_TransportationIsSet = false;
    m_Travel_time = 0;
    m_Travel_timeIsSet = false;
    m_Departure_time = utility::datetime();
    m_Departure_timeIsSet = false;
    m_PropertiesIsSet = false;
    m_RangeIsSet = false;
}

RequestTimeFilterDepartureSearch::~RequestTimeFilterDepartureSearch()
{
}

void RequestTimeFilterDepartureSearch::validate()
{
    // TODO: implement validation
}

web::json::value RequestTimeFilterDepartureSearch::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    if(m_Departure_location_idIsSet)
    {
        val[utility::conversions::to_string_t("departure_location_id")] = ModelBase::toJson(m_Departure_location_id);
    }
    if(m_Arrival_location_idsIsSet)
    {
        val[utility::conversions::to_string_t("arrival_location_ids")] = ModelBase::toJson(m_Arrival_location_ids);
    }
    if(m_TransportationIsSet)
    {
        val[utility::conversions::to_string_t("transportation")] = ModelBase::toJson(m_Transportation);
    }
    if(m_Travel_timeIsSet)
    {
        val[utility::conversions::to_string_t("travel_time")] = ModelBase::toJson(m_Travel_time);
    }
    if(m_Departure_timeIsSet)
    {
        val[utility::conversions::to_string_t("departure_time")] = ModelBase::toJson(m_Departure_time);
    }
    if(m_PropertiesIsSet)
    {
        val[utility::conversions::to_string_t("properties")] = ModelBase::toJson(m_Properties);
    }
    if(m_RangeIsSet)
    {
        val[utility::conversions::to_string_t("range")] = ModelBase::toJson(m_Range);
    }

    return val;
}

bool RequestTimeFilterDepartureSearch::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("departure_location_id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departure_location_id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_departure_location_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_departure_location_id);
            setDepartureLocationId(refVal_departure_location_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("arrival_location_ids")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("arrival_location_ids"));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_arrival_location_ids;
            ok &= ModelBase::fromJson(fieldValue, refVal_arrival_location_ids);
            setArrivalLocationIds(refVal_arrival_location_ids);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("transportation")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("transportation"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<RequestTransportation> refVal_transportation;
            ok &= ModelBase::fromJson(fieldValue, refVal_transportation);
            setTransportation(refVal_transportation);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("travel_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("travel_time"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_travel_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_travel_time);
            setTravelTime(refVal_travel_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("departure_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departure_time"));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_departure_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_departure_time);
            setDepartureTime(refVal_departure_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("properties")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("properties"));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<RequestTimeFilterProperty>> refVal_properties;
            ok &= ModelBase::fromJson(fieldValue, refVal_properties);
            setProperties(refVal_properties);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("range")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("range"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<RequestRangeFull> refVal_range;
            ok &= ModelBase::fromJson(fieldValue, refVal_range);
            setRange(refVal_range);
        }
    }
    return ok;
}

void RequestTimeFilterDepartureSearch::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    if(m_Departure_location_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_location_id"), m_Departure_location_id));
    }
    if(m_Arrival_location_idsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_location_ids"), m_Arrival_location_ids));
    }
    if(m_TransportationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("transportation"), m_Transportation));
    }
    if(m_Travel_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("travel_time"), m_Travel_time));
    }
    if(m_Departure_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_time"), m_Departure_time));
    }
    if(m_PropertiesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("properties"), m_Properties));
    }
    if(m_RangeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("range"), m_Range));
    }
}

bool RequestTimeFilterDepartureSearch::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        utility::string_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("id")), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("departure_location_id")))
    {
        utility::string_t refVal_departure_location_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_location_id")), refVal_departure_location_id );
        setDepartureLocationId(refVal_departure_location_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("arrival_location_ids")))
    {
        std::vector<utility::string_t> refVal_arrival_location_ids;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_location_ids")), refVal_arrival_location_ids );
        setArrivalLocationIds(refVal_arrival_location_ids);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("transportation")))
    {
        std::shared_ptr<RequestTransportation> refVal_transportation;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("transportation")), refVal_transportation );
        setTransportation(refVal_transportation);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("travel_time")))
    {
        int32_t refVal_travel_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("travel_time")), refVal_travel_time );
        setTravelTime(refVal_travel_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("departure_time")))
    {
        utility::datetime refVal_departure_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_time")), refVal_departure_time );
        setDepartureTime(refVal_departure_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("properties")))
    {
        std::vector<std::shared_ptr<RequestTimeFilterProperty>> refVal_properties;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("properties")), refVal_properties );
        setProperties(refVal_properties);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("range")))
    {
        std::shared_ptr<RequestRangeFull> refVal_range;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("range")), refVal_range );
        setRange(refVal_range);
    }
    return ok;
}

utility::string_t RequestTimeFilterDepartureSearch::getId() const
{
    return m_Id;
}

void RequestTimeFilterDepartureSearch::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool RequestTimeFilterDepartureSearch::idIsSet() const
{
    return m_IdIsSet;
}

void RequestTimeFilterDepartureSearch::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t RequestTimeFilterDepartureSearch::getDepartureLocationId() const
{
    return m_Departure_location_id;
}

void RequestTimeFilterDepartureSearch::setDepartureLocationId(const utility::string_t& value)
{
    m_Departure_location_id = value;
    m_Departure_location_idIsSet = true;
}

bool RequestTimeFilterDepartureSearch::departureLocationIdIsSet() const
{
    return m_Departure_location_idIsSet;
}

void RequestTimeFilterDepartureSearch::unsetDeparture_location_id()
{
    m_Departure_location_idIsSet = false;
}
std::vector<utility::string_t>& RequestTimeFilterDepartureSearch::getArrivalLocationIds()
{
    return m_Arrival_location_ids;
}

void RequestTimeFilterDepartureSearch::setArrivalLocationIds(const std::vector<utility::string_t>& value)
{
    m_Arrival_location_ids = value;
    m_Arrival_location_idsIsSet = true;
}

bool RequestTimeFilterDepartureSearch::arrivalLocationIdsIsSet() const
{
    return m_Arrival_location_idsIsSet;
}

void RequestTimeFilterDepartureSearch::unsetArrival_location_ids()
{
    m_Arrival_location_idsIsSet = false;
}
std::shared_ptr<RequestTransportation> RequestTimeFilterDepartureSearch::getTransportation() const
{
    return m_Transportation;
}

void RequestTimeFilterDepartureSearch::setTransportation(const std::shared_ptr<RequestTransportation>& value)
{
    m_Transportation = value;
    m_TransportationIsSet = true;
}

bool RequestTimeFilterDepartureSearch::transportationIsSet() const
{
    return m_TransportationIsSet;
}

void RequestTimeFilterDepartureSearch::unsetTransportation()
{
    m_TransportationIsSet = false;
}
int32_t RequestTimeFilterDepartureSearch::getTravelTime() const
{
    return m_Travel_time;
}

void RequestTimeFilterDepartureSearch::setTravelTime(int32_t value)
{
    m_Travel_time = value;
    m_Travel_timeIsSet = true;
}

bool RequestTimeFilterDepartureSearch::travelTimeIsSet() const
{
    return m_Travel_timeIsSet;
}

void RequestTimeFilterDepartureSearch::unsetTravel_time()
{
    m_Travel_timeIsSet = false;
}
utility::datetime RequestTimeFilterDepartureSearch::getDepartureTime() const
{
    return m_Departure_time;
}

void RequestTimeFilterDepartureSearch::setDepartureTime(const utility::datetime& value)
{
    m_Departure_time = value;
    m_Departure_timeIsSet = true;
}

bool RequestTimeFilterDepartureSearch::departureTimeIsSet() const
{
    return m_Departure_timeIsSet;
}

void RequestTimeFilterDepartureSearch::unsetDeparture_time()
{
    m_Departure_timeIsSet = false;
}
std::vector<std::shared_ptr<RequestTimeFilterProperty>>& RequestTimeFilterDepartureSearch::getProperties()
{
    return m_Properties;
}

void RequestTimeFilterDepartureSearch::setProperties(const std::vector<std::shared_ptr<RequestTimeFilterProperty>>& value)
{
    m_Properties = value;
    m_PropertiesIsSet = true;
}

bool RequestTimeFilterDepartureSearch::propertiesIsSet() const
{
    return m_PropertiesIsSet;
}

void RequestTimeFilterDepartureSearch::unsetProperties()
{
    m_PropertiesIsSet = false;
}
std::shared_ptr<RequestRangeFull> RequestTimeFilterDepartureSearch::getRange() const
{
    return m_Range;
}

void RequestTimeFilterDepartureSearch::setRange(const std::shared_ptr<RequestRangeFull>& value)
{
    m_Range = value;
    m_RangeIsSet = true;
}

bool RequestTimeFilterDepartureSearch::rangeIsSet() const
{
    return m_RangeIsSet;
}

void RequestTimeFilterDepartureSearch::unsetRange()
{
    m_RangeIsSet = false;
}
}
}
}
}


