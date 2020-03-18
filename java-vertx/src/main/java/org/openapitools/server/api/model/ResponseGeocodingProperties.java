package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.ResponseMapInfoFeatures;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseGeocodingProperties   {
  
  private String name;
  private String label;
  private Double score;
  private String houseNumber;
  private String street;
  private String region;
  private String regionCode;
  private String neighbourhood;
  private String county;
  private String macroregion;
  private String city;
  private String country;
  private String countryCode;
  private String continent;
  private String postcode;
  private ResponseMapInfoFeatures features;

  public ResponseGeocodingProperties () {

  }

  public ResponseGeocodingProperties (String name, String label, Double score, String houseNumber, String street, String region, String regionCode, String neighbourhood, String county, String macroregion, String city, String country, String countryCode, String continent, String postcode, ResponseMapInfoFeatures features) {
    this.name = name;
    this.label = label;
    this.score = score;
    this.houseNumber = houseNumber;
    this.street = street;
    this.region = region;
    this.regionCode = regionCode;
    this.neighbourhood = neighbourhood;
    this.county = county;
    this.macroregion = macroregion;
    this.city = city;
    this.country = country;
    this.countryCode = countryCode;
    this.continent = continent;
    this.postcode = postcode;
    this.features = features;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("label")
  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

    
  @JsonProperty("score")
  public Double getScore() {
    return score;
  }
  public void setScore(Double score) {
    this.score = score;
  }

    
  @JsonProperty("house_number")
  public String getHouseNumber() {
    return houseNumber;
  }
  public void setHouseNumber(String houseNumber) {
    this.houseNumber = houseNumber;
  }

    
  @JsonProperty("street")
  public String getStreet() {
    return street;
  }
  public void setStreet(String street) {
    this.street = street;
  }

    
  @JsonProperty("region")
  public String getRegion() {
    return region;
  }
  public void setRegion(String region) {
    this.region = region;
  }

    
  @JsonProperty("region_code")
  public String getRegionCode() {
    return regionCode;
  }
  public void setRegionCode(String regionCode) {
    this.regionCode = regionCode;
  }

    
  @JsonProperty("neighbourhood")
  public String getNeighbourhood() {
    return neighbourhood;
  }
  public void setNeighbourhood(String neighbourhood) {
    this.neighbourhood = neighbourhood;
  }

    
  @JsonProperty("county")
  public String getCounty() {
    return county;
  }
  public void setCounty(String county) {
    this.county = county;
  }

    
  @JsonProperty("macroregion")
  public String getMacroregion() {
    return macroregion;
  }
  public void setMacroregion(String macroregion) {
    this.macroregion = macroregion;
  }

    
  @JsonProperty("city")
  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

    
  @JsonProperty("country")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }

    
  @JsonProperty("country_code")
  public String getCountryCode() {
    return countryCode;
  }
  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

    
  @JsonProperty("continent")
  public String getContinent() {
    return continent;
  }
  public void setContinent(String continent) {
    this.continent = continent;
  }

    
  @JsonProperty("postcode")
  public String getPostcode() {
    return postcode;
  }
  public void setPostcode(String postcode) {
    this.postcode = postcode;
  }

    
  @JsonProperty("features")
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
    return Objects.equals(name, responseGeocodingProperties.name) &&
        Objects.equals(label, responseGeocodingProperties.label) &&
        Objects.equals(score, responseGeocodingProperties.score) &&
        Objects.equals(houseNumber, responseGeocodingProperties.houseNumber) &&
        Objects.equals(street, responseGeocodingProperties.street) &&
        Objects.equals(region, responseGeocodingProperties.region) &&
        Objects.equals(regionCode, responseGeocodingProperties.regionCode) &&
        Objects.equals(neighbourhood, responseGeocodingProperties.neighbourhood) &&
        Objects.equals(county, responseGeocodingProperties.county) &&
        Objects.equals(macroregion, responseGeocodingProperties.macroregion) &&
        Objects.equals(city, responseGeocodingProperties.city) &&
        Objects.equals(country, responseGeocodingProperties.country) &&
        Objects.equals(countryCode, responseGeocodingProperties.countryCode) &&
        Objects.equals(continent, responseGeocodingProperties.continent) &&
        Objects.equals(postcode, responseGeocodingProperties.postcode) &&
        Objects.equals(features, responseGeocodingProperties.features);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, score, houseNumber, street, region, regionCode, neighbourhood, county, macroregion, city, country, countryCode, continent, postcode, features);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocodingProperties {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    houseNumber: ").append(toIndentedString(houseNumber)).append("\n");
    sb.append("    street: ").append(toIndentedString(street)).append("\n");
    sb.append("    region: ").append(toIndentedString(region)).append("\n");
    sb.append("    regionCode: ").append(toIndentedString(regionCode)).append("\n");
    sb.append("    neighbourhood: ").append(toIndentedString(neighbourhood)).append("\n");
    sb.append("    county: ").append(toIndentedString(county)).append("\n");
    sb.append("    macroregion: ").append(toIndentedString(macroregion)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    countryCode: ").append(toIndentedString(countryCode)).append("\n");
    sb.append("    continent: ").append(toIndentedString(continent)).append("\n");
    sb.append("    postcode: ").append(toIndentedString(postcode)).append("\n");
    sb.append("    features: ").append(toIndentedString(features)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
