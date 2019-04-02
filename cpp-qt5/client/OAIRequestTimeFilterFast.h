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
 * OAIRequestTimeFilterFast.h
 *
 * 
 */

#ifndef OAIRequestTimeFilterFast_H_
#define OAIRequestTimeFilterFast_H_

#include <QJsonObject>


#include "OAIRequestLocation.h"
#include "OAIRequestTimeFilterFastArrivalSearches.h"
#include <QList>

#include "OAIObject.h"

namespace OpenAPI {

class OAIRequestTimeFilterFast: public OAIObject {
public:
    OAIRequestTimeFilterFast();
    OAIRequestTimeFilterFast(QString json);
    ~OAIRequestTimeFilterFast();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIRequestTimeFilterFast* fromJson(QString jsonString) override;

    QList<OAIRequestLocation*>* getLocations();
    void setLocations(QList<OAIRequestLocation*>* locations);

    OAIRequestTimeFilterFastArrivalSearches* getArrivalSearches();
    void setArrivalSearches(OAIRequestTimeFilterFastArrivalSearches* arrival_searches);


    virtual bool isSet() override;

private:
    QList<OAIRequestLocation*>* locations;
    bool m_locations_isSet;

    OAIRequestTimeFilterFastArrivalSearches* arrival_searches;
    bool m_arrival_searches_isSet;

};

}

#endif /* OAIRequestTimeFilterFast_H_ */