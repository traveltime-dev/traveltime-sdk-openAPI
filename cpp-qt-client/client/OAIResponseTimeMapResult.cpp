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

#include "OAIResponseTimeMapResult.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeMapResult::OAIResponseTimeMapResult(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeMapResult::OAIResponseTimeMapResult() {
    this->initializeModel();
}

OAIResponseTimeMapResult::~OAIResponseTimeMapResult() {}

void OAIResponseTimeMapResult::initializeModel() {

    m_search_id_isSet = false;
    m_search_id_isValid = false;

    m_shapes_isSet = false;
    m_shapes_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;
}

void OAIResponseTimeMapResult::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeMapResult::fromJsonObject(QJsonObject json) {

    m_search_id_isValid = ::OpenAPI::fromJsonValue(search_id, json[QString("search_id")]);
    m_search_id_isSet = !json[QString("search_id")].isNull() && m_search_id_isValid;

    m_shapes_isValid = ::OpenAPI::fromJsonValue(shapes, json[QString("shapes")]);
    m_shapes_isSet = !json[QString("shapes")].isNull() && m_shapes_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;
}

QString OAIResponseTimeMapResult::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeMapResult::asJsonObject() const {
    QJsonObject obj;
    if (m_search_id_isSet) {
        obj.insert(QString("search_id"), ::OpenAPI::toJsonValue(search_id));
    }
    if (shapes.size() > 0) {
        obj.insert(QString("shapes"), ::OpenAPI::toJsonValue(shapes));
    }
    if (properties.isSet()) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    }
    return obj;
}

QString OAIResponseTimeMapResult::getSearchId() const {
    return search_id;
}
void OAIResponseTimeMapResult::setSearchId(const QString &search_id) {
    this->search_id = search_id;
    this->m_search_id_isSet = true;
}

bool OAIResponseTimeMapResult::is_search_id_Set() const{
    return m_search_id_isSet;
}

bool OAIResponseTimeMapResult::is_search_id_Valid() const{
    return m_search_id_isValid;
}

QList<OAIResponseShape> OAIResponseTimeMapResult::getShapes() const {
    return shapes;
}
void OAIResponseTimeMapResult::setShapes(const QList<OAIResponseShape> &shapes) {
    this->shapes = shapes;
    this->m_shapes_isSet = true;
}

bool OAIResponseTimeMapResult::is_shapes_Set() const{
    return m_shapes_isSet;
}

bool OAIResponseTimeMapResult::is_shapes_Valid() const{
    return m_shapes_isValid;
}

OAIResponseTimeMapProperties OAIResponseTimeMapResult::getProperties() const {
    return properties;
}
void OAIResponseTimeMapResult::setProperties(const OAIResponseTimeMapProperties &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

bool OAIResponseTimeMapResult::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIResponseTimeMapResult::is_properties_Valid() const{
    return m_properties_isValid;
}

bool OAIResponseTimeMapResult::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_search_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (shapes.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (properties.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseTimeMapResult::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_search_id_isValid && m_shapes_isValid && m_properties_isValid && true;
}

} // namespace OpenAPI
