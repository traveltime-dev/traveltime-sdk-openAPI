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

#include "OAIResponseGeocodingProperties.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIResponseGeocodingProperties::OAIResponseGeocodingProperties(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIResponseGeocodingProperties::OAIResponseGeocodingProperties() {
    this->initializeModel();
}

OAIResponseGeocodingProperties::~OAIResponseGeocodingProperties() {}

void OAIResponseGeocodingProperties::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_label_isSet = false;
    m_label_isValid = false;

    m_score_isSet = false;
    m_score_isValid = false;

    m_house_number_isSet = false;
    m_house_number_isValid = false;

    m_street_isSet = false;
    m_street_isValid = false;

    m_region_isSet = false;
    m_region_isValid = false;

    m_region_code_isSet = false;
    m_region_code_isValid = false;

    m_neighbourhood_isSet = false;
    m_neighbourhood_isValid = false;

    m_county_isSet = false;
    m_county_isValid = false;

    m_macroregion_isSet = false;
    m_macroregion_isValid = false;

    m_city_isSet = false;
    m_city_isValid = false;

    m_country_isSet = false;
    m_country_isValid = false;

    m_country_code_isSet = false;
    m_country_code_isValid = false;

    m_continent_isSet = false;
    m_continent_isValid = false;

    m_postcode_isSet = false;
    m_postcode_isValid = false;

    m_features_isSet = false;
    m_features_isValid = false;
}

void OAIResponseGeocodingProperties::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIResponseGeocodingProperties::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_label_isValid = ::OpenAPI::fromJsonValue(label, json[QString("label")]);
    m_label_isSet = !json[QString("label")].isNull() && m_label_isValid;

    m_score_isValid = ::OpenAPI::fromJsonValue(score, json[QString("score")]);
    m_score_isSet = !json[QString("score")].isNull() && m_score_isValid;

    m_house_number_isValid = ::OpenAPI::fromJsonValue(house_number, json[QString("house_number")]);
    m_house_number_isSet = !json[QString("house_number")].isNull() && m_house_number_isValid;

    m_street_isValid = ::OpenAPI::fromJsonValue(street, json[QString("street")]);
    m_street_isSet = !json[QString("street")].isNull() && m_street_isValid;

    m_region_isValid = ::OpenAPI::fromJsonValue(region, json[QString("region")]);
    m_region_isSet = !json[QString("region")].isNull() && m_region_isValid;

    m_region_code_isValid = ::OpenAPI::fromJsonValue(region_code, json[QString("region_code")]);
    m_region_code_isSet = !json[QString("region_code")].isNull() && m_region_code_isValid;

    m_neighbourhood_isValid = ::OpenAPI::fromJsonValue(neighbourhood, json[QString("neighbourhood")]);
    m_neighbourhood_isSet = !json[QString("neighbourhood")].isNull() && m_neighbourhood_isValid;

    m_county_isValid = ::OpenAPI::fromJsonValue(county, json[QString("county")]);
    m_county_isSet = !json[QString("county")].isNull() && m_county_isValid;

    m_macroregion_isValid = ::OpenAPI::fromJsonValue(macroregion, json[QString("macroregion")]);
    m_macroregion_isSet = !json[QString("macroregion")].isNull() && m_macroregion_isValid;

    m_city_isValid = ::OpenAPI::fromJsonValue(city, json[QString("city")]);
    m_city_isSet = !json[QString("city")].isNull() && m_city_isValid;

    m_country_isValid = ::OpenAPI::fromJsonValue(country, json[QString("country")]);
    m_country_isSet = !json[QString("country")].isNull() && m_country_isValid;

    m_country_code_isValid = ::OpenAPI::fromJsonValue(country_code, json[QString("country_code")]);
    m_country_code_isSet = !json[QString("country_code")].isNull() && m_country_code_isValid;

    m_continent_isValid = ::OpenAPI::fromJsonValue(continent, json[QString("continent")]);
    m_continent_isSet = !json[QString("continent")].isNull() && m_continent_isValid;

    m_postcode_isValid = ::OpenAPI::fromJsonValue(postcode, json[QString("postcode")]);
    m_postcode_isSet = !json[QString("postcode")].isNull() && m_postcode_isValid;

    m_features_isValid = ::OpenAPI::fromJsonValue(features, json[QString("features")]);
    m_features_isSet = !json[QString("features")].isNull() && m_features_isValid;
}

QString OAIResponseGeocodingProperties::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIResponseGeocodingProperties::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    if (m_label_isSet) {
        obj.insert(QString("label"), ::OpenAPI::toJsonValue(label));
    }
    if (m_score_isSet) {
        obj.insert(QString("score"), ::OpenAPI::toJsonValue(score));
    }
    if (m_house_number_isSet) {
        obj.insert(QString("house_number"), ::OpenAPI::toJsonValue(house_number));
    }
    if (m_street_isSet) {
        obj.insert(QString("street"), ::OpenAPI::toJsonValue(street));
    }
    if (m_region_isSet) {
        obj.insert(QString("region"), ::OpenAPI::toJsonValue(region));
    }
    if (m_region_code_isSet) {
        obj.insert(QString("region_code"), ::OpenAPI::toJsonValue(region_code));
    }
    if (m_neighbourhood_isSet) {
        obj.insert(QString("neighbourhood"), ::OpenAPI::toJsonValue(neighbourhood));
    }
    if (m_county_isSet) {
        obj.insert(QString("county"), ::OpenAPI::toJsonValue(county));
    }
    if (m_macroregion_isSet) {
        obj.insert(QString("macroregion"), ::OpenAPI::toJsonValue(macroregion));
    }
    if (m_city_isSet) {
        obj.insert(QString("city"), ::OpenAPI::toJsonValue(city));
    }
    if (m_country_isSet) {
        obj.insert(QString("country"), ::OpenAPI::toJsonValue(country));
    }
    if (m_country_code_isSet) {
        obj.insert(QString("country_code"), ::OpenAPI::toJsonValue(country_code));
    }
    if (m_continent_isSet) {
        obj.insert(QString("continent"), ::OpenAPI::toJsonValue(continent));
    }
    if (m_postcode_isSet) {
        obj.insert(QString("postcode"), ::OpenAPI::toJsonValue(postcode));
    }
    if (features.isSet()) {
        obj.insert(QString("features"), ::OpenAPI::toJsonValue(features));
    }
    return obj;
}

QString OAIResponseGeocodingProperties::getName() const {
    return name;
}
void OAIResponseGeocodingProperties::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIResponseGeocodingProperties::is_name_Set() const{
    return m_name_isSet;
}

bool OAIResponseGeocodingProperties::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIResponseGeocodingProperties::getLabel() const {
    return label;
}
void OAIResponseGeocodingProperties::setLabel(const QString &label) {
    this->label = label;
    this->m_label_isSet = true;
}

bool OAIResponseGeocodingProperties::is_label_Set() const{
    return m_label_isSet;
}

bool OAIResponseGeocodingProperties::is_label_Valid() const{
    return m_label_isValid;
}

double OAIResponseGeocodingProperties::getScore() const {
    return score;
}
void OAIResponseGeocodingProperties::setScore(const double &score) {
    this->score = score;
    this->m_score_isSet = true;
}

bool OAIResponseGeocodingProperties::is_score_Set() const{
    return m_score_isSet;
}

bool OAIResponseGeocodingProperties::is_score_Valid() const{
    return m_score_isValid;
}

QString OAIResponseGeocodingProperties::getHouseNumber() const {
    return house_number;
}
void OAIResponseGeocodingProperties::setHouseNumber(const QString &house_number) {
    this->house_number = house_number;
    this->m_house_number_isSet = true;
}

bool OAIResponseGeocodingProperties::is_house_number_Set() const{
    return m_house_number_isSet;
}

bool OAIResponseGeocodingProperties::is_house_number_Valid() const{
    return m_house_number_isValid;
}

QString OAIResponseGeocodingProperties::getStreet() const {
    return street;
}
void OAIResponseGeocodingProperties::setStreet(const QString &street) {
    this->street = street;
    this->m_street_isSet = true;
}

bool OAIResponseGeocodingProperties::is_street_Set() const{
    return m_street_isSet;
}

bool OAIResponseGeocodingProperties::is_street_Valid() const{
    return m_street_isValid;
}

QString OAIResponseGeocodingProperties::getRegion() const {
    return region;
}
void OAIResponseGeocodingProperties::setRegion(const QString &region) {
    this->region = region;
    this->m_region_isSet = true;
}

bool OAIResponseGeocodingProperties::is_region_Set() const{
    return m_region_isSet;
}

bool OAIResponseGeocodingProperties::is_region_Valid() const{
    return m_region_isValid;
}

QString OAIResponseGeocodingProperties::getRegionCode() const {
    return region_code;
}
void OAIResponseGeocodingProperties::setRegionCode(const QString &region_code) {
    this->region_code = region_code;
    this->m_region_code_isSet = true;
}

bool OAIResponseGeocodingProperties::is_region_code_Set() const{
    return m_region_code_isSet;
}

bool OAIResponseGeocodingProperties::is_region_code_Valid() const{
    return m_region_code_isValid;
}

QString OAIResponseGeocodingProperties::getNeighbourhood() const {
    return neighbourhood;
}
void OAIResponseGeocodingProperties::setNeighbourhood(const QString &neighbourhood) {
    this->neighbourhood = neighbourhood;
    this->m_neighbourhood_isSet = true;
}

bool OAIResponseGeocodingProperties::is_neighbourhood_Set() const{
    return m_neighbourhood_isSet;
}

bool OAIResponseGeocodingProperties::is_neighbourhood_Valid() const{
    return m_neighbourhood_isValid;
}

QString OAIResponseGeocodingProperties::getCounty() const {
    return county;
}
void OAIResponseGeocodingProperties::setCounty(const QString &county) {
    this->county = county;
    this->m_county_isSet = true;
}

bool OAIResponseGeocodingProperties::is_county_Set() const{
    return m_county_isSet;
}

bool OAIResponseGeocodingProperties::is_county_Valid() const{
    return m_county_isValid;
}

QString OAIResponseGeocodingProperties::getMacroregion() const {
    return macroregion;
}
void OAIResponseGeocodingProperties::setMacroregion(const QString &macroregion) {
    this->macroregion = macroregion;
    this->m_macroregion_isSet = true;
}

bool OAIResponseGeocodingProperties::is_macroregion_Set() const{
    return m_macroregion_isSet;
}

bool OAIResponseGeocodingProperties::is_macroregion_Valid() const{
    return m_macroregion_isValid;
}

QString OAIResponseGeocodingProperties::getCity() const {
    return city;
}
void OAIResponseGeocodingProperties::setCity(const QString &city) {
    this->city = city;
    this->m_city_isSet = true;
}

bool OAIResponseGeocodingProperties::is_city_Set() const{
    return m_city_isSet;
}

bool OAIResponseGeocodingProperties::is_city_Valid() const{
    return m_city_isValid;
}

QString OAIResponseGeocodingProperties::getCountry() const {
    return country;
}
void OAIResponseGeocodingProperties::setCountry(const QString &country) {
    this->country = country;
    this->m_country_isSet = true;
}

bool OAIResponseGeocodingProperties::is_country_Set() const{
    return m_country_isSet;
}

bool OAIResponseGeocodingProperties::is_country_Valid() const{
    return m_country_isValid;
}

QString OAIResponseGeocodingProperties::getCountryCode() const {
    return country_code;
}
void OAIResponseGeocodingProperties::setCountryCode(const QString &country_code) {
    this->country_code = country_code;
    this->m_country_code_isSet = true;
}

bool OAIResponseGeocodingProperties::is_country_code_Set() const{
    return m_country_code_isSet;
}

bool OAIResponseGeocodingProperties::is_country_code_Valid() const{
    return m_country_code_isValid;
}

QString OAIResponseGeocodingProperties::getContinent() const {
    return continent;
}
void OAIResponseGeocodingProperties::setContinent(const QString &continent) {
    this->continent = continent;
    this->m_continent_isSet = true;
}

bool OAIResponseGeocodingProperties::is_continent_Set() const{
    return m_continent_isSet;
}

bool OAIResponseGeocodingProperties::is_continent_Valid() const{
    return m_continent_isValid;
}

QString OAIResponseGeocodingProperties::getPostcode() const {
    return postcode;
}
void OAIResponseGeocodingProperties::setPostcode(const QString &postcode) {
    this->postcode = postcode;
    this->m_postcode_isSet = true;
}

bool OAIResponseGeocodingProperties::is_postcode_Set() const{
    return m_postcode_isSet;
}

bool OAIResponseGeocodingProperties::is_postcode_Valid() const{
    return m_postcode_isValid;
}

OAIResponseMapInfoFeatures OAIResponseGeocodingProperties::getFeatures() const {
    return features;
}
void OAIResponseGeocodingProperties::setFeatures(const OAIResponseMapInfoFeatures &features) {
    this->features = features;
    this->m_features_isSet = true;
}

bool OAIResponseGeocodingProperties::is_features_Set() const{
    return m_features_isSet;
}

bool OAIResponseGeocodingProperties::is_features_Valid() const{
    return m_features_isValid;
}

bool OAIResponseGeocodingProperties::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_label_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_house_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_street_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_region_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_region_code_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_neighbourhood_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_county_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_macroregion_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_city_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_country_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_country_code_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_continent_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_postcode_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (features.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIResponseGeocodingProperties::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_name_isValid && m_label_isValid && true;
}

} // namespace OpenAPI