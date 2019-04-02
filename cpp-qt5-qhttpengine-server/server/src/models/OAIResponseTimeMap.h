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
 * OAIResponseTimeMap.h
 *
 * 
 */

#ifndef OAIResponseTimeMap_H
#define OAIResponseTimeMap_H

#include <QJsonObject>


#include "OAIResponseTimeMapResult.h"
#include <QList>

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeMap: public OAIObject {
public:
    OAIResponseTimeMap();
    OAIResponseTimeMap(QString json);
    ~OAIResponseTimeMap() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIResponseTimeMapResult> getResults() const;
    void setResults(const QList<OAIResponseTimeMapResult> &results);

    virtual bool isSet() const override;

private:
    QList<OAIResponseTimeMapResult> results;
    bool m_results_isSet;

};

}

#endif // OAIResponseTimeMap_H