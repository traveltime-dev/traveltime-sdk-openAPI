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
 * OAIRequestTimeFilterPostcodeSectorsProperty.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterPostcodeSectorsProperty_H_
#define OAIRequestTimeFilterPostcodeSectorsProperty_H_

#include <QJsonObject>



#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterPostcodeSectorsProperty: public OAIObject {
public:
    OAIRequestTimeFilterPostcodeSectorsProperty();
    OAIRequestTimeFilterPostcodeSectorsProperty(QString json);
    ~OAIRequestTimeFilterPostcodeSectorsProperty();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIRequestTimeFilterPostcodeSectorsProperty* fromJson(QString jsonString) override;


    virtual bool isSet() override;

private:
};

}

#endif /* OAIRequestTimeFilterPostcodeSectorsProperty_H_ */