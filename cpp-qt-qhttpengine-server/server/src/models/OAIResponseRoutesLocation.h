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
 * OAIResponseRoutesLocation.h
 *
 * 
 */

#ifndef OAIResponseRoutesLocation_H
#define OAIResponseRoutesLocation_H

#include <QJsonObject>

#include "OAIResponseRoutesProperties.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseRoutesLocation : public OAIObject {
public:
    OAIResponseRoutesLocation();
    OAIResponseRoutesLocation(QString json);
    ~OAIResponseRoutesLocation() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QList<OAIResponseRoutesProperties> getProperties() const;
    void setProperties(const QList<OAIResponseRoutesProperties> &properties);
    bool is_properties_Set() const;
    bool is_properties_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QList<OAIResponseRoutesProperties> properties;
    bool m_properties_isSet;
    bool m_properties_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseRoutesLocation)

#endif // OAIResponseRoutesLocation_H
