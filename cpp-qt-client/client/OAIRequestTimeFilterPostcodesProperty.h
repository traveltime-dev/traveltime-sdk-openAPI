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
 * OAIRequestTimeFilterPostcodesProperty.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterPostcodesProperty_H
#define OAIRequestTimeFilterPostcodesProperty_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterPostcodesProperty : public OAIEnum {
public:
    OAIRequestTimeFilterPostcodesProperty();
    OAIRequestTimeFilterPostcodesProperty(QString json);
    ~OAIRequestTimeFilterPostcodesProperty() override;

    QString asJson() const override;
    QJsonValue asJsonValue() const override;
    void fromJsonValue(QJsonValue json) override;
    void fromJson(QString jsonString) override;

    enum class eOAIRequestTimeFilterPostcodesProperty {
        INVALID_VALUE_OPENAPI_GENERATED = 0,
        TRAVEL_TIME, 
        DISTANCE
    };
    OAIRequestTimeFilterPostcodesProperty::eOAIRequestTimeFilterPostcodesProperty getValue() const;
    void setValue(const OAIRequestTimeFilterPostcodesProperty::eOAIRequestTimeFilterPostcodesProperty& value);
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    eOAIRequestTimeFilterPostcodesProperty m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestTimeFilterPostcodesProperty)

#endif // OAIRequestTimeFilterPostcodesProperty_H
