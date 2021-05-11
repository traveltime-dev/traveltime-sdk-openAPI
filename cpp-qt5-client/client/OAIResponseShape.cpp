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

#include "OAIResponseShape.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseShape::OAIResponseShape(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseShape::OAIResponseShape() {
    this->initializeModel();
}

OAIResponseShape::~OAIResponseShape() {}

void OAIResponseShape::initializeModel() {

    m_shell_isSet = false;
    m_shell_isValid = false;

    m_holes_isSet = false;
    m_holes_isValid = false;
}

void OAIResponseShape::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseShape::fromJsonObject(QJsonObject json) {

    m_shell_isValid = ::OpenAPI::fromJsonValue(shell, json[QString("shell")]);
    m_shell_isSet = !json[QString("shell")].isNull() && m_shell_isValid;

    if(json["holes"].isArray()){
        auto arr = json["holes"].toArray();
        m_holes_isValid = true;
        if(arr.count() > 0) {
            for (const QJsonValue jval : arr) {
                QList<OAICoords> item;
                m_holes_isValid &= ::OpenAPI::fromJsonValue(item, jval);
                m_holes_isSet = !jval.isNull() && m_holes_isValid;
                holes.push_back(item);
            }
        }
    }
}

QString OAIResponseShape::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseShape::asJsonObject() const {
    QJsonObject obj;
    if (shell.size() > 0) {
        obj.insert(QString("shell"), ::OpenAPI::toJsonValue(shell));
    }
    if (holes.size() > 0) {
        
        obj.insert(QString("holes"), toJsonValue(holes));
    }
    return obj;
}

QList<OAICoords> OAIResponseShape::getShell() const {
    return shell;
}
void OAIResponseShape::setShell(const QList<OAICoords> &shell) {
    this->shell = shell;
    this->m_shell_isSet = true;
}

bool OAIResponseShape::is_shell_Set() const{
    return m_shell_isSet;
}

bool OAIResponseShape::is_shell_Valid() const{
    return m_shell_isValid;
}

QList<QList<OAICoords>> OAIResponseShape::getHoles() const {
    return holes;
}
void OAIResponseShape::setHoles(const QList<QList<OAICoords>> &holes) {
    this->holes = holes;
    this->m_holes_isSet = true;
}

bool OAIResponseShape::is_holes_Set() const{
    return m_holes_isSet;
}

bool OAIResponseShape::is_holes_Valid() const{
    return m_holes_isValid;
}

bool OAIResponseShape::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (shell.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (holes.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseShape::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_shell_isValid && m_holes_isValid && true;
}

} // namespace OpenAPI
