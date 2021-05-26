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
 * OAIResponseRoutesResult.h
 *
 * 
 */

#ifndef OAIResponseRoutesResult_H
#define OAIResponseRoutesResult_H

#include <QJsonObject>

#include "OAIResponseRoutesLocation.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseRoutesResult : public OAIObject {
public:
    OAIResponseRoutesResult();
    OAIResponseRoutesResult(QString json);
    ~OAIResponseRoutesResult() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSearchId() const;
    void setSearchId(const QString &search_id);
    bool is_search_id_Set() const;
    bool is_search_id_Valid() const;

    QList<OAIResponseRoutesLocation> getLocations() const;
    void setLocations(const QList<OAIResponseRoutesLocation> &locations);
    bool is_locations_Set() const;
    bool is_locations_Valid() const;

    QList<QString> getUnreachable() const;
    void setUnreachable(const QList<QString> &unreachable);
    bool is_unreachable_Set() const;
    bool is_unreachable_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString search_id;
    bool m_search_id_isSet;
    bool m_search_id_isValid;

    QList<OAIResponseRoutesLocation> locations;
    bool m_locations_isSet;
    bool m_locations_isValid;

    QList<QString> unreachable;
    bool m_unreachable_isSet;
    bool m_unreachable_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseRoutesResult)

#endif // OAIResponseRoutesResult_H
