/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIResponseTimeFilterPostcodes.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterPostcodes_H
#define OAIResponseTimeFilterPostcodes_H

#include <QJsonObject>

#include "OAIResponseTimeFilterPostcodesResult.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeFilterPostcodes : public OAIObject {
public:
    OAIResponseTimeFilterPostcodes();
    OAIResponseTimeFilterPostcodes(QString json);
    ~OAIResponseTimeFilterPostcodes() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIResponseTimeFilterPostcodesResult> getResults() const;
    void setResults(const QList<OAIResponseTimeFilterPostcodesResult> &results);
    bool is_results_Set() const;
    bool is_results_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIResponseTimeFilterPostcodesResult> results;
    bool m_results_isSet;
    bool m_results_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseTimeFilterPostcodes)

#endif // OAIResponseTimeFilterPostcodes_H
