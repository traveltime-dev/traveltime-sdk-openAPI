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

#include "OAIResponseTimeMapBoundingBoxes.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseTimeMapBoundingBoxes::OAIResponseTimeMapBoundingBoxes(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseTimeMapBoundingBoxes::OAIResponseTimeMapBoundingBoxes() {
    this->initializeModel();
}

OAIResponseTimeMapBoundingBoxes::~OAIResponseTimeMapBoundingBoxes() {}

void OAIResponseTimeMapBoundingBoxes::initializeModel() {

    m_results_isSet = false;
    m_results_isValid = false;
}

void OAIResponseTimeMapBoundingBoxes::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseTimeMapBoundingBoxes::fromJsonObject(QJsonObject json) {

    m_results_isValid = ::OpenAPI::fromJsonValue(results, json[QString("results")]);
    m_results_isSet = !json[QString("results")].isNull() && m_results_isValid;
}

QString OAIResponseTimeMapBoundingBoxes::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseTimeMapBoundingBoxes::asJsonObject() const {
    QJsonObject obj;
    if (results.size() > 0) {
        obj.insert(QString("results"), ::OpenAPI::toJsonValue(results));
    }
    return obj;
}

QList<OAIResponseTimeMapBoundingBoxesResult> OAIResponseTimeMapBoundingBoxes::getResults() const {
    return results;
}
void OAIResponseTimeMapBoundingBoxes::setResults(const QList<OAIResponseTimeMapBoundingBoxesResult> &results) {
    this->results = results;
    this->m_results_isSet = true;
}

bool OAIResponseTimeMapBoundingBoxes::is_results_Set() const{
    return m_results_isSet;
}

bool OAIResponseTimeMapBoundingBoxes::is_results_Valid() const{
    return m_results_isValid;
}

bool OAIResponseTimeMapBoundingBoxes::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (results.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseTimeMapBoundingBoxes::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_results_isValid && true;
}

} // namespace OpenAPI
