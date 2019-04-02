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


#include "OAIRequestTransportationFast.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTransportationFast::OAIRequestTransportationFast(QString json) {
    init();
    this->fromJson(json);
}

OAIRequestTransportationFast::OAIRequestTransportationFast() {
    init();
}

OAIRequestTransportationFast::~OAIRequestTransportationFast() {
    this->cleanup();
}

void
OAIRequestTransportationFast::init() {
    type = new QString("");
    m_type_isSet = false;
}

void
OAIRequestTransportationFast::cleanup() {
    if(type != nullptr) { 
        delete type;
    }
}

OAIRequestTransportationFast*
OAIRequestTransportationFast::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIRequestTransportationFast::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&type, pJson["type"], "QString", "QString");
    
}

QString
OAIRequestTransportationFast::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTransportationFast::asJsonObject() {
    QJsonObject obj;
    if(type != nullptr && *type != QString("")){
        toJsonValue(QString("type"), type, obj, QString("QString"));
    }

    return obj;
}

QString*
OAIRequestTransportationFast::getType() {
    return type;
}
void
OAIRequestTransportationFast::setType(QString* type) {
    this->type = type;
    this->m_type_isSet = true;
}


bool
OAIRequestTransportationFast::isSet(){
    bool isObjectUpdated = false;
    do{
        if(type != nullptr && *type != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
