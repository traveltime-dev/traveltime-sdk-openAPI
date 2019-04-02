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


#include "OAIResponseGeocodingGeoJsonFeature.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseGeocodingGeoJsonFeature::OAIResponseGeocodingGeoJsonFeature(QString json) {
    this->fromJson(json);
}

OAIResponseGeocodingGeoJsonFeature::OAIResponseGeocodingGeoJsonFeature() {
    this->init();
}

OAIResponseGeocodingGeoJsonFeature::~OAIResponseGeocodingGeoJsonFeature() {

}

void
OAIResponseGeocodingGeoJsonFeature::init() {
    m_type_isSet = false;
    m_geometry_isSet = false;
    m_properties_isSet = false;
}

void
OAIResponseGeocodingGeoJsonFeature::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIResponseGeocodingGeoJsonFeature::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    
    ::OpenAPI::fromJsonValue(geometry, json[QString("geometry")]);
    
    ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    
}

QString
OAIResponseGeocodingGeoJsonFeature::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseGeocodingGeoJsonFeature::asJsonObject() const {
    QJsonObject obj;
	if(m_type_isSet){
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
	if(geometry.isSet()){
        obj.insert(QString("geometry"), ::OpenAPI::toJsonValue(geometry));
    }
	if(properties.isSet()){
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    }
    return obj;
}

QString
OAIResponseGeocodingGeoJsonFeature::getType() const {
    return type;
}
void
OAIResponseGeocodingGeoJsonFeature::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

OAIResponseGeocodingGeometry
OAIResponseGeocodingGeoJsonFeature::getGeometry() const {
    return geometry;
}
void
OAIResponseGeocodingGeoJsonFeature::setGeometry(const OAIResponseGeocodingGeometry &geometry) {
    this->geometry = geometry;
    this->m_geometry_isSet = true;
}

OAIResponseGeocodingProperties
OAIResponseGeocodingGeoJsonFeature::getProperties() const {
    return properties;
}
void
OAIResponseGeocodingGeoJsonFeature::setProperties(const OAIResponseGeocodingProperties &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}


bool
OAIResponseGeocodingGeoJsonFeature::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_type_isSet){ isObjectUpdated = true; break;}
    
        if(geometry.isSet()){ isObjectUpdated = true; break;}
    
        if(properties.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}
