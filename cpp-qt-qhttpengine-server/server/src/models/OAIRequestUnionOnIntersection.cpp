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

#include "OAIRequestUnionOnIntersection.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestUnionOnIntersection::OAIRequestUnionOnIntersection(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestUnionOnIntersection::OAIRequestUnionOnIntersection() {
    this->initializeModel();
}

OAIRequestUnionOnIntersection::~OAIRequestUnionOnIntersection() {}

void OAIRequestUnionOnIntersection::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_search_ids_isSet = false;
    m_search_ids_isValid = false;
}

void OAIRequestUnionOnIntersection::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRequestUnionOnIntersection::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_search_ids_isValid = ::OpenAPI::fromJsonValue(search_ids, json[QString("search_ids")]);
    m_search_ids_isSet = !json[QString("search_ids")].isNull() && m_search_ids_isValid;
}

QString OAIRequestUnionOnIntersection::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRequestUnionOnIntersection::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (search_ids.size() > 0) {
        obj.insert(QString("search_ids"), ::OpenAPI::toJsonValue(search_ids));
    }
    return obj;
}

QString OAIRequestUnionOnIntersection::getId() const {
    return id;
}
void OAIRequestUnionOnIntersection::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIRequestUnionOnIntersection::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRequestUnionOnIntersection::is_id_Valid() const{
    return m_id_isValid;
}

QList<QString> OAIRequestUnionOnIntersection::getSearchIds() const {
    return search_ids;
}
void OAIRequestUnionOnIntersection::setSearchIds(const QList<QString> &search_ids) {
    this->search_ids = search_ids;
    this->m_search_ids_isSet = true;
}

bool OAIRequestUnionOnIntersection::is_search_ids_Set() const{
    return m_search_ids_isSet;
}

bool OAIRequestUnionOnIntersection::is_search_ids_Valid() const{
    return m_search_ids_isValid;
}

bool OAIRequestUnionOnIntersection::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (search_ids.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRequestUnionOnIntersection::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_search_ids_isValid && true;
}

} // namespace OpenAPI
