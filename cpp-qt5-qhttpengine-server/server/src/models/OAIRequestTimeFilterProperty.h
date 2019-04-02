/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRequestTimeFilterProperty.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterProperty_H
#define OAIRequestTimeFilterProperty_H

#include <QJsonObject>



#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterProperty: public OAIObject {
public:
    OAIRequestTimeFilterProperty();
    OAIRequestTimeFilterProperty(QString json);
    ~OAIRequestTimeFilterProperty() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    virtual bool isSet() const override;

private:
};

}

#endif // OAIRequestTimeFilterProperty_H