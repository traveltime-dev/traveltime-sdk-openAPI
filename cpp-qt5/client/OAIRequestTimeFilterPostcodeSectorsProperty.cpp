/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include "OAIRequestTimeFilterPostcodeSectorsProperty.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTimeFilterPostcodeSectorsProperty::OAIRequestTimeFilterPostcodeSectorsProperty(QString json) {
    init();
    this->fromJson(json);
}

OAIRequestTimeFilterPostcodeSectorsProperty::OAIRequestTimeFilterPostcodeSectorsProperty() {
    init();
}

OAIRequestTimeFilterPostcodeSectorsProperty::~OAIRequestTimeFilterPostcodeSectorsProperty() {
    this->cleanup();
}

void
OAIRequestTimeFilterPostcodeSectorsProperty::init() {
}

void
OAIRequestTimeFilterPostcodeSectorsProperty::cleanup() {
}

OAIRequestTimeFilterPostcodeSectorsProperty*
OAIRequestTimeFilterPostcodeSectorsProperty::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIRequestTimeFilterPostcodeSectorsProperty::fromJsonObject(QJsonObject pJson) {
}

QString
OAIRequestTimeFilterPostcodeSectorsProperty::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTimeFilterPostcodeSectorsProperty::asJsonObject() {
    QJsonObject obj;

    return obj;
}


bool
OAIRequestTimeFilterPostcodeSectorsProperty::isSet(){
    bool isObjectUpdated = false;
    do{
    }while(false);
    return isObjectUpdated;
}
}
