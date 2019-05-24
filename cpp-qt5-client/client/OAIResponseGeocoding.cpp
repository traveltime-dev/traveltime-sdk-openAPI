/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include "OAIResponseGeocoding.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseGeocoding::OAIResponseGeocoding(QString json) {
    this->init();
    this->fromJson(json);
}

OAIResponseGeocoding::OAIResponseGeocoding() {
    this->init();
}

OAIResponseGeocoding::~OAIResponseGeocoding() {

}

void
OAIResponseGeocoding::init() {
    
    m_type_isSet = false;
    m_type_isValid = false;
    
    m_features_isSet = false;
    m_features_isValid = false;
    }

void
OAIResponseGeocoding::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIResponseGeocoding::fromJsonObject(QJsonObject json) {
    
    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    
    
    
    m_features_isValid = ::OpenAPI::fromJsonValue(features, json[QString("features")]);
    
}

QString
OAIResponseGeocoding::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseGeocoding::asJsonObject() const {
    QJsonObject obj;
	if(m_type_isSet){
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
	
    if(features.size() > 0){
        obj.insert(QString("features"), ::OpenAPI::toJsonValue(features));
    } 
    return obj;
}


QString
OAIResponseGeocoding::getType() const {
    return type;
}
void
OAIResponseGeocoding::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}


QList<OAIResponseGeocodingGeoJsonFeature>
OAIResponseGeocoding::getFeatures() const {
    return features;
}
void
OAIResponseGeocoding::setFeatures(const QList<OAIResponseGeocodingGeoJsonFeature> &features) {
    this->features = features;
    this->m_features_isSet = true;
}

bool
OAIResponseGeocoding::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_type_isSet){ isObjectUpdated = true; break;}
    
        if(features.size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIResponseGeocoding::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_type_isValid && m_features_isValid && true;
}

}
