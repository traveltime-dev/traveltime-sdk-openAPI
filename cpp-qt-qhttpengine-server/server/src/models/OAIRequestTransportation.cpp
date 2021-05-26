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

#include "OAIRequestTransportation.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestTransportation::OAIRequestTransportation(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestTransportation::OAIRequestTransportation() {
    this->initializeModel();
}

OAIRequestTransportation::~OAIRequestTransportation() {}

void OAIRequestTransportation::initializeModel() {

    m_type_isSet = false;
    m_type_isValid = false;

    m_disable_border_crossing_isSet = false;
    m_disable_border_crossing_isValid = false;

    m_pt_change_delay_isSet = false;
    m_pt_change_delay_isValid = false;

    m_walking_time_isSet = false;
    m_walking_time_isValid = false;

    m_driving_time_to_station_isSet = false;
    m_driving_time_to_station_isValid = false;

    m_cycling_time_to_station_isSet = false;
    m_cycling_time_to_station_isValid = false;

    m_parking_time_isSet = false;
    m_parking_time_isValid = false;

    m_boarding_time_isSet = false;
    m_boarding_time_isValid = false;
}

void OAIRequestTransportation::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRequestTransportation::fromJsonObject(QJsonObject json) {

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_disable_border_crossing_isValid = ::OpenAPI::fromJsonValue(disable_border_crossing, json[QString("disable_border_crossing")]);
    m_disable_border_crossing_isSet = !json[QString("disable_border_crossing")].isNull() && m_disable_border_crossing_isValid;

    m_pt_change_delay_isValid = ::OpenAPI::fromJsonValue(pt_change_delay, json[QString("pt_change_delay")]);
    m_pt_change_delay_isSet = !json[QString("pt_change_delay")].isNull() && m_pt_change_delay_isValid;

    m_walking_time_isValid = ::OpenAPI::fromJsonValue(walking_time, json[QString("walking_time")]);
    m_walking_time_isSet = !json[QString("walking_time")].isNull() && m_walking_time_isValid;

    m_driving_time_to_station_isValid = ::OpenAPI::fromJsonValue(driving_time_to_station, json[QString("driving_time_to_station")]);
    m_driving_time_to_station_isSet = !json[QString("driving_time_to_station")].isNull() && m_driving_time_to_station_isValid;

    m_cycling_time_to_station_isValid = ::OpenAPI::fromJsonValue(cycling_time_to_station, json[QString("cycling_time_to_station")]);
    m_cycling_time_to_station_isSet = !json[QString("cycling_time_to_station")].isNull() && m_cycling_time_to_station_isValid;

    m_parking_time_isValid = ::OpenAPI::fromJsonValue(parking_time, json[QString("parking_time")]);
    m_parking_time_isSet = !json[QString("parking_time")].isNull() && m_parking_time_isValid;

    m_boarding_time_isValid = ::OpenAPI::fromJsonValue(boarding_time, json[QString("boarding_time")]);
    m_boarding_time_isSet = !json[QString("boarding_time")].isNull() && m_boarding_time_isValid;
}

QString OAIRequestTransportation::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRequestTransportation::asJsonObject() const {
    QJsonObject obj;
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_disable_border_crossing_isSet) {
        obj.insert(QString("disable_border_crossing"), ::OpenAPI::toJsonValue(disable_border_crossing));
    }
    if (m_pt_change_delay_isSet) {
        obj.insert(QString("pt_change_delay"), ::OpenAPI::toJsonValue(pt_change_delay));
    }
    if (m_walking_time_isSet) {
        obj.insert(QString("walking_time"), ::OpenAPI::toJsonValue(walking_time));
    }
    if (m_driving_time_to_station_isSet) {
        obj.insert(QString("driving_time_to_station"), ::OpenAPI::toJsonValue(driving_time_to_station));
    }
    if (m_cycling_time_to_station_isSet) {
        obj.insert(QString("cycling_time_to_station"), ::OpenAPI::toJsonValue(cycling_time_to_station));
    }
    if (m_parking_time_isSet) {
        obj.insert(QString("parking_time"), ::OpenAPI::toJsonValue(parking_time));
    }
    if (m_boarding_time_isSet) {
        obj.insert(QString("boarding_time"), ::OpenAPI::toJsonValue(boarding_time));
    }
    return obj;
}

QString OAIRequestTransportation::getType() const {
    return type;
}
void OAIRequestTransportation::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIRequestTransportation::is_type_Set() const{
    return m_type_isSet;
}

bool OAIRequestTransportation::is_type_Valid() const{
    return m_type_isValid;
}

bool OAIRequestTransportation::isDisableBorderCrossing() const {
    return disable_border_crossing;
}
void OAIRequestTransportation::setDisableBorderCrossing(const bool &disable_border_crossing) {
    this->disable_border_crossing = disable_border_crossing;
    this->m_disable_border_crossing_isSet = true;
}

bool OAIRequestTransportation::is_disable_border_crossing_Set() const{
    return m_disable_border_crossing_isSet;
}

bool OAIRequestTransportation::is_disable_border_crossing_Valid() const{
    return m_disable_border_crossing_isValid;
}

qint32 OAIRequestTransportation::getPtChangeDelay() const {
    return pt_change_delay;
}
void OAIRequestTransportation::setPtChangeDelay(const qint32 &pt_change_delay) {
    this->pt_change_delay = pt_change_delay;
    this->m_pt_change_delay_isSet = true;
}

bool OAIRequestTransportation::is_pt_change_delay_Set() const{
    return m_pt_change_delay_isSet;
}

bool OAIRequestTransportation::is_pt_change_delay_Valid() const{
    return m_pt_change_delay_isValid;
}

qint32 OAIRequestTransportation::getWalkingTime() const {
    return walking_time;
}
void OAIRequestTransportation::setWalkingTime(const qint32 &walking_time) {
    this->walking_time = walking_time;
    this->m_walking_time_isSet = true;
}

bool OAIRequestTransportation::is_walking_time_Set() const{
    return m_walking_time_isSet;
}

bool OAIRequestTransportation::is_walking_time_Valid() const{
    return m_walking_time_isValid;
}

qint32 OAIRequestTransportation::getDrivingTimeToStation() const {
    return driving_time_to_station;
}
void OAIRequestTransportation::setDrivingTimeToStation(const qint32 &driving_time_to_station) {
    this->driving_time_to_station = driving_time_to_station;
    this->m_driving_time_to_station_isSet = true;
}

bool OAIRequestTransportation::is_driving_time_to_station_Set() const{
    return m_driving_time_to_station_isSet;
}

bool OAIRequestTransportation::is_driving_time_to_station_Valid() const{
    return m_driving_time_to_station_isValid;
}

qint32 OAIRequestTransportation::getCyclingTimeToStation() const {
    return cycling_time_to_station;
}
void OAIRequestTransportation::setCyclingTimeToStation(const qint32 &cycling_time_to_station) {
    this->cycling_time_to_station = cycling_time_to_station;
    this->m_cycling_time_to_station_isSet = true;
}

bool OAIRequestTransportation::is_cycling_time_to_station_Set() const{
    return m_cycling_time_to_station_isSet;
}

bool OAIRequestTransportation::is_cycling_time_to_station_Valid() const{
    return m_cycling_time_to_station_isValid;
}

qint32 OAIRequestTransportation::getParkingTime() const {
    return parking_time;
}
void OAIRequestTransportation::setParkingTime(const qint32 &parking_time) {
    this->parking_time = parking_time;
    this->m_parking_time_isSet = true;
}

bool OAIRequestTransportation::is_parking_time_Set() const{
    return m_parking_time_isSet;
}

bool OAIRequestTransportation::is_parking_time_Valid() const{
    return m_parking_time_isValid;
}

qint32 OAIRequestTransportation::getBoardingTime() const {
    return boarding_time;
}
void OAIRequestTransportation::setBoardingTime(const qint32 &boarding_time) {
    this->boarding_time = boarding_time;
    this->m_boarding_time_isSet = true;
}

bool OAIRequestTransportation::is_boarding_time_Set() const{
    return m_boarding_time_isSet;
}

bool OAIRequestTransportation::is_boarding_time_Valid() const{
    return m_boarding_time_isValid;
}

bool OAIRequestTransportation::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_disable_border_crossing_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_pt_change_delay_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_walking_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_driving_time_to_station_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_cycling_time_to_station_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_parking_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_boarding_time_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRequestTransportation::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_type_isValid && true;
}

} // namespace OpenAPI