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

/*
 * OAIRequestTimeMapProperty.h
 *
 * 
 */

#ifndef OAIRequestTimeMapProperty_H
#define OAIRequestTimeMapProperty_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeMapProperty : public OAIEnum {
public:
    OAIRequestTimeMapProperty();
    OAIRequestTimeMapProperty(QString json);
    ~OAIRequestTimeMapProperty() override;

    QString asJson() const override;
    QJsonValue asJsonValue() const override;
    void fromJsonValue(QJsonValue json) override;
    void fromJson(QString jsonString) override;

    enum class eOAIRequestTimeMapProperty {
        INVALID_VALUE_OPENAPI_GENERATED = 0,
        IS_ONLY_WALKING
    };
    OAIRequestTimeMapProperty::eOAIRequestTimeMapProperty getValue() const;
    void setValue(const OAIRequestTimeMapProperty::eOAIRequestTimeMapProperty& value);
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    eOAIRequestTimeMapProperty m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestTimeMapProperty)

#endif // OAIRequestTimeMapProperty_H
