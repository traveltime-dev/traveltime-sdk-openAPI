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


#include "OAIResponseTimeFilterProperties.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseTimeFilterProperties::OAIResponseTimeFilterProperties(QString json) {
    init();
    this->fromJson(json);
}

OAIResponseTimeFilterProperties::OAIResponseTimeFilterProperties() {
    init();
}

OAIResponseTimeFilterProperties::~OAIResponseTimeFilterProperties() {
    this->cleanup();
}

void
OAIResponseTimeFilterProperties::init() {
    travel_time = 0;
    m_travel_time_isSet = false;
    distance = 0;
    m_distance_isSet = false;
    distance_breakdown = new QList<OAIResponseDistanceBreakdownItem*>();
    m_distance_breakdown_isSet = false;
    fares = new OAIResponseFares();
    m_fares_isSet = false;
    route = new OAIResponseRoute();
    m_route_isSet = false;
}

void
OAIResponseTimeFilterProperties::cleanup() {


    if(distance_breakdown != nullptr) { 
        auto arr = distance_breakdown;
        for(auto o: *arr) { 
            delete o;
        }
        delete distance_breakdown;
    }
    if(fares != nullptr) { 
        delete fares;
    }
    if(route != nullptr) { 
        delete route;
    }
}

OAIResponseTimeFilterProperties*
OAIResponseTimeFilterProperties::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIResponseTimeFilterProperties::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&travel_time, pJson["travel_time"], "qint32", "");
    
    ::OpenAPI::setValue(&distance, pJson["distance"], "qint32", "");
    
    
    ::OpenAPI::setValue(&distance_breakdown, pJson["distance_breakdown"], "QList", "OAIResponseDistanceBreakdownItem");
    ::OpenAPI::setValue(&fares, pJson["fares"], "OAIResponseFares", "OAIResponseFares");
    
    ::OpenAPI::setValue(&route, pJson["route"], "OAIResponseRoute", "OAIResponseRoute");
    
}

QString
OAIResponseTimeFilterProperties::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseTimeFilterProperties::asJsonObject() {
    QJsonObject obj;
    if(m_travel_time_isSet){
        obj.insert("travel_time", QJsonValue(travel_time));
    }
    if(m_distance_isSet){
        obj.insert("distance", QJsonValue(distance));
    }
    if(distance_breakdown->size() > 0){
        toJsonArray((QList<void*>*)distance_breakdown, obj, "distance_breakdown", "OAIResponseDistanceBreakdownItem");
    }
    if((fares != nullptr) && (fares->isSet())){
        toJsonValue(QString("fares"), fares, obj, QString("OAIResponseFares"));
    }
    if((route != nullptr) && (route->isSet())){
        toJsonValue(QString("route"), route, obj, QString("OAIResponseRoute"));
    }

    return obj;
}

qint32
OAIResponseTimeFilterProperties::getTravelTime() {
    return travel_time;
}
void
OAIResponseTimeFilterProperties::setTravelTime(qint32 travel_time) {
    this->travel_time = travel_time;
    this->m_travel_time_isSet = true;
}

qint32
OAIResponseTimeFilterProperties::getDistance() {
    return distance;
}
void
OAIResponseTimeFilterProperties::setDistance(qint32 distance) {
    this->distance = distance;
    this->m_distance_isSet = true;
}

QList<OAIResponseDistanceBreakdownItem*>*
OAIResponseTimeFilterProperties::getDistanceBreakdown() {
    return distance_breakdown;
}
void
OAIResponseTimeFilterProperties::setDistanceBreakdown(QList<OAIResponseDistanceBreakdownItem*>* distance_breakdown) {
    this->distance_breakdown = distance_breakdown;
    this->m_distance_breakdown_isSet = true;
}

OAIResponseFares*
OAIResponseTimeFilterProperties::getFares() {
    return fares;
}
void
OAIResponseTimeFilterProperties::setFares(OAIResponseFares* fares) {
    this->fares = fares;
    this->m_fares_isSet = true;
}

OAIResponseRoute*
OAIResponseTimeFilterProperties::getRoute() {
    return route;
}
void
OAIResponseTimeFilterProperties::setRoute(OAIResponseRoute* route) {
    this->route = route;
    this->m_route_isSet = true;
}


bool
OAIResponseTimeFilterProperties::isSet(){
    bool isObjectUpdated = false;
    do{
        if(m_travel_time_isSet){ isObjectUpdated = true; break;}
        if(m_distance_isSet){ isObjectUpdated = true; break;}
        if(distance_breakdown->size() > 0){ isObjectUpdated = true; break;}
        if(fares != nullptr && fares->isSet()){ isObjectUpdated = true; break;}
        if(route != nullptr && route->isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
