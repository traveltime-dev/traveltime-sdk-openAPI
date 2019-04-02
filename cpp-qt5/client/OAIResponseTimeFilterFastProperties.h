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
 * OAIResponseTimeFilterFastProperties.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterFastProperties_H_
#define OAIResponseTimeFilterFastProperties_H_

#include <QJsonObject>


#include "OAIResponseFaresFast.h"

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeFilterFastProperties: public OAIObject {
public:
    OAIResponseTimeFilterFastProperties();
    OAIResponseTimeFilterFastProperties(QString json);
    ~OAIResponseTimeFilterFastProperties();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIResponseTimeFilterFastProperties* fromJson(QString jsonString) override;

    qint32 getTravelTime();
    void setTravelTime(qint32 travel_time);

    OAIResponseFaresFast* getFares();
    void setFares(OAIResponseFaresFast* fares);


    virtual bool isSet() override;

private:
    qint32 travel_time;
    bool m_travel_time_isSet;

    OAIResponseFaresFast* fares;
    bool m_fares_isSet;

};

}

#endif /* OAIResponseTimeFilterFastProperties_H_ */