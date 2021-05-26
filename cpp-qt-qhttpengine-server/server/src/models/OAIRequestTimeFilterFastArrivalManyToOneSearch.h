/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRequestTimeFilterFastArrivalManyToOneSearch.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterFastArrivalManyToOneSearch_H
#define OAIRequestTimeFilterFastArrivalManyToOneSearch_H

#include <QJsonObject>

#include "OAIRequestArrivalTimePeriod.h"
#include "OAIRequestTimeFilterFastProperty.h"
#include "OAIRequestTransportationFast.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterFastArrivalManyToOneSearch : public OAIObject {
public:
    OAIRequestTimeFilterFastArrivalManyToOneSearch();
    OAIRequestTimeFilterFastArrivalManyToOneSearch(QString json);
    ~OAIRequestTimeFilterFastArrivalManyToOneSearch() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getArrivalLocationId() const;
    void setArrivalLocationId(const QString &arrival_location_id);
    bool is_arrival_location_id_Set() const;
    bool is_arrival_location_id_Valid() const;

    QList<QString> getDepartureLocationIds() const;
    void setDepartureLocationIds(const QList<QString> &departure_location_ids);
    bool is_departure_location_ids_Set() const;
    bool is_departure_location_ids_Valid() const;

    OAIRequestTransportationFast getTransportation() const;
    void setTransportation(const OAIRequestTransportationFast &transportation);
    bool is_transportation_Set() const;
    bool is_transportation_Valid() const;

    qint32 getTravelTime() const;
    void setTravelTime(const qint32 &travel_time);
    bool is_travel_time_Set() const;
    bool is_travel_time_Valid() const;

    OAIRequestArrivalTimePeriod getArrivalTimePeriod() const;
    void setArrivalTimePeriod(const OAIRequestArrivalTimePeriod &arrival_time_period);
    bool is_arrival_time_period_Set() const;
    bool is_arrival_time_period_Valid() const;

    QList<OAIRequestTimeFilterFastProperty> getProperties() const;
    void setProperties(const QList<OAIRequestTimeFilterFastProperty> &properties);
    bool is_properties_Set() const;
    bool is_properties_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString arrival_location_id;
    bool m_arrival_location_id_isSet;
    bool m_arrival_location_id_isValid;

    QList<QString> departure_location_ids;
    bool m_departure_location_ids_isSet;
    bool m_departure_location_ids_isValid;

    OAIRequestTransportationFast transportation;
    bool m_transportation_isSet;
    bool m_transportation_isValid;

    qint32 travel_time;
    bool m_travel_time_isSet;
    bool m_travel_time_isValid;

    OAIRequestArrivalTimePeriod arrival_time_period;
    bool m_arrival_time_period_isSet;
    bool m_arrival_time_period_isValid;

    QList<OAIRequestTimeFilterFastProperty> properties;
    bool m_properties_isSet;
    bool m_properties_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestTimeFilterFastArrivalManyToOneSearch)

#endif // OAIRequestTimeFilterFastArrivalManyToOneSearch_H
