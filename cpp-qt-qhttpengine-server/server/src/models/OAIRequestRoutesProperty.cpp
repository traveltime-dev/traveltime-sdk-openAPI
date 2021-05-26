/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRequestRoutesProperty.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestRoutesProperty::OAIRequestRoutesProperty(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestRoutesProperty::OAIRequestRoutesProperty() {
    this->initializeModel();
}

OAIRequestRoutesProperty::~OAIRequestRoutesProperty() {}

void OAIRequestRoutesProperty::initializeModel() {

    m_value_isSet = false;
    m_value_isValid = false;
    m_value = eOAIRequestRoutesProperty::INVALID_VALUE_OPENAPI_GENERATED;
}

void OAIRequestRoutesProperty::fromJson(QString jsonString) {
    
    if ( jsonString.compare("travel_time", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestRoutesProperty::TRAVEL_TIME;
        m_value_isSet = m_value_isValid = true;
    }
    else if ( jsonString.compare("distance", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestRoutesProperty::DISTANCE;
        m_value_isSet = m_value_isValid = true;
    }
    else if ( jsonString.compare("fares", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestRoutesProperty::FARES;
        m_value_isSet = m_value_isValid = true;
    }
    else if ( jsonString.compare("route", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestRoutesProperty::ROUTE;
        m_value_isSet = m_value_isValid = true;
    }
}

void OAIRequestRoutesProperty::fromJsonValue(QJsonValue json) {
fromJson(json.toString());
}

QString OAIRequestRoutesProperty::asJson() const {
    
    QString val;
    switch (m_value){
        case eOAIRequestRoutesProperty::TRAVEL_TIME:
            val = "travel_time";
            break;
        case eOAIRequestRoutesProperty::DISTANCE:
            val = "distance";
            break;
        case eOAIRequestRoutesProperty::FARES:
            val = "fares";
            break;
        case eOAIRequestRoutesProperty::ROUTE:
            val = "route";
            break;
        default:
            break;
    }
    return val;
}

QJsonValue OAIRequestRoutesProperty::asJsonValue() const {
    
    return QJsonValue(asJson());
}


OAIRequestRoutesProperty::eOAIRequestRoutesProperty OAIRequestRoutesProperty::getValue() const {
    return m_value;
}

void OAIRequestRoutesProperty::setValue(const OAIRequestRoutesProperty::eOAIRequestRoutesProperty& value){
    m_value = value;
    m_value_isSet = true;
}
bool OAIRequestRoutesProperty::isSet() const {
    
    return m_value_isSet;
}

bool OAIRequestRoutesProperty::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_value_isValid;
}

} // namespace OpenAPI