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


#include "OAIRequestTimeFilterPostcodeSectorsArrivalSearch.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTimeFilterPostcodeSectorsArrivalSearch::OAIRequestTimeFilterPostcodeSectorsArrivalSearch(QString json) {
    this->fromJson(json);
}

OAIRequestTimeFilterPostcodeSectorsArrivalSearch::OAIRequestTimeFilterPostcodeSectorsArrivalSearch() {
    this->init();
}

OAIRequestTimeFilterPostcodeSectorsArrivalSearch::~OAIRequestTimeFilterPostcodeSectorsArrivalSearch() {

}

void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::init() {
    m_id_isSet = false;
    m_transportation_isSet = false;
    m_travel_time_isSet = false;
    m_arrival_time_isSet = false;
    m_reachable_postcodes_threshold_isSet = false;
    m_properties_isSet = false;
    m_range_isSet = false;
}

void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(transportation, json[QString("transportation")]);
    
    ::OpenAPI::fromJsonValue(travel_time, json[QString("travel_time")]);
    
    ::OpenAPI::fromJsonValue(arrival_time, json[QString("arrival_time")]);
    
    ::OpenAPI::fromJsonValue(reachable_postcodes_threshold, json[QString("reachable_postcodes_threshold")]);
    
    
    ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    ::OpenAPI::fromJsonValue(range, json[QString("range")]);
    
}

QString
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::asJsonObject() const {
    QJsonObject obj;
	if(m_id_isSet){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(transportation.isSet()){
        obj.insert(QString("transportation"), ::OpenAPI::toJsonValue(transportation));
    }
	if(m_travel_time_isSet){
        obj.insert(QString("travel_time"), ::OpenAPI::toJsonValue(travel_time));
    }
	if(m_arrival_time_isSet){
        obj.insert(QString("arrival_time"), ::OpenAPI::toJsonValue(arrival_time));
    }
	if(m_reachable_postcodes_threshold_isSet){
        obj.insert(QString("reachable_postcodes_threshold"), ::OpenAPI::toJsonValue(reachable_postcodes_threshold));
    }
	
    if(properties.size() > 0){
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(properties));
    } 
	if(range.isSet()){
        obj.insert(QString("range"), ::OpenAPI::toJsonValue(range));
    }
    return obj;
}

QString
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getId() const {
    return id;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

OAIRequestTransportation
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getTransportation() const {
    return transportation;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setTransportation(const OAIRequestTransportation &transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

qint32
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getTravelTime() const {
    return travel_time;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setTravelTime(const qint32 &travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

QDateTime
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getArrivalTime() const {
    return arrival_time;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setArrivalTime(const QDateTime &arrival_time) {
    this->arrival_time = arrival_time;
    this->m_arrival_time_isSet = true;
}

double
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getReachablePostcodesThreshold() const {
    return reachable_postcodes_threshold;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setReachablePostcodesThreshold(const double &reachable_postcodes_threshold) {
    this->reachable_postcodes_threshold = reachable_postcodes_threshold;
    this->m_reachable_postcodes_threshold_isSet = true;
}

QList<OAIRequestTimeFilterPostcodeSectorsProperty>
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getProperties() const {
    return properties;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setProperties(const QList<OAIRequestTimeFilterPostcodeSectorsProperty> &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

OAIRequestRangeFull
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::getRange() const {
    return range;
}
void
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::setRange(const OAIRequestRangeFull &range) {
    this->range = range;
    this->m_range_isSet = true;
}


bool
OAIRequestTimeFilterPostcodeSectorsArrivalSearch::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(transportation.isSet()){ isObjectUpdated = true; break;}
    
        if(m_travel_time_isSet){ isObjectUpdated = true; break;}
    
        if(m_arrival_time_isSet){ isObjectUpdated = true; break;}
    
        if(m_reachable_postcodes_threshold_isSet){ isObjectUpdated = true; break;}
    
        if(properties.size() > 0){ isObjectUpdated = true; break;}
    
        if(range.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}
