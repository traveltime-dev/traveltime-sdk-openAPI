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
 * OAIRequestArrivalTimePeriod.h
 *
 * 
 */

#ifndef OAIRequestArrivalTimePeriod_H
#define OAIRequestArrivalTimePeriod_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestArrivalTimePeriod : public OAIEnum {
public:
    OAIRequestArrivalTimePeriod();
    OAIRequestArrivalTimePeriod(QString json);
    ~OAIRequestArrivalTimePeriod() override;

    QString asJson() const override;
    QJsonValue asJsonValue() const override;
    void fromJsonValue(QJsonValue json) override;
    void fromJson(QString jsonString) override;

    enum class eOAIRequestArrivalTimePeriod {
        INVALID_VALUE_OPENAPI_GENERATED = 0,
        WEEKDAY_MORNING
    };
    OAIRequestArrivalTimePeriod::eOAIRequestArrivalTimePeriod getValue() const;
    void setValue(const OAIRequestArrivalTimePeriod::eOAIRequestArrivalTimePeriod& value);
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    eOAIRequestArrivalTimePeriod m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestArrivalTimePeriod)

#endif // OAIRequestArrivalTimePeriod_H
