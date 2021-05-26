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

#include "OAIResponseTimeFilterPostcodeSectors.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeFilterPostcodeSectors::OAIResponseTimeFilterPostcodeSectors(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeFilterPostcodeSectors::OAIResponseTimeFilterPostcodeSectors() {
    this->initializeModel();
}

OAIResponseTimeFilterPostcodeSectors::~OAIResponseTimeFilterPostcodeSectors() {}

void OAIResponseTimeFilterPostcodeSectors::initializeModel() {

    m_results_isSet = false;
    m_results_isValid = false;
}

void OAIResponseTimeFilterPostcodeSectors::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeFilterPostcodeSectors::fromJsonObject(QJsonObject json) {

    m_results_isValid = ::OpenAPI::fromJsonValue(results, json[QString("results")]);
    m_results_isSet = !json[QString("results")].isNull() && m_results_isValid;
}

QString OAIResponseTimeFilterPostcodeSectors::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeFilterPostcodeSectors::asJsonObject() const {
    QJsonObject obj;
    if (results.size() > 0) {
        obj.insert(QString("results"), ::OpenAPI::toJsonValue(results));
    }
    return obj;
}

QList<OAIResponseTimeFilterPostcodeSectorsResult> OAIResponseTimeFilterPostcodeSectors::getResults() const {
    return results;
}
void OAIResponseTimeFilterPostcodeSectors::setResults(const QList<OAIResponseTimeFilterPostcodeSectorsResult> &results) {
    this->results = results;
    this->m_results_isSet = true;
}

bool OAIResponseTimeFilterPostcodeSectors::is_results_Set() const{
    return m_results_isSet;
}

bool OAIResponseTimeFilterPostcodeSectors::is_results_Valid() const{
    return m_results_isValid;
}

bool OAIResponseTimeFilterPostcodeSectors::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (results.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseTimeFilterPostcodeSectors::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_results_isValid && true;
}

} // namespace OpenAPI
