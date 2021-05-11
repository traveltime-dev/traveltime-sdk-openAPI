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



#include "RequestTimeFilterPostcodeDistricts.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




RequestTimeFilterPostcodeDistricts::RequestTimeFilterPostcodeDistricts()
{
    m_Departure_searchesIsSet = false;
    m_Arrival_searchesIsSet = false;
}

RequestTimeFilterPostcodeDistricts::~RequestTimeFilterPostcodeDistricts()
{
}

void RequestTimeFilterPostcodeDistricts::validate()
{
    // TODO: implement validation
}

web::json::value RequestTimeFilterPostcodeDistricts::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Departure_searchesIsSet)
    {
        val[utility::conversions::to_string_t("departure_searches")] = ModelBase::toJson(m_Departure_searches);
    }
    if(m_Arrival_searchesIsSet)
    {
        val[utility::conversions::to_string_t("arrival_searches")] = ModelBase::toJson(m_Arrival_searches);
    }

    return val;
}

bool RequestTimeFilterPostcodeDistricts::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("departure_searches")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departure_searches"));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>> refVal_departure_searches;
            ok &= ModelBase::fromJson(fieldValue, refVal_departure_searches);
            setDepartureSearches(refVal_departure_searches);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("arrival_searches")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("arrival_searches"));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>> refVal_arrival_searches;
            ok &= ModelBase::fromJson(fieldValue, refVal_arrival_searches);
            setArrivalSearches(refVal_arrival_searches);
        }
    }
    return ok;
}

void RequestTimeFilterPostcodeDistricts::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Departure_searchesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_searches"), m_Departure_searches));
    }
    if(m_Arrival_searchesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_searches"), m_Arrival_searches));
    }
}

bool RequestTimeFilterPostcodeDistricts::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("departure_searches")))
    {
        std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>> refVal_departure_searches;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_searches")), refVal_departure_searches );
        setDepartureSearches(refVal_departure_searches);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("arrival_searches")))
    {
        std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>> refVal_arrival_searches;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_searches")), refVal_arrival_searches );
        setArrivalSearches(refVal_arrival_searches);
    }
    return ok;
}

std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>>& RequestTimeFilterPostcodeDistricts::getDepartureSearches()
{
    return m_Departure_searches;
}

void RequestTimeFilterPostcodeDistricts::setDepartureSearches(const std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsDepartureSearch>>& value)
{
    m_Departure_searches = value;
    m_Departure_searchesIsSet = true;
}

bool RequestTimeFilterPostcodeDistricts::departureSearchesIsSet() const
{
    return m_Departure_searchesIsSet;
}

void RequestTimeFilterPostcodeDistricts::unsetDeparture_searches()
{
    m_Departure_searchesIsSet = false;
}
std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>>& RequestTimeFilterPostcodeDistricts::getArrivalSearches()
{
    return m_Arrival_searches;
}

void RequestTimeFilterPostcodeDistricts::setArrivalSearches(const std::vector<std::shared_ptr<RequestTimeFilterPostcodeDistrictsArrivalSearch>>& value)
{
    m_Arrival_searches = value;
    m_Arrival_searchesIsSet = true;
}

bool RequestTimeFilterPostcodeDistricts::arrivalSearchesIsSet() const
{
    return m_Arrival_searchesIsSet;
}

void RequestTimeFilterPostcodeDistricts::unsetArrival_searches()
{
    m_Arrival_searchesIsSet = false;
}
}
}
}
}


