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

#include "OAIResponseRoutesProperties.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseRoutesProperties::OAIResponseRoutesProperties(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseRoutesProperties::OAIResponseRoutesProperties() {
    this->initializeModel();
}

OAIResponseRoutesProperties::~OAIResponseRoutesProperties() {}

void OAIResponseRoutesProperties::initializeModel() {

    m_travel_time_isSet = false;
    m_travel_time_isValid = false;

    m_distance_isSet = false;
    m_distance_isValid = false;

    m_fares_isSet = false;
    m_fares_isValid = false;

    m_route_isSet = false;
    m_route_isValid = false;
}

void OAIResponseRoutesProperties::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseRoutesProperties::fromJsonObject(QJsonObject json) {

    m_travel_time_isValid = ::OpenAPI::fromJsonValue(travel_time, json[QString("travel_time")]);
    m_travel_time_isSet = !json[QString("travel_time")].isNull() && m_travel_time_isValid;

    m_distance_isValid = ::OpenAPI::fromJsonValue(distance, json[QString("distance")]);
    m_distance_isSet = !json[QString("distance")].isNull() && m_distance_isValid;

    m_fares_isValid = ::OpenAPI::fromJsonValue(fares, json[QString("fares")]);
    m_fares_isSet = !json[QString("fares")].isNull() && m_fares_isValid;

    m_route_isValid = ::OpenAPI::fromJsonValue(route, json[QString("route")]);
    m_route_isSet = !json[QString("route")].isNull() && m_route_isValid;
}

QString OAIResponseRoutesProperties::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseRoutesProperties::asJsonObject() const {
    QJsonObject obj;
    if (m_travel_time_isSet) {
        obj.insert(QString("travel_time"), ::OpenAPI::toJsonValue(travel_time));
    }
    if (m_distance_isSet) {
        obj.insert(QString("distance"), ::OpenAPI::toJsonValue(distance));
    }
    if (fares.isSet()) {
        obj.insert(QString("fares"), ::OpenAPI::toJsonValue(fares));
    }
    if (route.isSet()) {
        obj.insert(QString("route"), ::OpenAPI::toJsonValue(route));
    }
    return obj;
}

qint32 OAIResponseRoutesProperties::getTravelTime() const {
    return travel_time;
}
void OAIResponseRoutesProperties::setTravelTime(const qint32 &travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

bool OAIResponseRoutesProperties::is_travel_time_Set() const{
    return m_travel_time_isSet;
}

bool OAIResponseRoutesProperties::is_travel_time_Valid() const{
    return m_travel_time_isValid;
}

qint32 OAIResponseRoutesProperties::getDistance() const {
    return distance;
}
void OAIResponseRoutesProperties::setDistance(const qint32 &distance) {
    this->distance = distance;
    this->m_distance_isSet = true;
}

bool OAIResponseRoutesProperties::is_distance_Set() const{
    return m_distance_isSet;
}

bool OAIResponseRoutesProperties::is_distance_Valid() const{
    return m_distance_isValid;
}

OAIResponseFares OAIResponseRoutesProperties::getFares() const {
    return fares;
}
void OAIResponseRoutesProperties::setFares(const OAIResponseFares &fares) {
    this->fares = fares;
    this->m_fares_isSet = true;
}

bool OAIResponseRoutesProperties::is_fares_Set() const{
    return m_fares_isSet;
}

bool OAIResponseRoutesProperties::is_fares_Valid() const{
    return m_fares_isValid;
}

OAIResponseRoute OAIResponseRoutesProperties::getRoute() const {
    return route;
}
void OAIResponseRoutesProperties::setRoute(const OAIResponseRoute &route) {
    this->route = route;
    this->m_route_isSet = true;
}

bool OAIResponseRoutesProperties::is_route_Set() const{
    return m_route_isSet;
}

bool OAIResponseRoutesProperties::is_route_Valid() const{
    return m_route_isValid;
}

bool OAIResponseRoutesProperties::isSet() const {
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

bool OAIResponseRoutesProperties::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
