/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRequestTimeFilterPostcodeSectorsProperty.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRequestTimeFilterPostcodeSectorsProperty::OAIRequestTimeFilterPostcodeSectorsProperty(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRequestTimeFilterPostcodeSectorsProperty::OAIRequestTimeFilterPostcodeSectorsProperty() {
    this->initializeModel();
}

OAIRequestTimeFilterPostcodeSectorsProperty::~OAIRequestTimeFilterPostcodeSectorsProperty() {}

void OAIRequestTimeFilterPostcodeSectorsProperty::initializeModel() {

    m_value_isSet = false;
    m_value_isValid = false;
    m_value = eOAIRequestTimeFilterPostcodeSectorsProperty::INVALID_VALUE_OPENAPI_GENERATED;
}

void OAIRequestTimeFilterPostcodeSectorsProperty::fromJson(QString jsonString) {
    
    if ( jsonString.compare("travel_time_reachable", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE;
        m_value_isSet = m_value_isValid = true;
    }
    else if ( jsonString.compare("travel_time_all", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL;
        m_value_isSet = m_value_isValid = true;
    }
    else if ( jsonString.compare("coverage", Qt::CaseInsensitive) == 0) {
        m_value = eOAIRequestTimeFilterPostcodeSectorsProperty::COVERAGE;
        m_value_isSet = m_value_isValid = true;
    }
}

void OAIRequestTimeFilterPostcodeSectorsProperty::fromJsonValue(QJsonValue json) {
fromJson(json.toString());
}

QString OAIRequestTimeFilterPostcodeSectorsProperty::asJson() const {
    
    QString val;
    switch (m_value){
        case eOAIRequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE:
            val = "travel_time_reachable";
            break;
        case eOAIRequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL:
            val = "travel_time_all";
            break;
        case eOAIRequestTimeFilterPostcodeSectorsProperty::COVERAGE:
            val = "coverage";
            break;
        default:
            break;
    }
    return val;
}

QJsonValue OAIRequestTimeFilterPostcodeSectorsProperty::asJsonValue() const {
    
    return QJsonValue(asJson());
}


OAIRequestTimeFilterPostcodeSectorsProperty::eOAIRequestTimeFilterPostcodeSectorsProperty OAIRequestTimeFilterPostcodeSectorsProperty::getValue() const {
    return m_value;
}

void OAIRequestTimeFilterPostcodeSectorsProperty::setValue(const OAIRequestTimeFilterPostcodeSectorsProperty::eOAIRequestTimeFilterPostcodeSectorsProperty& value){
    m_value = value;
    m_value_isSet = true;
}
bool OAIRequestTimeFilterPostcodeSectorsProperty::isSet() const {
    
    return m_value_isSet;
}

bool OAIRequestTimeFilterPostcodeSectorsProperty::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_value_isValid;
}

} // namespace OpenAPI
