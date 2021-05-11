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
 * OAIResponseTimeMapWkt.h
 *
 * 
 */

#ifndef OAIResponseTimeMapWkt_H
#define OAIResponseTimeMapWkt_H

#include <QJsonObject>

#include "OAIResponseTimeMapWktResult.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeMapWkt : public OAIObject {
public:
    OAIResponseTimeMapWkt();
    OAIResponseTimeMapWkt(QString json);
    ~OAIResponseTimeMapWkt() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIResponseTimeMapWktResult> getResults() const;
    void setResults(const QList<OAIResponseTimeMapWktResult> &results);
    bool is_results_Set() const;
    bool is_results_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIResponseTimeMapWktResult> results;
    bool m_results_isSet;
    bool m_results_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseTimeMapWkt)

#endif // OAIResponseTimeMapWkt_H
