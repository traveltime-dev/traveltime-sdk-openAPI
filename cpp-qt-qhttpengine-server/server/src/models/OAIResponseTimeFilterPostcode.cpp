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

#include "OAIResponseTimeFilterPostcode.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeFilterPostcode::OAIResponseTimeFilterPostcode(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeFilterPostcode::OAIResponseTimeFilterPostcode() {
    this->initializeModel();
}

OAIResponseTimeFilterPostcode::~OAIResponseTimeFilterPostcode() {}

void OAIResponseTimeFilterPostcode::initializeModel() {

    m_code_isSet = false;
    m_code_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;
}

void OAIResponseTimeFilterPostcode::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeFilterPostcode::fromJsonObject(QJsonObject json) {

    m_code_isValid = ::OpenAPI::fromJsonValue(code, json[QString("code")]);
    m_code_isSet = !json[QString("code")].isNull() && m_code_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;
}

QString OAIResponseTimeFilterPostcode::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeFilterPostcode::asJsonObject() const {
    QJsonObject obj;
    if (m_code_isSet) {
        obj.insert(QString("code"), ::OpenAPI::toJsonValue(code));
    }
    if (properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    }
    return obj;
}

QString OAIResponseTimeFilterPostcode::getCode() const {
    return code;
}
void OAIResponseTimeFilterPostcode::setCode(const QString &code) {
    this->code = code;
    this->m_code_isSet = true;
}

bool OAIResponseTimeFilterPostcode::is_code_Set() const{
    return m_code_isSet;
}

bool OAIResponseTimeFilterPostcode::is_code_Valid() const{
    return m_code_isValid;
}

QList<OAIResponseTimeFilterPostcodesProperties> OAIResponseTimeFilterPostcode::getProperties() const {
    return properties;
}
void OAIResponseTimeFilterPostcode::setProperties(const QList<OAIResponseTimeFilterPostcodesProperties> &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

bool OAIResponseTimeFilterPostcode::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIResponseTimeFilterPostcode::is_properties_Valid() const{
    return m_properties_isValid;
}

bool OAIResponseTimeFilterPostcode::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_code_isSet) {
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

bool OAIResponseTimeFilterPostcode::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_code_isValid && m_properties_isValid && true;
}

} // namespace OpenAPI
