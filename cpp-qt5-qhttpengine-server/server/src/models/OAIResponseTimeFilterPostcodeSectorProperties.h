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
 * OAIResponseTimeFilterPostcodeSectorProperties.h
 *
 * 
 */

#ifndef OAIResponseTimeFilterPostcodeSectorProperties_H
#define OAIResponseTimeFilterPostcodeSectorProperties_H

#include <QJsonObject>

#include "OAIResponseTravelTimeStatistics.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeFilterPostcodeSectorProperties : public OAIObject {
public:
    OAIResponseTimeFilterPostcodeSectorProperties();
    OAIResponseTimeFilterPostcodeSectorProperties(QString json);
    ~OAIResponseTimeFilterPostcodeSectorProperties() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIResponseTravelTimeStatistics getTravelTimeReachable() const;
    void setTravelTimeReachable(const OAIResponseTravelTimeStatistics &travel_time_reachable);
    bool is_travel_time_reachable_Set() const;
    bool is_travel_time_reachable_Valid() const;

    OAIResponseTravelTimeStatistics getTravelTimeAll() const;
    void setTravelTimeAll(const OAIResponseTravelTimeStatistics &travel_time_all);
    bool is_travel_time_all_Set() const;
    bool is_travel_time_all_Valid() const;

    double getCoverage() const;
    void setCoverage(const double &coverage);
    bool is_coverage_Set() const;
    bool is_coverage_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIResponseTravelTimeStatistics travel_time_reachable;
    bool m_travel_time_reachable_isSet;
    bool m_travel_time_reachable_isValid;

    OAIResponseTravelTimeStatistics travel_time_all;
    bool m_travel_time_all_isSet;
    bool m_travel_time_all_isValid;

    double coverage;
    bool m_coverage_isSet;
    bool m_coverage_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseTimeFilterPostcodeSectorProperties)

#endif // OAIResponseTimeFilterPostcodeSectorProperties_H
