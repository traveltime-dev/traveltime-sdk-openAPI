/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRequestTimeFilterFastArrivalManyToOneSearch.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestTimeFilterFastArrivalManyToOneSearch::OAIRequestTimeFilterFastArrivalManyToOneSearch(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestTimeFilterFastArrivalManyToOneSearch::OAIRequestTimeFilterFastArrivalManyToOneSearch() {
    this->initializeModel();
}

OAIRequestTimeFilterFastArrivalManyToOneSearch::~OAIRequestTimeFilterFastArrivalManyToOneSearch() {}

void OAIRequestTimeFilterFastArrivalManyToOneSearch::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_arrival_location_id_isSet = false;
    m_arrival_location_id_isValid = false;

    m_departure_location_ids_isSet = false;
    m_departure_location_ids_isValid = false;

    m_transportation_isSet = false;
    m_transportation_isValid = false;

    m_travel_time_isSet = false;
    m_travel_time_isValid = false;

    m_arrival_time_period_isSet = false;
    m_arrival_time_period_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;
}

void OAIRequestTimeFilterFastArrivalManyToOneSearch::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRequestTimeFilterFastArrivalManyToOneSearch::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_arrival_location_id_isValid = ::OpenAPI::fromJsonValue(arrival_location_id, json[QString("arrival_location_id")]);
    m_arrival_location_id_isSet = !json[QString("arrival_location_id")].isNull() && m_arrival_location_id_isValid;

    m_departure_location_ids_isValid = ::OpenAPI::fromJsonValue(departure_location_ids, json[QString("departure_location_ids")]);
    m_departure_location_ids_isSet = !json[QString("departure_location_ids")].isNull() && m_departure_location_ids_isValid;

    m_transportation_isValid = ::OpenAPI::fromJsonValue(transportation, json[QString("transportation")]);
    m_transportation_isSet = !json[QString("transportation")].isNull() && m_transportation_isValid;

    m_travel_time_isValid = ::OpenAPI::fromJsonValue(travel_time, json[QString("travel_time")]);
    m_travel_time_isSet = !json[QString("travel_time")].isNull() && m_travel_time_isValid;

    m_arrival_time_period_isValid = ::OpenAPI::fromJsonValue(arrival_time_period, json[QString("arrival_time_period")]);
    m_arrival_time_period_isSet = !json[QString("arrival_time_period")].isNull() && m_arrival_time_period_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;
}

QString OAIRequestTimeFilterFastArrivalManyToOneSearch::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRequestTimeFilterFastArrivalManyToOneSearch::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_arrival_location_id_isSet) {
        obj.insert(QString("arrival_location_id"), ::OpenAPI::toJsonValue(arrival_location_id));
    }
    if (departure_location_ids.size() > 0) {
        obj.insert(QString("departure_location_ids"), ::OpenAPI::toJsonValue(departure_location_ids));
    }
    if (transportation.isSet()) {
        obj.insert(QString("transportation"), ::OpenAPI::toJsonValue(transportation));
    }
    if (m_travel_time_isSet) {
        obj.insert(QString("travel_time"), ::OpenAPI::toJsonValue(travel_time));
    }
    if (arrival_time_period.isSet()) {
        obj.insert(QString("arrival_time_period"), ::OpenAPI::toJsonValue(arrival_time_period));
    }
    if (properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    }
    return obj;
}

QString OAIRequestTimeFilterFastArrivalManyToOneSearch::getId() const {
    return id;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIRequestTimeFilterFastArrivalManyToOneSearch::getArrivalLocationId() const {
    return arrival_location_id;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setArrivalLocationId(const QString &arrival_location_id) {
    this->arrival_location_id = arrival_location_id;
    this->m_arrival_location_id_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_arrival_location_id_Set() const{
    return m_arrival_location_id_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_arrival_location_id_Valid() const{
    return m_arrival_location_id_isValid;
}

QList<QString> OAIRequestTimeFilterFastArrivalManyToOneSearch::getDepartureLocationIds() const {
    return departure_location_ids;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setDepartureLocationIds(const QList<QString> &departure_location_ids) {
    this->departure_location_ids = departure_location_ids;
    this->m_departure_location_ids_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_departure_location_ids_Set() const{
    return m_departure_location_ids_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_departure_location_ids_Valid() const{
    return m_departure_location_ids_isValid;
}

OAIRequestTransportationFast OAIRequestTimeFilterFastArrivalManyToOneSearch::getTransportation() const {
    return transportation;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setTransportation(const OAIRequestTransportationFast &transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_transportation_Set() const{
    return m_transportation_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_transportation_Valid() const{
    return m_transportation_isValid;
}

qint32 OAIRequestTimeFilterFastArrivalManyToOneSearch::getTravelTime() const {
    return travel_time;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setTravelTime(const qint32 &travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_travel_time_Set() const{
    return m_travel_time_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_travel_time_Valid() const{
    return m_travel_time_isValid;
}

OAIRequestArrivalTimePeriod OAIRequestTimeFilterFastArrivalManyToOneSearch::getArrivalTimePeriod() const {
    return arrival_time_period;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setArrivalTimePeriod(const OAIRequestArrivalTimePeriod &arrival_time_period) {
    this->arrival_time_period = arrival_time_period;
    this->m_arrival_time_period_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_arrival_time_period_Set() const{
    return m_arrival_time_period_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_arrival_time_period_Valid() const{
    return m_arrival_time_period_isValid;
}

QList<OAIRequestTimeFilterFastProperty> OAIRequestTimeFilterFastArrivalManyToOneSearch::getProperties() const {
    return properties;
}
void OAIRequestTimeFilterFastArrivalManyToOneSearch::setProperties(const QList<OAIRequestTimeFilterFastProperty> &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::is_properties_Valid() const{
    return m_properties_isValid;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_arrival_location_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (departure_location_ids.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (transportation.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_travel_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (arrival_time_period.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (properties.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRequestTimeFilterFastArrivalManyToOneSearch::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_arrival_location_id_isValid && m_departure_location_ids_isValid && m_transportation_isValid && m_travel_time_isValid && m_arrival_time_period_isValid && m_properties_isValid && true;
}

} // namespace OpenAPI
