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
 * OAIResponseTimeMapBoundingBoxesResult.h
 *
 * 
 */

#ifndef OAIResponseTimeMapBoundingBoxesResult_H
#define OAIResponseTimeMapBoundingBoxesResult_H

#include <QJsonObject>

#include "OAIResponseBoundingBox.h"
#include "OAIResponseTimeMapProperties.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseTimeMapBoundingBoxesResult : public OAIObject {
public:
    OAIResponseTimeMapBoundingBoxesResult();
    OAIResponseTimeMapBoundingBoxesResult(QString json);
    ~OAIResponseTimeMapBoundingBoxesResult() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSearchId() const;
    void setSearchId(const QString &search_id);
    bool is_search_id_Set() const;
    bool is_search_id_Valid() const;

    QList<OAIResponseBoundingBox> getBoundingBoxes() const;
    void setBoundingBoxes(const QList<OAIResponseBoundingBox> &bounding_boxes);
    bool is_bounding_boxes_Set() const;
    bool is_bounding_boxes_Valid() const;

    OAIResponseTimeMapProperties getProperties() const;
    void setProperties(const OAIResponseTimeMapProperties &properties);
    bool is_properties_Set() const;
    bool is_properties_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString search_id;
    bool m_search_id_isSet;
    bool m_search_id_isValid;

    QList<OAIResponseBoundingBox> bounding_boxes;
    bool m_bounding_boxes_isSet;
    bool m_bounding_boxes_isValid;

    OAIResponseTimeMapProperties properties;
    bool m_properties_isSet;
    bool m_properties_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIResponseTimeMapBoundingBoxesResult)

#endif // OAIResponseTimeMapBoundingBoxesResult_H
