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
 * OAIResponseMapInfoFeaturesPublicTransport.h
 *
 * 
 */

#ifndef OAIResponseMapInfoFeaturesPublicTransport_H_
#define OAIResponseMapInfoFeaturesPublicTransport_H_

#include <QJsonObject>


#include <QDateTime>

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseMapInfoFeaturesPublicTransport: public OAIObject {
public:
    OAIResponseMapInfoFeaturesPublicTransport();
    OAIResponseMapInfoFeaturesPublicTransport(QString json);
    ~OAIResponseMapInfoFeaturesPublicTransport();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIResponseMapInfoFeaturesPublicTransport* fromJson(QString jsonString) override;

    QDateTime* getDateStart();
    void setDateStart(QDateTime* date_start);

    QDateTime* getDateEnd();
    void setDateEnd(QDateTime* date_end);


    virtual bool isSet() override;

private:
    QDateTime* date_start;
    bool m_date_start_isSet;

    QDateTime* date_end;
    bool m_date_end_isSet;

};

}

#endif /* OAIResponseMapInfoFeaturesPublicTransport_H_ */