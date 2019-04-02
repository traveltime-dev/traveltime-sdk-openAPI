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
 * OAIRequestRoutesArrivalSearch.h
 *
 * 
 */

#ifndef OAIRequestRoutesArrivalSearch_H
#define OAIRequestRoutesArrivalSearch_H

#include <QJsonObject>


#include "OAIRequestRangeFull.h"
#include "OAIRequestRoutesProperty.h"
#include "OAIRequestTransportation.h"
#include <QDateTime>
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestRoutesArrivalSearch: public OAIObject {
public:
    OAIRequestRoutesArrivalSearch();
    OAIRequestRoutesArrivalSearch(QString json);
    ~OAIRequestRoutesArrivalSearch() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);

    QList<QString> getDepartureLocationIds() const;
    void setDepartureLocationIds(const QList<QString> &departure_location_ids);

    QString getArrivalLocationId() const;
    void setArrivalLocationId(const QString &arrival_location_id);

    OAIRequestTransportation getTransportation() const;
    void setTransportation(const OAIRequestTransportation &transportation);

    QDateTime getArrivalTime() const;
    void setArrivalTime(const QDateTime &arrival_time);

    QList<OAIRequestRoutesProperty> getProperties() const;
    void setProperties(const QList<OAIRequestRoutesProperty> &properties);

    OAIRequestRangeFull getRange() const;
    void setRange(const OAIRequestRangeFull &range);

    virtual bool isSet() const override;

private:
    QString id;
    bool m_id_isSet;

    QList<QString> departure_location_ids;
    bool m_departure_location_ids_isSet;

    QString arrival_location_id;
    bool m_arrival_location_id_isSet;

    OAIRequestTransportation transportation;
    bool m_transportation_isSet;

    QDateTime arrival_time;
    bool m_arrival_time_isSet;

    QList<OAIRequestRoutesProperty> properties;
    bool m_properties_isSet;

    OAIRequestRangeFull range;
    bool m_range_isSet;

};

}

#endif // OAIRequestRoutesArrivalSearch_H