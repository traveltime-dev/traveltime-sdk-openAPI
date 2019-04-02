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
 * OAIResponseTimeFilterPostcodeSectorsResult.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterPostcodeSectorsResult_H
#define OAIResponseTimeFilterPostcodeSectorsResult_H

#include <QJsonObject>


#include "OAIResponseTimeFilterPostcodeSector.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeFilterPostcodeSectorsResult: public OAIObject {
public:
    OAIResponseTimeFilterPostcodeSectorsResult();
    OAIResponseTimeFilterPostcodeSectorsResult(QString json);
    ~OAIResponseTimeFilterPostcodeSectorsResult() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSearchId() const;
    void setSearchId(const QString &search_id);

    QList<OAIResponseTimeFilterPostcodeSector> getSectors() const;
    void setSectors(const QList<OAIResponseTimeFilterPostcodeSector> &sectors);

    virtual bool isSet() const override;

private:
    QString search_id;
    bool m_search_id_isSet;

    QList<OAIResponseTimeFilterPostcodeSector> sectors;
    bool m_sectors_isSet;

};

}

#endif // OAIResponseTimeFilterPostcodeSectorsResult_H