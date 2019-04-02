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

/*
 * OAIRequestRoutesDepartureSearch.h
 *
 * 
 */

#ifndef OAIRequestRoutesDepartureSearch_H
#define OAIRequestRoutesDepartureSearch_H

#include <QJsonObject>


#include "OAIRequestRangeFull.h"
#include "OAIRequestRoutesProperty.h"
#include "OAIRequestTransportation.h"
#include <QDateTime>
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestRoutesDepartureSearch: public OAIObject {
public:
    OAIRequestRoutesDepartureSearch();
    OAIRequestRoutesDepartureSearch(QString json);
    ~OAIRequestRoutesDepartureSearch() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);

    QString getDepartureLocationId() const;
    void setDepartureLocationId(const QString &departure_location_id);

    QList<QString> getArrivalLocationIds() const;
    void setArrivalLocationIds(const QList<QString> &arrival_location_ids);

    OAIRequestTransportation getTransportation() const;
    void setTransportation(const OAIRequestTransportation &transportation);

    QDateTime getDepartureTime() const;
    void setDepartureTime(const QDateTime &departure_time);

    QList<OAIRequestRoutesProperty> getProperties() const;
    void setProperties(const QList<OAIRequestRoutesProperty> &properties);

    OAIRequestRangeFull getRange() const;
    void setRange(const OAIRequestRangeFull &range);

    virtual bool isSet() const override;

private:
    QString id;
    bool m_id_isSet;

    QString departure_location_id;
    bool m_departure_location_id_isSet;

    QList<QString> arrival_location_ids;
    bool m_arrival_location_ids_isSet;

    OAIRequestTransportation transportation;
    bool m_transportation_isSet;

    QDateTime departure_time;
    bool m_departure_time_isSet;

    QList<OAIRequestRoutesProperty> properties;
    bool m_properties_isSet;

    OAIRequestRangeFull range;
    bool m_range_isSet;

};

}

#endif // OAIRequestRoutesDepartureSearch_H