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

#include "OAIResponseTimeFilterPostcodeSectorProperties.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeFilterPostcodeSectorProperties::OAIResponseTimeFilterPostcodeSectorProperties(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeFilterPostcodeSectorProperties::OAIResponseTimeFilterPostcodeSectorProperties() {
    this->initializeModel();
}

OAIResponseTimeFilterPostcodeSectorProperties::~OAIResponseTimeFilterPostcodeSectorProperties() {}

void OAIResponseTimeFilterPostcodeSectorProperties::initializeModel() {

    m_travel_time_reachable_isSet = false;
    m_travel_time_reachable_isValid = false;

    m_travel_time_all_isSet = false;
    m_travel_time_all_isValid = false;

    m_coverage_isSet = false;
    m_coverage_isValid = false;
}

void OAIResponseTimeFilterPostcodeSectorProperties::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeFilterPostcodeSectorProperties::fromJsonObject(QJsonObject json) {

    m_travel_time_reachable_isValid = ::OpenAPI::fromJsonValue(travel_time_reachable, json[QString("travel_time_reachable")]);
    m_travel_time_reachable_isSet = !json[QString("travel_time_reachable")].isNull() && m_travel_time_reachable_isValid;

    m_travel_time_all_isValid = ::OpenAPI::fromJsonValue(travel_time_all, json[QString("travel_time_all")]);
    m_travel_time_all_isSet = !json[QString("travel_time_all")].isNull() && m_travel_time_all_isValid;

    m_coverage_isValid = ::OpenAPI::fromJsonValue(coverage, json[QString("coverage")]);
    m_coverage_isSet = !json[QString("coverage")].isNull() && m_coverage_isValid;
}

QString OAIResponseTimeFilterPostcodeSectorProperties::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeFilterPostcodeSectorProperties::asJsonObject() const {
    QJsonObject obj;
    if (travel_time_reachable.isSet()) {
        obj.insert(QString("travel_time_reachable"), ::OpenAPI::toJsonValue(travel_time_reachable));
    }
    if (travel_time_all.isSet()) {
        obj.insert(QString("travel_time_all"), ::OpenAPI::toJsonValue(travel_time_all));
    }
    if (m_coverage_isSet) {
        obj.insert(QString("coverage"), ::OpenAPI::toJsonValue(coverage));
    }
    return obj;
}

OAIResponseTravelTimeStatistics OAIResponseTimeFilterPostcodeSectorProperties::getTravelTimeReachable() const {
    return travel_time_reachable;
}
void OAIResponseTimeFilterPostcodeSectorProperties::setTravelTimeReachable(const OAIResponseTravelTimeStatistics &travel_time_reachable) {
    this->travel_time_reachable = travel_time_reachable;
    this->m_travel_time_reachable_isSet = true;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_travel_time_reachable_Set() const{
    return m_travel_time_reachable_isSet;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_travel_time_reachable_Valid() const{
    return m_travel_time_reachable_isValid;
}

OAIResponseTravelTimeStatistics OAIResponseTimeFilterPostcodeSectorProperties::getTravelTimeAll() const {
    return travel_time_all;
}
void OAIResponseTimeFilterPostcodeSectorProperties::setTravelTimeAll(const OAIResponseTravelTimeStatistics &travel_time_all) {
    this->travel_time_all = travel_time_all;
    this->m_travel_time_all_isSet = true;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_travel_time_all_Set() const{
    return m_travel_time_all_isSet;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_travel_time_all_Valid() const{
    return m_travel_time_all_isValid;
}

double OAIResponseTimeFilterPostcodeSectorProperties::getCoverage() const {
    return coverage;
}
void OAIResponseTimeFilterPostcodeSectorProperties::setCoverage(const double &coverage) {
    this->coverage = coverage;
    this->m_coverage_isSet = true;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_coverage_Set() const{
    return m_coverage_isSet;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::is_coverage_Valid() const{
    return m_coverage_isValid;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (travel_time_reachable.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (travel_time_all.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_coverage_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseTimeFilterPostcodeSectorProperties::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
