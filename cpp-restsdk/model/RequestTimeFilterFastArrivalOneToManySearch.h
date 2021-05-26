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
 * RequestTimeFilterFastArrivalOneToManySearch.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFastArrivalOneToManySearch_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFastArrivalOneToManySearch_H_


#include "../ModelBase.h"

#include "RequestTimeFilterFastProperty.h"
#include "RequestArrivalTimePeriod.h"
#include <cpprest/details/basic_types.h>
#include "RequestTransportationFast.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  RequestTimeFilterFastArrivalOneToManySearch
    : public ModelBase
{
public:
    RequestTimeFilterFastArrivalOneToManySearch();
    virtual ~RequestTimeFilterFastArrivalOneToManySearch();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// RequestTimeFilterFastArrivalOneToManySearch members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getDepartureLocationId() const;
    bool departureLocationIdIsSet() const;
    void unsetDeparture_location_id();

    void setDepartureLocationId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<utility::string_t>& getArrivalLocationIds();
    bool arrivalLocationIdsIsSet() const;
    void unsetArrival_location_ids();

    void setArrivalLocationIds(const std::vector<utility::string_t>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestTransportationFast> getTransportation() const;
    bool transportationIsSet() const;
    void unsetTransportation();

    void setTransportation(const std::shared_ptr<RequestTransportationFast>& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTravelTime() const;
    bool travelTimeIsSet() const;
    void unsetTravel_time();

    void setTravelTime(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<RequestArrivalTimePeriod> getArrivalTimePeriod() const;
    bool arrivalTimePeriodIsSet() const;
    void unsetArrival_time_period();

    void setArrivalTimePeriod(const std::shared_ptr<RequestArrivalTimePeriod>& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<RequestTimeFilterFastProperty>>& getProperties();
    bool propertiesIsSet() const;
    void unsetProperties();

    void setProperties(const std::vector<std::shared_ptr<RequestTimeFilterFastProperty>>& value);


protected:
    utility::string_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_Departure_location_id;
    bool m_Departure_location_idIsSet;
    std::vector<utility::string_t> m_Arrival_location_ids;
    bool m_Arrival_location_idsIsSet;
    std::shared_ptr<RequestTransportationFast> m_Transportation;
    bool m_TransportationIsSet;
    int32_t m_Travel_time;
    bool m_Travel_timeIsSet;
    std::shared_ptr<RequestArrivalTimePeriod> m_Arrival_time_period;
    bool m_Arrival_time_periodIsSet;
    std::vector<std::shared_ptr<RequestTimeFilterFastProperty>> m_Properties;
    bool m_PropertiesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RequestTimeFilterFastArrivalOneToManySearch_H_ */
