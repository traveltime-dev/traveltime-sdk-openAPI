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
 * OAIResponseTimeFilterFastProperties.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterFastProperties_H
#define OAIResponseTimeFilterFastProperties_H

#include <QJsonObject>


#include "OAIResponseFaresFast.h"

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIResponseTimeFilterFastProperties: public OAIObject {
public:
    OAIResponseTimeFilterFastProperties();
    OAIResponseTimeFilterFastProperties(QString json);
    ~OAIResponseTimeFilterFastProperties() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    qint32 getTravelTime() const;
    void setTravelTime(const qint32 &travel_time);

    
    OAIResponseFaresFast getFares() const;
    void setFares(const OAIResponseFaresFast &fares);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    qint32 travel_time;
    bool m_travel_time_isSet;
    bool m_travel_time_isValid;
    
    OAIResponseFaresFast fares;
    bool m_fares_isSet;
    bool m_fares_isValid;
    
    };

}

#endif // OAIResponseTimeFilterFastProperties_H