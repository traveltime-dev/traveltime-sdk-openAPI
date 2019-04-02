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
 * OAIRequestTimeFilterPostcodesArrivalSearch.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterPostcodesArrivalSearch_H
#define OAIRequestTimeFilterPostcodesArrivalSearch_H

#include <QJsonObject>


#include "OAIRequestRangeFull.h"
#include "OAIRequestTimeFilterPostcodesProperty.h"
#include "OAIRequestTransportation.h"
#include <QDateTime>
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterPostcodesArrivalSearch: public OAIObject {
public:
    OAIRequestTimeFilterPostcodesArrivalSearch();
    OAIRequestTimeFilterPostcodesArrivalSearch(QString json);
    ~OAIRequestTimeFilterPostcodesArrivalSearch() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);

    OAIRequestTransportation getTransportation() const;
    void setTransportation(const OAIRequestTransportation &transportation);

    qint32 getTravelTime() const;
    void setTravelTime(const qint32 &travel_time);

    QDateTime getArrivalTime() const;
    void setArrivalTime(const QDateTime &arrival_time);

    QList<OAIRequestTimeFilterPostcodesProperty> getProperties() const;
    void setProperties(const QList<OAIRequestTimeFilterPostcodesProperty> &properties);

    OAIRequestRangeFull getRange() const;
    void setRange(const OAIRequestRangeFull &range);

    virtual bool isSet() const override;

private:
    QString id;
    bool m_id_isSet;

    OAIRequestTransportation transportation;
    bool m_transportation_isSet;

    qint32 travel_time;
    bool m_travel_time_isSet;

    QDateTime arrival_time;
    bool m_arrival_time_isSet;

    QList<OAIRequestTimeFilterPostcodesProperty> properties;
    bool m_properties_isSet;

    OAIRequestRangeFull range;
    bool m_range_isSet;

};

}

#endif // OAIRequestTimeFilterPostcodesArrivalSearch_H