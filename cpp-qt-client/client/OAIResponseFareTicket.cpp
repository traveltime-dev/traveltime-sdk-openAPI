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

#include "OAIResponseFareTicket.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseFareTicket::OAIResponseFareTicket(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseFareTicket::OAIResponseFareTicket() {
    this->initializeModel();
}

OAIResponseFareTicket::~OAIResponseFareTicket() {}

void OAIResponseFareTicket::initializeModel() {

    m_type_isSet = false;
    m_type_isValid = false;

    m_price_isSet = false;
    m_price_isValid = false;

    m_currency_isSet = false;
    m_currency_isValid = false;
}

void OAIResponseFareTicket::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseFareTicket::fromJsonObject(QJsonObject json) {

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_price_isValid = ::OpenAPI::fromJsonValue(price, json[QString("price")]);
    m_price_isSet = !json[QString("price")].isNull() && m_price_isValid;

    m_currency_isValid = ::OpenAPI::fromJsonValue(currency, json[QString("currency")]);
    m_currency_isSet = !json[QString("currency")].isNull() && m_currency_isValid;
}

QString OAIResponseFareTicket::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseFareTicket::asJsonObject() const {
    QJsonObject obj;
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_price_isSet) {
        obj.insert(QString("price"), ::OpenAPI::toJsonValue(price));
    }
    if (m_currency_isSet) {
        obj.insert(QString("currency"), ::OpenAPI::toJsonValue(currency));
    }
    return obj;
}

QString OAIResponseFareTicket::getType() const {
    return type;
}
void OAIResponseFareTicket::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIResponseFareTicket::is_type_Set() const{
    return m_type_isSet;
}

bool OAIResponseFareTicket::is_type_Valid() const{
    return m_type_isValid;
}

double OAIResponseFareTicket::getPrice() const {
    return price;
}
void OAIResponseFareTicket::setPrice(const double &price) {
    this->price = price;
    this->m_price_isSet = true;
}

bool OAIResponseFareTicket::is_price_Set() const{
    return m_price_isSet;
}

bool OAIResponseFareTicket::is_price_Valid() const{
    return m_price_isValid;
}

QString OAIResponseFareTicket::getCurrency() const {
    return currency;
}
void OAIResponseFareTicket::setCurrency(const QString &currency) {
    this->currency = currency;
    this->m_currency_isSet = true;
}

bool OAIResponseFareTicket::is_currency_Set() const{
    return m_currency_isSet;
}

bool OAIResponseFareTicket::is_currency_Valid() const{
    return m_currency_isValid;
}

bool OAIResponseFareTicket::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_price_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_currency_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseFareTicket::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_type_isValid && m_price_isValid && m_currency_isValid && true;
}

} // namespace OpenAPI