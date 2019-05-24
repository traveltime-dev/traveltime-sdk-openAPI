/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIResponseGeocoding.h
 *
 * 
 */

#ifndef OAIResponseGeocoding_H
#define OAIResponseGeocoding_H

#include <QJsonObject>


#include "OAIResponseGeocodingGeoJsonFeature.h"
#include <QList>
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIResponseGeocoding: public OAIObject {
public:
    OAIResponseGeocoding();
    OAIResponseGeocoding(QString json);
    ~OAIResponseGeocoding() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    QString getType() const;
    void setType(const QString &type);

    
    QList<OAIResponseGeocodingGeoJsonFeature> getFeatures() const;
    void setFeatures(const QList<OAIResponseGeocodingGeoJsonFeature> &features);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    QString type;
    bool m_type_isSet;
    bool m_type_isValid;
    
    QList<OAIResponseGeocodingGeoJsonFeature> features;
    bool m_features_isSet;
    bool m_features_isValid;
    
    };

}

#endif // OAIResponseGeocoding_H