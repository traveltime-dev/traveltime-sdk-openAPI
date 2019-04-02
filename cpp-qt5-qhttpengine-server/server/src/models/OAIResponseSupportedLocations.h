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
 * OAIResponseSupportedLocations.h
 *
 * 
 */

#ifndef OAIResponseSupportedLocations_H
#define OAIResponseSupportedLocations_H

#include <QJsonObject>


#include "OAIResponseSupportedLocation.h"
#include <QList>

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseSupportedLocations: public OAIObject {
public:
    OAIResponseSupportedLocations();
    OAIResponseSupportedLocations(QString json);
    ~OAIResponseSupportedLocations() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIResponseSupportedLocation> getLocations() const;
    void setLocations(const QList<OAIResponseSupportedLocation> &locations);

    QList<QString> getUnsupportedLocations() const;
    void setUnsupportedLocations(const QList<QString> &unsupported_locations);

    virtual bool isSet() const override;

private:
    QList<OAIResponseSupportedLocation> locations;
    bool m_locations_isSet;

    QList<QString> unsupported_locations;
    bool m_unsupported_locations_isSet;

};

}

#endif // OAIResponseSupportedLocations_H