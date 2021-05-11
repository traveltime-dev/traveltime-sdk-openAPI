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

#include "OAIRequestRoutesArrivalSearch.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestRoutesArrivalSearch::OAIRequestRoutesArrivalSearch(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestRoutesArrivalSearch::OAIRequestRoutesArrivalSearch() {
    this->initializeModel();
}

OAIRequestRoutesArrivalSearch::~OAIRequestRoutesArrivalSearch() {}

void OAIRequestRoutesArrivalSearch::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_departure_location_ids_isSet = false;
    m_departure_location_ids_isValid = false;

    m_arrival_location_id_isSet = false;
    m_arrival_location_id_isValid = false;

    m_transportation_isSet = false;
    m_transportation_isValid = false;

    m_arrival_time_isSet = false;
    m_arrival_time_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;

    m_range_isSet = false;
    m_range_isValid = false;
}

void OAIRequestRoutesArrivalSearch::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRequestRoutesArrivalSearch::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_departure_location_ids_isValid = ::OpenAPI::fromJsonValue(departure_location_ids, json[QString("departure_location_ids")]);
    m_departure_location_ids_isSet = !json[QString("departure_location_ids")].isNull() && m_departure_location_ids_isValid;

    m_arrival_location_id_isValid = ::OpenAPI::fromJsonValue(arrival_location_id, json[QString("arrival_location_id")]);
    m_arrival_location_id_isSet = !json[QString("arrival_location_id")].isNull() && m_arrival_location_id_isValid;

    m_transportation_isValid = ::OpenAPI::fromJsonValue(transportation, json[QString("transportation")]);
    m_transportation_isSet = !json[QString("transportation")].isNull() && m_transportation_isValid;

    m_arrival_time_isValid = ::OpenAPI::fromJsonValue(arrival_time, json[QString("arrival_time")]);
    m_arrival_time_isSet = !json[QString("arrival_time")].isNull() && m_arrival_time_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;

    m_range_isValid = ::OpenAPI::fromJsonValue(range, json[QString("range")]);
    m_range_isSet = !json[QString("range")].isNull() && m_range_isValid;
}

QString OAIRequestRoutesArrivalSearch::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRequestRoutesArrivalSearch::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (departure_location_ids.size() > 0) {
        obj.insert(QString("departure_location_ids"), ::OpenAPI::toJsonValue(departure_location_ids));
    }
    if (m_arrival_location_id_isSet) {
        obj.insert(QString("arrival_location_id"), ::OpenAPI::toJsonValue(arrival_location_id));
    }
    if (transportation.isSet()) {
        obj.insert(QString("transportation"), ::OpenAPI::toJsonValue(transportation));
    }
    if (m_arrival_time_isSet) {
        obj.insert(QString("arrival_time"), ::OpenAPI::toJsonValue(arrival_time));
    }
    if (properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    }
    if (range.isSet()) {
        obj.insert(QString("range"), ::OpenAPI::toJsonValue(range));
    }
    return obj;
}

QString OAIRequestRoutesArrivalSearch::getId() const {
    return id;
}
void OAIRequestRoutesArrivalSearch::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_id_Valid() const{
    return m_id_isValid;
}

QList<QString> OAIRequestRoutesArrivalSearch::getDepartureLocationIds() const {
    return departure_location_ids;
}
void OAIRequestRoutesArrivalSearch::setDepartureLocationIds(const QList<QString> &departure_location_ids) {
    this->departure_location_ids = departure_location_ids;
    this->m_departure_location_ids_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_departure_location_ids_Set() const{
    return m_departure_location_ids_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_departure_location_ids_Valid() const{
    return m_departure_location_ids_isValid;
}

QString OAIRequestRoutesArrivalSearch::getArrivalLocationId() const {
    return arrival_location_id;
}
void OAIRequestRoutesArrivalSearch::setArrivalLocationId(const QString &arrival_location_id) {
    this->arrival_location_id = arrival_location_id;
    this->m_arrival_location_id_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_arrival_location_id_Set() const{
    return m_arrival_location_id_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_arrival_location_id_Valid() const{
    return m_arrival_location_id_isValid;
}

OAIRequestTransportation OAIRequestRoutesArrivalSearch::getTransportation() const {
    return transportation;
}
void OAIRequestRoutesArrivalSearch::setTransportation(const OAIRequestTransportation &transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_transportation_Set() const{
    return m_transportation_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_transportation_Valid() const{
    return m_transportation_isValid;
}

QDateTime OAIRequestRoutesArrivalSearch::getArrivalTime() const {
    return arrival_time;
}
void OAIRequestRoutesArrivalSearch::setArrivalTime(const QDateTime &arrival_time) {
    this->arrival_time = arrival_time;
    this->m_arrival_time_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_arrival_time_Set() const{
    return m_arrival_time_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_arrival_time_Valid() const{
    return m_arrival_time_isValid;
}

QList<OAIRequestRoutesProperty> OAIRequestRoutesArrivalSearch::getProperties() const {
    return properties;
}
void OAIRequestRoutesArrivalSearch::setProperties(const QList<OAIRequestRoutesProperty> &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_properties_Valid() const{
    return m_properties_isValid;
}

OAIRequestRangeFull OAIRequestRoutesArrivalSearch::getRange() const {
    return range;
}
void OAIRequestRoutesArrivalSearch::setRange(const OAIRequestRangeFull &range) {
    this->range = range;
    this->m_range_isSet = true;
}

bool OAIRequestRoutesArrivalSearch::is_range_Set() const{
    return m_range_isSet;
}

bool OAIRequestRoutesArrivalSearch::is_range_Valid() const{
    return m_range_isValid;
}

bool OAIRequestRoutesArrivalSearch::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (departure_location_ids.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_arrival_location_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (transportation.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_arrival_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (properties.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (range.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRequestRoutesArrivalSearch::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_departure_location_ids_isValid && m_arrival_location_id_isValid && m_transportation_isValid && m_arrival_time_isValid && m_properties_isValid && true;
}

} // namespace OpenAPI
