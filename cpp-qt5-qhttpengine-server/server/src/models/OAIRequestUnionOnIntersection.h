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
 * OAIRequestUnionOnIntersection.h
 *
 * 
 */

#ifndef OAIRequestUnionOnIntersection_H
#define OAIRequestUnionOnIntersection_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestUnionOnIntersection : public OAIObject {
public:
    OAIRequestUnionOnIntersection();
    OAIRequestUnionOnIntersection(QString json);
    ~OAIRequestUnionOnIntersection() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QList<QString> getSearchIds() const;
    void setSearchIds(const QList<QString> &search_ids);
    bool is_search_ids_Set() const;
    bool is_search_ids_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QList<QString> search_ids;
    bool m_search_ids_isSet;
    bool m_search_ids_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRequestUnionOnIntersection)

#endif // OAIRequestUnionOnIntersection_H
