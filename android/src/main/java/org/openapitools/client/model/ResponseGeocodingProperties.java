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

package org.openapitools.client.model;

import org.openapitools.client.model.ResponseMapInfoFeatures;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseGeocodingProperties {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("label")
  private String label = null;
  @SerializedName("score")
  private Double score = null;
  @SerializedName("house_number")
  private String houseNumber = null;
  @SerializedName("street")
  private String street = null;
  @SerializedName("region")
  private String region = null;
  @SerializedName("region_code")
  private String regionCode = null;
  @SerializedName("neighbourhood")
  private String neighbourhood = null;
  @SerializedName("county")
  private String county = null;
  @SerializedName("macroregion")
  private String macroregion = null;
  @SerializedName("city")
  private String city = null;
  @SerializedName("country")
  private String country = null;
  @SerializedName("country_code")
  private String countryCode = null;
  @SerializedName("continent")
  private String continent = null;
  @SerializedName("postcode")
  private String postcode = null;
  @SerializedName("features")
  private ResponseMapInfoFeatures features = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getScore() {
    return score;
  }
  public void setScore(Double score) {
    this.score = score;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getHouseNumber() {
    return houseNumber;
  }
  public void setHouseNumber(String houseNumber) {
    this.houseNumber = houseNumber;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getStreet() {
    return street;
  }
  public void setStreet(String street) {
    this.street = street;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getRegion() {
    return region;
  }
  public void setRegion(String region) {
    this.region = region;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getRegionCode() {
    return regionCode;
  }
  public void setRegionCode(String regionCode) {
    this.regionCode = regionCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getNeighbourhood() {
    return neighbourhood;
  }
  public void setNeighbourhood(String neighbourhood) {
    this.neighbourhood = neighbourhood;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCounty() {
    return county;
  }
  public void setCounty(String county) {
    this.county = county;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMacroregion() {
    return macroregion;
  }
  public void setMacroregion(String macroregion) {
    this.macroregion = macroregion;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCountryCode() {
    return countryCode;
  }
  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getContinent() {
    return continent;
  }
  public void setContinent(String continent) {
    this.continent = continent;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPostcode() {
    return postcode;
  }
  public void setPostcode(String postcode) {
    this.postcode = postcode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ResponseMapInfoFeatures getFeatures() {
    return features;
  }
  public void setFeatures(ResponseMapInfoFeatures features) {
    this.features = features;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseGeocodingProperties responseGeocodingProperties = (ResponseGeocodingProperties) o;
    return (this.name == null ? responseGeocodingProperties.name == null : this.name.equals(responseGeocodingProperties.name)) &&
        (this.label == null ? responseGeocodingProperties.label == null : this.label.equals(responseGeocodingProperties.label)) &&
        (this.score == null ? responseGeocodingProperties.score == null : this.score.equals(responseGeocodingProperties.score)) &&
        (this.houseNumber == null ? responseGeocodingProperties.houseNumber == null : this.houseNumber.equals(responseGeocodingProperties.houseNumber)) &&
        (this.street == null ? responseGeocodingProperties.street == null : this.street.equals(responseGeocodingProperties.street)) &&
        (this.region == null ? responseGeocodingProperties.region == null : this.region.equals(responseGeocodingProperties.region)) &&
        (this.regionCode == null ? responseGeocodingProperties.regionCode == null : this.regionCode.equals(responseGeocodingProperties.regionCode)) &&
        (this.neighbourhood == null ? responseGeocodingProperties.neighbourhood == null : this.neighbourhood.equals(responseGeocodingProperties.neighbourhood)) &&
        (this.county == null ? responseGeocodingProperties.county == null : this.county.equals(responseGeocodingProperties.county)) &&
        (this.macroregion == null ? responseGeocodingProperties.macroregion == null : this.macroregion.equals(responseGeocodingProperties.macroregion)) &&
        (this.city == null ? responseGeocodingProperties.city == null : this.city.equals(responseGeocodingProperties.city)) &&
        (this.country == null ? responseGeocodingProperties.country == null : this.country.equals(responseGeocodingProperties.country)) &&
        (this.countryCode == null ? responseGeocodingProperties.countryCode == null : this.countryCode.equals(responseGeocodingProperties.countryCode)) &&
        (this.continent == null ? responseGeocodingProperties.continent == null : this.continent.equals(responseGeocodingProperties.continent)) &&
        (this.postcode == null ? responseGeocodingProperties.postcode == null : this.postcode.equals(responseGeocodingProperties.postcode)) &&
        (this.features == null ? responseGeocodingProperties.features == null : this.features.equals(responseGeocodingProperties.features));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.label == null ? 0: this.label.hashCode());
    result = 31 * result + (this.score == null ? 0: this.score.hashCode());
    result = 31 * result + (this.houseNumber == null ? 0: this.houseNumber.hashCode());
    result = 31 * result + (this.street == null ? 0: this.street.hashCode());
    result = 31 * result + (this.region == null ? 0: this.region.hashCode());
    result = 31 * result + (this.regionCode == null ? 0: this.regionCode.hashCode());
    result = 31 * result + (this.neighbourhood == null ? 0: this.neighbourhood.hashCode());
    result = 31 * result + (this.county == null ? 0: this.county.hashCode());
    result = 31 * result + (this.macroregion == null ? 0: this.macroregion.hashCode());
    result = 31 * result + (this.city == null ? 0: this.city.hashCode());
    result = 31 * result + (this.country == null ? 0: this.country.hashCode());
    result = 31 * result + (this.countryCode == null ? 0: this.countryCode.hashCode());
    result = 31 * result + (this.continent == null ? 0: this.continent.hashCode());
    result = 31 * result + (this.postcode == null ? 0: this.postcode.hashCode());
    result = 31 * result + (this.features == null ? 0: this.features.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocodingProperties {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  score: ").append(score).append("\n");
    sb.append("  houseNumber: ").append(houseNumber).append("\n");
    sb.append("  street: ").append(street).append("\n");
    sb.append("  region: ").append(region).append("\n");
    sb.append("  regionCode: ").append(regionCode).append("\n");
    sb.append("  neighbourhood: ").append(neighbourhood).append("\n");
    sb.append("  county: ").append(county).append("\n");
    sb.append("  macroregion: ").append(macroregion).append("\n");
    sb.append("  city: ").append(city).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("  countryCode: ").append(countryCode).append("\n");
    sb.append("  continent: ").append(continent).append("\n");
    sb.append("  postcode: ").append(postcode).append("\n");
    sb.append("  features: ").append(features).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
