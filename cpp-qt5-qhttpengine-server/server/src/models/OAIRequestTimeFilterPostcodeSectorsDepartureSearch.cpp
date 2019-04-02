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


#include "OAIRequestTimeFilterPostcodeSectorsDepartureSearch.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTimeFilterPostcodeSectorsDepartureSearch::OAIRequestTimeFilterPostcodeSectorsDepartureSearch(QString json) {
    this->fromJson(json);
}

OAIRequestTimeFilterPostcodeSectorsDepartureSearch::OAIRequestTimeFilterPostcodeSectorsDepartureSearch() {
    this->init();
}

OAIRequestTimeFilterPostcodeSectorsDepartureSearch::~OAIRequestTimeFilterPostcodeSectorsDepartureSearch() {

}

void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::init() {
    m_id_isSet = false;
    m_transportation_isSet = false;
    m_travel_time_isSet = false;
    m_departure_time_isSet = false;
    m_reachable_postcodes_threshold_isSet = false;
    m_properties_isSet = false;
    m_range_isSet = false;
}

void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(transportation, json[QString("transportation")]);
    
    ::OpenAPI::fromJsonValue(travel_time, json[QString("travel_time")]);
    
    ::OpenAPI::fromJsonValue(departure_time, json[QString("departure_time")]);
    
    ::OpenAPI::fromJsonValue(reachable_postcodes_threshold, json[QString("reachable_postcodes_threshold")]);
    
    
    ::OpenAPI::fromJsonValue(properties, json[QString("properties")]);
    ::OpenAPI::fromJsonValue(range, json[QString("range")]);
    
}

QString
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::asJsonObject() const {
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
	if(m_departure_time_isSet){
        obj.insert(QString("departure_time"), ::OpenAPI::toJsonValue(departure_time));
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
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getId() const {
    return id;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

OAIRequestTransportation
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getTransportation() const {
    return transportation;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setTransportation(const OAIRequestTransportation &transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

qint32
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getTravelTime() const {
    return travel_time;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setTravelTime(const qint32 &travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

QDateTime
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getDepartureTime() const {
    return departure_time;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setDepartureTime(const QDateTime &departure_time) {
    this->departure_time = departure_time;
    this->m_departure_time_isSet = true;
}

double
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getReachablePostcodesThreshold() const {
    return reachable_postcodes_threshold;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setReachablePostcodesThreshold(const double &reachable_postcodes_threshold) {
    this->reachable_postcodes_threshold = reachable_postcodes_threshold;
    this->m_reachable_postcodes_threshold_isSet = true;
}

QList<OAIRequestTimeFilterPostcodeSectorsProperty>
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getProperties() const {
    return properties;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setProperties(const QList<OAIRequestTimeFilterPostcodeSectorsProperty> &properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

OAIRequestRangeFull
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::getRange() const {
    return range;
}
void
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::setRange(const OAIRequestRangeFull &range) {
    this->range = range;
    this->m_range_isSet = true;
}


bool
OAIRequestTimeFilterPostcodeSectorsDepartureSearch::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(transportation.isSet()){ isObjectUpdated = true; break;}
    
        if(m_travel_time_isSet){ isObjectUpdated = true; break;}
    
        if(m_departure_time_isSet){ isObjectUpdated = true; break;}
    
        if(m_reachable_postcodes_threshold_isSet){ isObjectUpdated = true; break;}
    
        if(properties.size() > 0){ isObjectUpdated = true; break;}
    
        if(range.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}
