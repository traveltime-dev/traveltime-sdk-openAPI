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
 * OAIRequestLocation.h
 *
 * 
 */

#ifndef OAIRequestLocation_H
#define OAIRequestLocation_H

#include <QJsonObject>

#include "OAICoords.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestLocation : public OAIObject {
public:
    OAIRequestLocation();
    OAIRequestLocation(QString json);
    ~OAIRequestLocation() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    OAICoords getCoords() const;
    void setCoords(const OAICoords &coords);
    bool is_coords_Set() const;
    bool is_coords_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    OAICoords coords;
    bool m_coords_isSet;
    bool m_coords_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestLocation)

#endif // OAIRequestLocation_H