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


#include "OAIResponseBox.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseBox::OAIResponseBox(QString json) {
    init();
    this->fromJson(json);
}

OAIResponseBox::OAIResponseBox() {
    init();
}

OAIResponseBox::~OAIResponseBox() {
    this->cleanup();
}

void
OAIResponseBox::init() {
    min_lat = 0.0;
    m_min_lat_isSet = false;
    max_lat = 0.0;
    m_max_lat_isSet = false;
    min_lng = 0.0;
    m_min_lng_isSet = false;
    max_lng = 0.0;
    m_max_lng_isSet = false;
}

void
OAIResponseBox::cleanup() {




}

OAIResponseBox*
OAIResponseBox::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIResponseBox::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&min_lat, pJson["min_lat"], "double", "");
    
    ::OpenAPI::setValue(&max_lat, pJson["max_lat"], "double", "");
    
    ::OpenAPI::setValue(&min_lng, pJson["min_lng"], "double", "");
    
    ::OpenAPI::setValue(&max_lng, pJson["max_lng"], "double", "");
    
}

QString
OAIResponseBox::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseBox::asJsonObject() {
    QJsonObject obj;
    if(m_min_lat_isSet){
        obj.insert("min_lat", QJsonValue(min_lat));
    }
    if(m_max_lat_isSet){
        obj.insert("max_lat", QJsonValue(max_lat));
    }
    if(m_min_lng_isSet){
        obj.insert("min_lng", QJsonValue(min_lng));
    }
    if(m_max_lng_isSet){
        obj.insert("max_lng", QJsonValue(max_lng));
    }

    return obj;
}

double
OAIResponseBox::getMinLat() {
    return min_lat;
}
void
OAIResponseBox::setMinLat(double min_lat) {
    this->min_lat = min_lat;
    this->m_min_lat_isSet = true;
}

double
OAIResponseBox::getMaxLat() {
    return max_lat;
}
void
OAIResponseBox::setMaxLat(double max_lat) {
    this->max_lat = max_lat;
    this->m_max_lat_isSet = true;
}

double
OAIResponseBox::getMinLng() {
    return min_lng;
}
void
OAIResponseBox::setMinLng(double min_lng) {
    this->min_lng = min_lng;
    this->m_min_lng_isSet = true;
}

double
OAIResponseBox::getMaxLng() {
    return max_lng;
}
void
OAIResponseBox::setMaxLng(double max_lng) {
    this->max_lng = max_lng;
    this->m_max_lng_isSet = true;
}


bool
OAIResponseBox::isSet(){
    bool isObjectUpdated = false;
    do{
        if(m_min_lat_isSet){ isObjectUpdated = true; break;}
        if(m_max_lat_isSet){ isObjectUpdated = true; break;}
        if(m_min_lng_isSet){ isObjectUpdated = true; break;}
        if(m_max_lng_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
