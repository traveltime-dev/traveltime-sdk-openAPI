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


#include "OAIRequestTimeMapArrivalSearch.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRequestTimeMapArrivalSearch::OAIRequestTimeMapArrivalSearch(QString json) {
    init();
    this->fromJson(json);
}

OAIRequestTimeMapArrivalSearch::OAIRequestTimeMapArrivalSearch() {
    init();
}

OAIRequestTimeMapArrivalSearch::~OAIRequestTimeMapArrivalSearch() {
    this->cleanup();
}

void
OAIRequestTimeMapArrivalSearch::init() {
    id = new QString("");
    m_id_isSet = false;
    coords = new OAICoords();
    m_coords_isSet = false;
    transportation = new OAIRequestTransportation();
    m_transportation_isSet = false;
    travel_time = 0;
    m_travel_time_isSet = false;
    arrival_time = NULL;
    m_arrival_time_isSet = false;
    properties = new QList<OAIRequestTimeMapProperty*>();
    m_properties_isSet = false;
    range = new OAIRequestRangeNoMaxResults();
    m_range_isSet = false;
}

void
OAIRequestTimeMapArrivalSearch::cleanup() {
    if(id != nullptr) { 
        delete id;
    }
    if(coords != nullptr) { 
        delete coords;
    }
    if(transportation != nullptr) { 
        delete transportation;
    }

    if(arrival_time != nullptr) { 
        delete arrival_time;
    }
    if(properties != nullptr) { 
        auto arr = properties;
        for(auto o: *arr) { 
            delete o;
        }
        delete properties;
    }
    if(range != nullptr) { 
        delete range;
    }
}

OAIRequestTimeMapArrivalSearch*
OAIRequestTimeMapArrivalSearch::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIRequestTimeMapArrivalSearch::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&id, pJson["id"], "QString", "QString");
    
    ::OpenAPI::setValue(&coords, pJson["coords"], "OAICoords", "OAICoords");
    
    ::OpenAPI::setValue(&transportation, pJson["transportation"], "OAIRequestTransportation", "OAIRequestTransportation");
    
    ::OpenAPI::setValue(&travel_time, pJson["travel_time"], "qint32", "");
    
    ::OpenAPI::setValue(&arrival_time, pJson["arrival_time"], "QDateTime", "QDateTime");
    
    
    ::OpenAPI::setValue(&properties, pJson["properties"], "QList", "OAIRequestTimeMapProperty");
    ::OpenAPI::setValue(&range, pJson["range"], "OAIRequestRangeNoMaxResults", "OAIRequestRangeNoMaxResults");
    
}

QString
OAIRequestTimeMapArrivalSearch::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRequestTimeMapArrivalSearch::asJsonObject() {
    QJsonObject obj;
    if(id != nullptr && *id != QString("")){
        toJsonValue(QString("id"), id, obj, QString("QString"));
    }
    if((coords != nullptr) && (coords->isSet())){
        toJsonValue(QString("coords"), coords, obj, QString("OAICoords"));
    }
    if((transportation != nullptr) && (transportation->isSet())){
        toJsonValue(QString("transportation"), transportation, obj, QString("OAIRequestTransportation"));
    }
    if(m_travel_time_isSet){
        obj.insert("travel_time", QJsonValue(travel_time));
    }
    if(arrival_time != nullptr) { 
        toJsonValue(QString("arrival_time"), arrival_time, obj, QString("QDateTime"));
    }
    if(properties->size() > 0){
        toJsonArray((QList<void*>*)properties, obj, "properties", "OAIRequestTimeMapProperty");
    }
    if((range != nullptr) && (range->isSet())){
        toJsonValue(QString("range"), range, obj, QString("OAIRequestRangeNoMaxResults"));
    }

    return obj;
}

QString*
OAIRequestTimeMapArrivalSearch::getId() {
    return id;
}
void
OAIRequestTimeMapArrivalSearch::setId(QString* id) {
    this->id = id;
    this->m_id_isSet = true;
}

OAICoords*
OAIRequestTimeMapArrivalSearch::getCoords() {
    return coords;
}
void
OAIRequestTimeMapArrivalSearch::setCoords(OAICoords* coords) {
    this->coords = coords;
    this->m_coords_isSet = true;
}

OAIRequestTransportation*
OAIRequestTimeMapArrivalSearch::getTransportation() {
    return transportation;
}
void
OAIRequestTimeMapArrivalSearch::setTransportation(OAIRequestTransportation* transportation) {
    this->transportation = transportation;
    this->m_transportation_isSet = true;
}

qint32
OAIRequestTimeMapArrivalSearch::getTravelTime() {
    return travel_time;
}
void
OAIRequestTimeMapArrivalSearch::setTravelTime(qint32 travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

QDateTime*
OAIRequestTimeMapArrivalSearch::getArrivalTime() {
    return arrival_time;
}
void
OAIRequestTimeMapArrivalSearch::setArrivalTime(QDateTime* arrival_time) {
    this->arrival_time = arrival_time;
    this->m_arrival_time_isSet = true;
}

QList<OAIRequestTimeMapProperty*>*
OAIRequestTimeMapArrivalSearch::getProperties() {
    return properties;
}
void
OAIRequestTimeMapArrivalSearch::setProperties(QList<OAIRequestTimeMapProperty*>* properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}

OAIRequestRangeNoMaxResults*
OAIRequestTimeMapArrivalSearch::getRange() {
    return range;
}
void
OAIRequestTimeMapArrivalSearch::setRange(OAIRequestRangeNoMaxResults* range) {
    this->range = range;
    this->m_range_isSet = true;
}


bool
OAIRequestTimeMapArrivalSearch::isSet(){
    bool isObjectUpdated = false;
    do{
        if(id != nullptr && *id != QString("")){ isObjectUpdated = true; break;}
        if(coords != nullptr && coords->isSet()){ isObjectUpdated = true; break;}
        if(transportation != nullptr && transportation->isSet()){ isObjectUpdated = true; break;}
        if(m_travel_time_isSet){ isObjectUpdated = true; break;}
        if(properties->size() > 0){ isObjectUpdated = true; break;}
        if(range != nullptr && range->isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
