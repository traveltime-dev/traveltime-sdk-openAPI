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
 * OAIRequestRoutes.h
 *
 * 
 */

#ifndef OAIRequestRoutes_H
#define OAIRequestRoutes_H

#include <QJsonObject>

#include "OAIRequestLocation.h"
#include "OAIRequestRoutesArrivalSearch.h"
#include "OAIRequestRoutesDepartureSearch.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestRoutes : public OAIObject {
public:
    OAIRequestRoutes();
    OAIRequestRoutes(QString json);
    ~OAIRequestRoutes() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIRequestLocation> getLocations() const;
    void setLocations(const QList<OAIRequestLocation> &locations);
    bool is_locations_Set() const;
    bool is_locations_Valid() const;

    QList<OAIRequestRoutesDepartureSearch> getDepartureSearches() const;
    void setDepartureSearches(const QList<OAIRequestRoutesDepartureSearch> &departure_searches);
    bool is_departure_searches_Set() const;
    bool is_departure_searches_Valid() const;

    QList<OAIRequestRoutesArrivalSearch> getArrivalSearches() const;
    void setArrivalSearches(const QList<OAIRequestRoutesArrivalSearch> &arrival_searches);
    bool is_arrival_searches_Set() const;
    bool is_arrival_searches_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIRequestLocation> locations;
    bool m_locations_isSet;
    bool m_locations_isValid;

    QList<OAIRequestRoutesDepartureSearch> departure_searches;
    bool m_departure_searches_isSet;
    bool m_departure_searches_isValid;

    QList<OAIRequestRoutesArrivalSearch> arrival_searches;
    bool m_arrival_searches_isSet;
    bool m_arrival_searches_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestRoutes)

#endif // OAIRequestRoutes_H
