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

#include "OAIResponseBoundingBox.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseBoundingBox::OAIResponseBoundingBox(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseBoundingBox::OAIResponseBoundingBox() {
    this->initializeModel();
}

OAIResponseBoundingBox::~OAIResponseBoundingBox() {}

void OAIResponseBoundingBox::initializeModel() {

    m_envelope_isSet = false;
    m_envelope_isValid = false;

    m_boxes_isSet = false;
    m_boxes_isValid = false;
}

void OAIResponseBoundingBox::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseBoundingBox::fromJsonObject(QJsonObject json) {

    m_envelope_isValid = ::OpenAPI::fromJsonValue(envelope, json[QString("envelope")]);
    m_envelope_isSet = !json[QString("envelope")].isNull() && m_envelope_isValid;

    m_boxes_isValid = ::OpenAPI::fromJsonValue(boxes, json[QString("boxes")]);
    m_boxes_isSet = !json[QString("boxes")].isNull() && m_boxes_isValid;
}

QString OAIResponseBoundingBox::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseBoundingBox::asJsonObject() const {
    QJsonObject obj;
    if (envelope.isSet()) {
        obj.insert(QString("envelope"), ::OpenAPI::toJsonValue(envelope));
    }
    if (boxes.size() > 0) {
        obj.insert(QString("boxes"), ::OpenAPI::toJsonValue(boxes));
    }
    return obj;
}

OAIResponseBox OAIResponseBoundingBox::getEnvelope() const {
    return envelope;
}
void OAIResponseBoundingBox::setEnvelope(const OAIResponseBox &envelope) {
    this->envelope = envelope;
    this->m_envelope_isSet = true;
}

bool OAIResponseBoundingBox::is_envelope_Set() const{
    return m_envelope_isSet;
}

bool OAIResponseBoundingBox::is_envelope_Valid() const{
    return m_envelope_isValid;
}

QList<OAIResponseBox> OAIResponseBoundingBox::getBoxes() const {
    return boxes;
}
void OAIResponseBoundingBox::setBoxes(const QList<OAIResponseBox> &boxes) {
    this->boxes = boxes;
    this->m_boxes_isSet = true;
}

bool OAIResponseBoundingBox::is_boxes_Set() const{
    return m_boxes_isSet;
}

bool OAIResponseBoundingBox::is_boxes_Valid() const{
    return m_boxes_isValid;
}

bool OAIResponseBoundingBox::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (envelope.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (boxes.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseBoundingBox::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_envelope_isValid && m_boxes_isValid && true;
}

} // namespace OpenAPI
