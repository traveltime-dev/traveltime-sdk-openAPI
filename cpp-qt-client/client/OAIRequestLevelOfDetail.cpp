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

#include "OAIRequestLevelOfDetail.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestLevelOfDetail::OAIRequestLevelOfDetail(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestLevelOfDetail::OAIRequestLevelOfDetail() {
    this->initializeModel();
}

OAIRequestLevelOfDetail::~OAIRequestLevelOfDetail() {}

void OAIRequestLevelOfDetail::initializeModel() {

    m_scale_type_isSet = false;
    m_scale_type_isValid = false;

    m_level_isSet = false;
    m_level_isValid = false;
}

void OAIRequestLevelOfDetail::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRequestLevelOfDetail::fromJsonObject(QJsonObject json) {

    m_scale_type_isValid = ::OpenAPI::fromJsonValue(scale_type, json[QString("scale_type")]);
    m_scale_type_isSet = !json[QString("scale_type")].isNull() && m_scale_type_isValid;

    m_level_isValid = ::OpenAPI::fromJsonValue(level, json[QString("level")]);
    m_level_isSet = !json[QString("level")].isNull() && m_level_isValid;
}

QString OAIRequestLevelOfDetail::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRequestLevelOfDetail::asJsonObject() const {
    QJsonObject obj;
    if (m_scale_type_isSet) {
        obj.insert(QString("scale_type"), ::OpenAPI::toJsonValue(scale_type));
    }
    if (m_level_isSet) {
        obj.insert(QString("level"), ::OpenAPI::toJsonValue(level));
    }
    return obj;
}

QString OAIRequestLevelOfDetail::getScaleType() const {
    return scale_type;
}
void OAIRequestLevelOfDetail::setScaleType(const QString &scale_type) {
    this->scale_type = scale_type;
    this->m_scale_type_isSet = true;
}

bool OAIRequestLevelOfDetail::is_scale_type_Set() const{
    return m_scale_type_isSet;
}

bool OAIRequestLevelOfDetail::is_scale_type_Valid() const{
    return m_scale_type_isValid;
}

QString OAIRequestLevelOfDetail::getLevel() const {
    return level;
}
void OAIRequestLevelOfDetail::setLevel(const QString &level) {
    this->level = level;
    this->m_level_isSet = true;
}

bool OAIRequestLevelOfDetail::is_level_Set() const{
    return m_level_isSet;
}

bool OAIRequestLevelOfDetail::is_level_Valid() const{
    return m_level_isValid;
}

bool OAIRequestLevelOfDetail::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_scale_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_level_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRequestLevelOfDetail::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_scale_type_isValid && m_level_isValid && true;
}

} // namespace OpenAPI