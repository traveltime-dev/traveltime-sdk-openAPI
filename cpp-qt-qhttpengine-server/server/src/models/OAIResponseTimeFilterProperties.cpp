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

#include "OAIResponseTimeFilterProperties.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeFilterProperties::OAIResponseTimeFilterProperties(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeFilterProperties::OAIResponseTimeFilterProperties() {
    this->initializeModel();
}

OAIResponseTimeFilterProperties::~OAIResponseTimeFilterProperties() {}

void OAIResponseTimeFilterProperties::initializeModel() {

    m_travel_time_isSet = false;
    m_travel_time_isValid = false;

    m_distance_isSet = false;
    m_distance_isValid = false;

    m_distance_breakdown_isSet = false;
    m_distance_breakdown_isValid = false;

    m_fares_isSet = false;
    m_fares_isValid = false;

    m_route_isSet = false;
    m_route_isValid = false;
}

void OAIResponseTimeFilterProperties::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeFilterProperties::fromJsonObject(QJsonObject json) {

    m_travel_time_isValid = ::OpenAPI::fromJsonValue(travel_time, json[QString("travel_time")]);
    m_travel_time_isSet = !json[QString("travel_time")].isNull() && m_travel_time_isValid;

    m_distance_isValid = ::OpenAPI::fromJsonValue(distance, json[QString("distance")]);
    m_distance_isSet = !json[QString("distance")].isNull() && m_distance_isValid;

    m_distance_breakdown_isValid = ::OpenAPI::fromJsonValue(distance_breakdown, json[QString("distance_breakdown")]);
    m_distance_breakdown_isSet = !json[QString("distance_breakdown")].isNull() && m_distance_breakdown_isValid;

    m_fares_isValid = ::OpenAPI::fromJsonValue(fares, json[QString("fares")]);
    m_fares_isSet = !json[QString("fares")].isNull() && m_fares_isValid;

    m_route_isValid = ::OpenAPI::fromJsonValue(route, json[QString("route")]);
    m_route_isSet = !json[QString("route")].isNull() && m_route_isValid;
}

QString OAIResponseTimeFilterProperties::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeFilterProperties::asJsonObject() const {
    QJsonObject obj;
    if (m_travel_time_isSet) {
        obj.insert(QString("travel_time"), ::OpenAPI::toJsonValue(travel_time));
    }
    if (m_distance_isSet) {
        obj.insert(QString("distance"), ::OpenAPI::toJsonValue(distance));
    }
    if (distance_breakdown.size() > 0) {
        obj.insert(QString("distance_breakdown"), ::OpenAPI::toJsonValue(distance_breakdown));
    }
    if (fares.isSet()) {
        obj.insert(QString("fares"), ::OpenAPI::toJsonValue(fares));
    }
    if (route.isSet()) {
        obj.insert(QString("route"), ::OpenAPI::toJsonValue(route));
    }
    return obj;
}

qint32 OAIResponseTimeFilterProperties::getTravelTime() const {
    return travel_time;
}
void OAIResponseTimeFilterProperties::setTravelTime(const qint32 &travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

bool OAIResponseTimeFilterProperties::is_travel_time_Set() const{
    return m_travel_time_isSet;
}

bool OAIResponseTimeFilterProperties::is_travel_time_Valid() const{
    return m_travel_time_isValid;
}

qint32 OAIResponseTimeFilterProperties::getDistance() const {
    return distance;
}
void OAIResponseTimeFilterProperties::setDistance(const qint32 &distance) {
    this->distance = distance;
    this->m_distance_isSet = true;
}

bool OAIResponseTimeFilterProperties::is_distance_Set() const{
    return m_distance_isSet;
}

bool OAIResponseTimeFilterProperties::is_distance_Valid() const{
    return m_distance_isValid;
}

QList<OAIResponseDistanceBreakdownItem> OAIResponseTimeFilterProperties::getDistanceBreakdown() const {
    return distance_breakdown;
}
void OAIResponseTimeFilterProperties::setDistanceBreakdown(const QList<OAIResponseDistanceBreakdownItem> &distance_breakdown) {
    this->distance_breakdown = distance_breakdown;
    this->m_distance_breakdown_isSet = true;
}

bool OAIResponseTimeFilterProperties::is_distance_breakdown_Set() const{
    return m_distance_breakdown_isSet;
}

bool OAIResponseTimeFilterProperties::is_distance_breakdown_Valid() const{
    return m_distance_breakdown_isValid;
}

OAIResponseFares OAIResponseTimeFilterProperties::getFares() const {
    return fares;
}
void OAIResponseTimeFilterProperties::setFares(const OAIResponseFares &fares) {
    this->fares = fares;
    this->m_fares_isSet = true;
}

bool OAIResponseTimeFilterProperties::is_fares_Set() const{
    return m_fares_isSet;
}

bool OAIResponseTimeFilterProperties::is_fares_Valid() const{
    return m_fares_isValid;
}

OAIResponseRoute OAIResponseTimeFilterProperties::getRoute() const {
    return route;
}
void OAIResponseTimeFilterProperties::setRoute(const OAIResponseRoute &route) {
    this->route = route;
    this->m_route_isSet = true;
}

bool OAIResponseTimeFilterProperties::is_route_Set() const{
    return m_route_isSet;
}

bool OAIResponseTimeFilterProperties::is_route_Valid() const{
    return m_route_isValid;
}

bool OAIResponseTimeFilterProperties::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_travel_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_distance_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (distance_breakdown.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (fares.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (route.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseTimeFilterProperties::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI