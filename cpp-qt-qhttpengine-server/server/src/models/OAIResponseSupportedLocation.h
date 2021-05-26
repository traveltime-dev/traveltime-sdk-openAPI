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
 * OAIResponseSupportedLocation.h
 *
 * 
 */

#ifndef OAIResponseSupportedLocation_H
#define OAIResponseSupportedLocation_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseSupportedLocation : public OAIObject {
public:
    OAIResponseSupportedLocation();
    OAIResponseSupportedLocation(QString json);
    ~OAIResponseSupportedLocation() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getMapName() const;
    void setMapName(const QString &map_name);
    bool is_map_name_Set() const;
    bool is_map_name_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString map_name;
    bool m_map_name_isSet;
    bool m_map_name_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseSupportedLocation)

#endif // OAIResponseSupportedLocation_H