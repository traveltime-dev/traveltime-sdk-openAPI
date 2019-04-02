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
 * OAIResponseGeocodingProperties.h
 *
 * 
 */

#ifndef OAIResponseGeocodingProperties_H_
#define OAIResponseGeocodingProperties_H_

#include <QJsonObject>


#include "OAIResponseMapInfoFeatures.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIResponseGeocodingProperties: public OAIObject {
public:
    OAIResponseGeocodingProperties();
    OAIResponseGeocodingProperties(QString json);
    ~OAIResponseGeocodingProperties();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIResponseGeocodingProperties* fromJson(QString jsonString) override;

    QString* getName();
    void setName(QString* name);

    QString* getLabel();
    void setLabel(QString* label);

    double getScore();
    void setScore(double score);

    QString* getHouseNumber();
    void setHouseNumber(QString* house_number);

    QString* getStreet();
    void setStreet(QString* street);

    QString* getRegion();
    void setRegion(QString* region);

    QString* getRegionCode();
    void setRegionCode(QString* region_code);

    QString* getNeighbourhood();
    void setNeighbourhood(QString* neighbourhood);

    QString* getCounty();
    void setCounty(QString* county);

    QString* getMacroregion();
    void setMacroregion(QString* macroregion);

    QString* getCity();
    void setCity(QString* city);

    QString* getCountry();
    void setCountry(QString* country);

    QString* getCountryCode();
    void setCountryCode(QString* country_code);

    QString* getContinent();
    void setContinent(QString* continent);

    QString* getPostcode();
    void setPostcode(QString* postcode);

    OAIResponseMapInfoFeatures* getFeatures();
    void setFeatures(OAIResponseMapInfoFeatures* features);


    virtual bool isSet() override;

private:
    QString* name;
    bool m_name_isSet;

    QString* label;
    bool m_label_isSet;

    double score;
    bool m_score_isSet;

    QString* house_number;
    bool m_house_number_isSet;

    QString* street;
    bool m_street_isSet;

    QString* region;
    bool m_region_isSet;

    QString* region_code;
    bool m_region_code_isSet;

    QString* neighbourhood;
    bool m_neighbourhood_isSet;

    QString* county;
    bool m_county_isSet;

    QString* macroregion;
    bool m_macroregion_isSet;

    QString* city;
    bool m_city_isSet;

    QString* country;
    bool m_country_isSet;

    QString* country_code;
    bool m_country_code_isSet;

    QString* continent;
    bool m_continent_isSet;

    QString* postcode;
    bool m_postcode_isSet;

    OAIResponseMapInfoFeatures* features;
    bool m_features_isSet;

};

}

#endif /* OAIResponseGeocodingProperties_H_ */