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


#include "OAIResponseFaresBreakdownItem.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseFaresBreakdownItem::OAIResponseFaresBreakdownItem(QString json) {
    init();
    this->fromJson(json);
}

OAIResponseFaresBreakdownItem::OAIResponseFaresBreakdownItem() {
    init();
}

OAIResponseFaresBreakdownItem::~OAIResponseFaresBreakdownItem() {
    this->cleanup();
}

void
OAIResponseFaresBreakdownItem::init() {
    modes = new QList<OAIResponseTransportationMode*>();
    m_modes_isSet = false;
    route_part_ids = new QList<qint32>();
    m_route_part_ids_isSet = false;
    tickets = new QList<OAIResponseFareTicket*>();
    m_tickets_isSet = false;
}

void
OAIResponseFaresBreakdownItem::cleanup() {
    if(modes != nullptr) { 
        auto arr = modes;
        for(auto o: *arr) { 
            delete o;
        }
        delete modes;
    }

    if(route_part_ids != nullptr) { 
        delete route_part_ids;
    }
    if(tickets != nullptr) { 
        auto arr = tickets;
        for(auto o: *arr) { 
            delete o;
        }
        delete tickets;
    }
}

OAIResponseFaresBreakdownItem*
OAIResponseFaresBreakdownItem::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIResponseFaresBreakdownItem::fromJsonObject(QJsonObject pJson) {
    
    ::OpenAPI::setValue(&modes, pJson["modes"], "QList", "OAIResponseTransportationMode");
    
    ::OpenAPI::setValue(&route_part_ids, pJson["route_part_ids"], "QList", "qint32");
    
    ::OpenAPI::setValue(&tickets, pJson["tickets"], "QList", "OAIResponseFareTicket");
}

QString
OAIResponseFaresBreakdownItem::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseFaresBreakdownItem::asJsonObject() {
    QJsonObject obj;
    if(modes->size() > 0){
        toJsonArray((QList<void*>*)modes, obj, "modes", "OAIResponseTransportationMode");
    }
    if(route_part_ids->size() > 0){
        toJsonArray((QList<void*>*)route_part_ids, obj, "route_part_ids", "");
    }
    if(tickets->size() > 0){
        toJsonArray((QList<void*>*)tickets, obj, "tickets", "OAIResponseFareTicket");
    }

    return obj;
}

QList<OAIResponseTransportationMode*>*
OAIResponseFaresBreakdownItem::getModes() {
    return modes;
}
void
OAIResponseFaresBreakdownItem::setModes(QList<OAIResponseTransportationMode*>* modes) {
    this->modes = modes;
    this->m_modes_isSet = true;
}

QList<qint32>*
OAIResponseFaresBreakdownItem::getRoutePartIds() {
    return route_part_ids;
}
void
OAIResponseFaresBreakdownItem::setRoutePartIds(QList<qint32>* route_part_ids) {
    this->route_part_ids = route_part_ids;
    this->m_route_part_ids_isSet = true;
}

QList<OAIResponseFareTicket*>*
OAIResponseFaresBreakdownItem::getTickets() {
    return tickets;
}
void
OAIResponseFaresBreakdownItem::setTickets(QList<OAIResponseFareTicket*>* tickets) {
    this->tickets = tickets;
    this->m_tickets_isSet = true;
}


bool
OAIResponseFaresBreakdownItem::isSet(){
    bool isObjectUpdated = false;
    do{
        if(modes->size() > 0){ isObjectUpdated = true; break;}
        if(m_route_part_ids_isSet){ isObjectUpdated = true; break;}
        if(route_part_ids->size() > 0){ isObjectUpdated = true; break;}
        if(tickets->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
