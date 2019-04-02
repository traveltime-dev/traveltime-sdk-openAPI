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


#include "OAIRequestTimeFilterFastArrivalOneToManySearch.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTimeFilterFastArrivalOneToManySearch::OAIRequestTimeFilterFastArrivalOneToManySearch(QString json) {
    init();
    this->fromJson(json);
}

OAIRequestTimeFilterFastArrivalOneToManySearch::OAIRequestTimeFilterFastArrivalOneToManySearch() {
    init();
}

OAIRequestTimeFilterFastArrivalOneToManySearch::~OAIRequestTimeFilterFastArrivalOneToManySearch() {
    this->cleanup();
}

void
OAIRequestTimeFilterFastArrivalOneToManySearch::init() {
    id = new QString("");
    m_id_isSet = false;
    departure_location_id = new QString("");
    m_departure_location_id_isSet = false;
    arrival_location_ids = new QList<QString*>();
    m_arrival_location_ids_isSet = false;
    transportation = new OAIRequestTransportationFast();
    m_transportation_isSet = false;
    travel_time = 0;
    m_travel_time_isSet = false;
    arrival_time_period = new OAIRequestArrivalTimePeriod();
    m_arrival_time_period_isSet = false;
    properties = new QList<OAIRequestTimeFilterFastProperty*>();
    m_properties_isSet = false;
}

void
OAIRequestTimeFilterFastArrivalOneToManySearch::cleanup() {
    if(id != nullptr) { 
        delete id;
    }
    if(departure_location_id != nullptr) { 
        delete departure_location_id;
    }
    if(arrival_location_ids != nullptr) { 
        auto arr = arrival_location_ids;
        for(auto o: *arr) { 
            delete o;
        }
        delete arrival_location_ids;
    }
    if(transportation != nullptr) { 
        delete transportation;
    }

    if(arrival_time_period != nullptr) { 
        delete arrival_time_period;
    }
    if(properties != nullptr) { 
        auto arr = properties;
        for(auto o: *arr) { 
            delete o;
        }
        delete properties;
    }
}

OAIRequestTimeFilterFastArrivalOneToManySearch*
OAIRequestTimeFilterFastArrivalOneToManySearch::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIRequestTimeFilterFastArrivalOneToManySearch::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&id, pJson["id"], "QString", "QString");
    
    ::OpenAPI::setValue(&departure_location_id, pJson["departure_location_id"], "QString", "QString");
    
    
    ::OpenAPI::setValue(&arrival_location_ids, pJson["arrival_location_ids"], "QList", "QString");
    ::OpenAPI::setValue(&transportation, pJson["transportation"], "OAIRequestTransportationFast", "OAIRequestTransportationFast");
    
    ::OpenAPI::setValue(&travel_time, pJson["travel_time"], "qint32", "");
    
    ::OpenAPI::setValue(&arrival_time_period, pJson["arrival_time_period"], "OAIRequestArrivalTimePeriod", "OAIRequestArrivalTimePeriod");
    
    
    ::OpenAPI::setValue(&properties, pJson["properties"], "QList", "OAIRequestTimeFilterFastProperty");
}

QString
OAIRequestTimeFilterFastArrivalOneToManySearch::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTimeFilterFastArrivalOneToManySearch::asJsonObject() {
    QJsonObject obj;
    if(id != nullptr && *id != QString("")){
        toJsonValue(QString("id"), id, obj, QString("QString"));
    }
    if(departure_location_id != nullptr && *departure_location_id != QString("")){
        toJsonValue(QString("departure_location_id"), departure_location_id, obj, QString("QString"));
    }
    if(arrival_location_ids->size() > 0){
        toJsonArray((QList<void*>*)arrival_location_ids, obj, "arrival_location_ids", "QString");
    }
    if((transportation != nullptr) && (transportation->isSet())){
        toJsonValue(QString("transportation"), transportation, obj, QString("OAIRequestTransportationFast"));
    }
    if(m_travel_time_isSet){
        obj.insert("travel_time", QJsonValue(travel_time));
    }
    if((arrival_time_period != nullptr) && (arrival_time_period->isSet())){
        toJsonValue(QString("arrival_time_period"), arrival_time_period, obj, QString("OAIRequestArrivalTimePeriod"));
    }
    if(properties->size() > 0){
        toJsonArray((QList<void*>*)properties, obj, "properties", "OAIRequestTimeFilterFastProperty");
    }

    return obj;
}

QString*
OAIRequestTimeFilterFastArrivalOneToManySearch::getId() {
    return id;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setId(QString* id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString*
OAIRequestTimeFilterFastArrivalOneToManySearch::getDepartureLocationId() {
    return departure_location_id;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setDepartureLocationId(QString* departure_location_id) {
    this->departure_location_id = departure_location_id;
    this->m_departure_location_id_isSet = true;
}

QList<QString*>*
OAIRequestTimeFilterFastArrivalOneToManySearch::getArrivalLocationIds() {
    return arrival_location_ids;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setArrivalLocationIds(QList<QString*>* arrival_location_ids) {
    this->arrival_location_ids = arrival_location_ids;
    this->m_arrival_location_ids_isSet = true;
}

OAIRequestTransportationFast*
OAIRequestTimeFilterFastArrivalOneToManySearch::getTransportation() {
    return transportation;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setTransportation(OAIRequestTransportationFast* transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

qint32
OAIRequestTimeFilterFastArrivalOneToManySearch::getTravelTime() {
    return travel_time;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setTravelTime(qint32 travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

OAIRequestArrivalTimePeriod*
OAIRequestTimeFilterFastArrivalOneToManySearch::getArrivalTimePeriod() {
    return arrival_time_period;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setArrivalTimePeriod(OAIRequestArrivalTimePeriod* arrival_time_period) {
    this->arrival_time_period = arrival_time_period;
    this->m_arrival_time_period_isSet = true;
}

QList<OAIRequestTimeFilterFastProperty*>*
OAIRequestTimeFilterFastArrivalOneToManySearch::getProperties() {
    return properties;
}
void
OAIRequestTimeFilterFastArrivalOneToManySearch::setProperties(QList<OAIRequestTimeFilterFastProperty*>* properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}


bool
OAIRequestTimeFilterFastArrivalOneToManySearch::isSet(){
    bool isObjectUpdated = false;
    do{
        if(id != nullptr && *id != QString("")){ isObjectUpdated = true; break;}
        if(departure_location_id != nullptr && *departure_location_id != QString("")){ isObjectUpdated = true; break;}
        if(arrival_location_ids->size() > 0){ isObjectUpdated = true; break;}
        if(transportation != nullptr && transportation->isSet()){ isObjectUpdated = true; break;}
        if(m_travel_time_isSet){ isObjectUpdated = true; break;}
        if(arrival_time_period != nullptr && arrival_time_period->isSet()){ isObjectUpdated = true; break;}
        if(properties->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
