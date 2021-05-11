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

#include "OAIResponseRoutesResult.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseRoutesResult::OAIResponseRoutesResult(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseRoutesResult::OAIResponseRoutesResult() {
    this->initializeModel();
}

OAIResponseRoutesResult::~OAIResponseRoutesResult() {}

void OAIResponseRoutesResult::initializeModel() {

    m_search_id_isSet = false;
    m_search_id_isValid = false;

    m_locations_isSet = false;
    m_locations_isValid = false;

    m_unreachable_isSet = false;
    m_unreachable_isValid = false;
}

void OAIResponseRoutesResult::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseRoutesResult::fromJsonObject(QJsonObject json) {

    m_search_id_isValid = ::OpenAPI::fromJsonValue(search_id, json[QString("search_id")]);
    m_search_id_isSet = !json[QString("search_id")].isNull() && m_search_id_isValid;

    m_locations_isValid = ::OpenAPI::fromJsonValue(locations, json[QString("locations")]);
    m_locations_isSet = !json[QString("locations")].isNull() && m_locations_isValid;

    m_unreachable_isValid = ::OpenAPI::fromJsonValue(unreachable, json[QString("unreachable")]);
    m_unreachable_isSet = !json[QString("unreachable")].isNull() && m_unreachable_isValid;
}

QString OAIResponseRoutesResult::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseRoutesResult::asJsonObject() const {
    QJsonObject obj;
    if (m_search_id_isSet) {
        obj.insert(QString("search_id"), ::OpenAPI::toJsonValue(search_id));
    }
    if (locations.size() > 0) {
        obj.insert(QString("locations"), ::OpenAPI::toJsonValue(locations));
    }
    if (unreachable.size() > 0) {
        obj.insert(QString("unreachable"), ::OpenAPI::toJsonValue(unreachable));
    }
    return obj;
}

QString OAIResponseRoutesResult::getSearchId() const {
    return search_id;
}
void OAIResponseRoutesResult::setSearchId(const QString &search_id) {
    this->search_id = search_id;
    this->m_search_id_isSet = true;
}

bool OAIResponseRoutesResult::is_search_id_Set() const{
    return m_search_id_isSet;
}

bool OAIResponseRoutesResult::is_search_id_Valid() const{
    return m_search_id_isValid;
}

QList<OAIResponseRoutesLocation> OAIResponseRoutesResult::getLocations() const {
    return locations;
}
void OAIResponseRoutesResult::setLocations(const QList<OAIResponseRoutesLocation> &locations) {
    this->locations = locations;
    this->m_locations_isSet = true;
}

bool OAIResponseRoutesResult::is_locations_Set() const{
    return m_locations_isSet;
}

bool OAIResponseRoutesResult::is_locations_Valid() const{
    return m_locations_isValid;
}

QList<QString> OAIResponseRoutesResult::getUnreachable() const {
    return unreachable;
}
void OAIResponseRoutesResult::setUnreachable(const QList<QString> &unreachable) {
    this->unreachable = unreachable;
    this->m_unreachable_isSet = true;
}

bool OAIResponseRoutesResult::is_unreachable_Set() const{
    return m_unreachable_isSet;
}

bool OAIResponseRoutesResult::is_unreachable_Valid() const{
    return m_unreachable_isValid;
}

bool OAIResponseRoutesResult::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_search_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (locations.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (unreachable.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseRoutesResult::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_search_id_isValid && m_locations_isValid && m_unreachable_isValid && true;
}

} // namespace OpenAPI
