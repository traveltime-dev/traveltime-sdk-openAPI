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


#include "OAIResponseTimeMapResult.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIResponseTimeMapResult::OAIResponseTimeMapResult(QString json) {
    init();
    this->fromJson(json);
}

OAIResponseTimeMapResult::OAIResponseTimeMapResult() {
    init();
}

OAIResponseTimeMapResult::~OAIResponseTimeMapResult() {
    this->cleanup();
}

void
OAIResponseTimeMapResult::init() {
    search_id = new QString("");
    m_search_id_isSet = false;
    shapes = new QList<OAIResponseShape*>();
    m_shapes_isSet = false;
    properties = new OAIResponseTimeMapProperties();
    m_properties_isSet = false;
}

void
OAIResponseTimeMapResult::cleanup() {
    if(search_id != nullptr) { 
        delete search_id;
    }
    if(shapes != nullptr) { 
        auto arr = shapes;
        for(auto o: *arr) { 
            delete o;
        }
        delete shapes;
    }
    if(properties != nullptr) { 
        delete properties;
    }
}

OAIResponseTimeMapResult*
OAIResponseTimeMapResult::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIResponseTimeMapResult::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&search_id, pJson["search_id"], "QString", "QString");
    
    
    ::OpenAPI::setValue(&shapes, pJson["shapes"], "QList", "OAIResponseShape");
    ::OpenAPI::setValue(&properties, pJson["properties"], "OAIResponseTimeMapProperties", "OAIResponseTimeMapProperties");
    
}

QString
OAIResponseTimeMapResult::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIResponseTimeMapResult::asJsonObject() {
    QJsonObject obj;
    if(search_id != nullptr && *search_id != QString("")){
        toJsonValue(QString("search_id"), search_id, obj, QString("QString"));
    }
    if(shapes->size() > 0){
        toJsonArray((QList<void*>*)shapes, obj, "shapes", "OAIResponseShape");
    }
    if((properties != nullptr) && (properties->isSet())){
        toJsonValue(QString("properties"), properties, obj, QString("OAIResponseTimeMapProperties"));
    }

    return obj;
}

QString*
OAIResponseTimeMapResult::getSearchId() {
    return search_id;
}
void
OAIResponseTimeMapResult::setSearchId(QString* search_id) {
    this->search_id = search_id;
    this->m_search_id_isSet = true;
}

QList<OAIResponseShape*>*
OAIResponseTimeMapResult::getShapes() {
    return shapes;
}
void
OAIResponseTimeMapResult::setShapes(QList<OAIResponseShape*>* shapes) {
    this->shapes = shapes;
    this->m_shapes_isSet = true;
}

OAIResponseTimeMapProperties*
OAIResponseTimeMapResult::getProperties() {
    return properties;
}
void
OAIResponseTimeMapResult::setProperties(OAIResponseTimeMapProperties* properties) {
    this->properties = properties;
    this->m_properties_isSet = true;
}


bool
OAIResponseTimeMapResult::isSet(){
    bool isObjectUpdated = false;
    do{
        if(search_id != nullptr && *search_id != QString("")){ isObjectUpdated = true; break;}
        if(shapes->size() > 0){ isObjectUpdated = true; break;}
        if(properties != nullptr && properties->isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
