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

/*
 * OAIResponseFareTicket.h
 *
 * 
 */

#ifndef OAIResponseFareTicket_H
#define OAIResponseFareTicket_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseFareTicket : public OAIObject {
public:
    OAIResponseFareTicket();
    OAIResponseFareTicket(QString json);
    ~OAIResponseFareTicket() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    double getPrice() const;
    void setPrice(const double &price);
    bool is_price_Set() const;
    bool is_price_Valid() const;

    QString getCurrency() const;
    void setCurrency(const QString &currency);
    bool is_currency_Set() const;
    bool is_currency_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString type;
    bool m_type_isSet;
    bool m_type_isValid;

    double price;
    bool m_price_isSet;
    bool m_price_isValid;

    QString currency;
    bool m_currency_isSet;
    bool m_currency_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseFareTicket)

#endif // OAIResponseFareTicket_H
