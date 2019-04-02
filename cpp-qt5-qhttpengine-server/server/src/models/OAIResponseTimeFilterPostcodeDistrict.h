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
 * OAIResponseTimeFilterPostcodeDistrict.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterPostcodeDistrict_H
#define OAIResponseTimeFilterPostcodeDistrict_H

#include <QJsonObject>


#include "OAIResponseTimeFilterPostcodeDistrictProperties.h"

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeFilterPostcodeDistrict: public OAIObject {
public:
    OAIResponseTimeFilterPostcodeDistrict();
    OAIResponseTimeFilterPostcodeDistrict(QString json);
    ~OAIResponseTimeFilterPostcodeDistrict() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    String getCode() const;
    void setCode(const String &code);

    OAIResponseTimeFilterPostcodeDistrictProperties getProperties() const;
    void setProperties(const OAIResponseTimeFilterPostcodeDistrictProperties &properties);

    virtual bool isSet() const override;

private:
    String code;
    bool m_code_isSet;

    OAIResponseTimeFilterPostcodeDistrictProperties properties;
    bool m_properties_isSet;

};

}

#endif // OAIResponseTimeFilterPostcodeDistrict_H