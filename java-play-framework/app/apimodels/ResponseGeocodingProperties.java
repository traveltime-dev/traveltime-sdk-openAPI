package apimodels;

import apimodels.ResponseMapInfoFeatures;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseGeocodingProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseGeocodingProperties   {
  @JsonProperty("name")
  @NotNull

  private String name;

  @JsonProperty("label")
  @NotNull

  private String label;

  @JsonProperty("score")
  
  private Double score;

  @JsonProperty("house_number")
  
  private String houseNumber;

  @JsonProperty("street")
  
  private String street;

  @JsonProperty("region")
  
  private String region;

  @JsonProperty("region_code")
  
  private String regionCode;

  @JsonProperty("neighbourhood")
  
  private String neighbourhood;

  @JsonProperty("county")
  
  private String county;

  @JsonProperty("macroregion")
  
  private String macroregion;

  @JsonProperty("city")
  
  private String city;

  @JsonProperty("country")
  
  private String country;

  @JsonProperty("country_code")
  
  private String countryCode;

  @JsonProperty("continent")
  
  private String continent;

  @JsonProperty("postcode")
  
  private String postcode;

  @JsonProperty("features")
  @Valid

  private ResponseMapInfoFeatures features;

  public ResponseGeocodingProperties name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public ResponseGeocodingProperties label(String label) {
    this.label = label;
    return this;
  }

   /**
   * Get label
   * @return label
  **/
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public ResponseGeocodingProperties score(Double score) {
    this.score = score;
    return this;
  }

   /**
   * Get score
   * @return score
  **/
  public Double getScore() {
    return score;
  }

  public void setScore(Double score) {
    this.score = score;
  }

  public ResponseGeocodingProperties houseNumber(String houseNumber) {
    this.houseNumber = houseNumber;
    return this;
  }

   /**
   * Get houseNumber
   * @return houseNumber
  **/
  public String getHouseNumber() {
    return houseNumber;
  }

  public void setHouseNumber(String houseNumber) {
    this.houseNumber = houseNumber;
  }

  public ResponseGeocodingProperties street(String street) {
    this.street = street;
    return this;
  }

   /**
   * Get street
   * @return street
  **/
  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }

  public ResponseGeocodingProperties region(String region) {
    this.region = region;
    return this;
  }

   /**
   * Get region
   * @return region
  **/
  public String getRegion() {
    return region;
  }

  public void setRegion(String region) {
    this.region = region;
  }

  public ResponseGeocodingProperties regionCode(String regionCode) {
    this.regionCode = regionCode;
    return this;
  }

   /**
   * Get regionCode
   * @return regionCode
  **/
  public String getRegionCode() {
    return regionCode;
  }

  public void setRegionCode(String regionCode) {
    this.regionCode = regionCode;
  }

  public ResponseGeocodingProperties neighbourhood(String neighbourhood) {
    this.neighbourhood = neighbourhood;
    return this;
  }

   /**
   * Get neighbourhood
   * @return neighbourhood
  **/
  public String getNeighbourhood() {
    return neighbourhood;
  }

  public void setNeighbourhood(String neighbourhood) {
    this.neighbourhood = neighbourhood;
  }

  public ResponseGeocodingProperties county(String county) {
    this.county = county;
    return this;
  }

   /**
   * Get county
   * @return county
  **/
  public String getCounty() {
    return county;
  }

  public void setCounty(String county) {
    this.county = county;
  }

  public ResponseGeocodingProperties macroregion(String macroregion) {
    this.macroregion = macroregion;
    return this;
  }

   /**
   * Get macroregion
   * @return macroregion
  **/
  public String getMacroregion() {
    return macroregion;
  }

  public void setMacroregion(String macroregion) {
    this.macroregion = macroregion;
  }

  public ResponseGeocodingProperties city(String city) {
    this.city = city;
    return this;
  }

   /**
   * Get city
   * @return city
  **/
  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public ResponseGeocodingProperties country(String country) {
    this.country = country;
    return this;
  }

   /**
   * Get country
   * @return country
  **/
  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public ResponseGeocodingProperties countryCode(String countryCode) {
    this.countryCode = countryCode;
    return this;
  }

   /**
   * Get countryCode
   * @return countryCode
  **/
  public String getCountryCode() {
    return countryCode;
  }

  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  public ResponseGeocodingProperties continent(String continent) {
    this.continent = continent;
    return this;
  }

   /**
   * Get continent
   * @return continent
  **/
  public String getContinent() {
    return continent;
  }

  public void setContinent(String continent) {
    this.continent = continent;
  }

  public ResponseGeocodingProperties postcode(String postcode) {
    this.postcode = postcode;
    return this;
  }

   /**
   * Get postcode
   * @return postcode
  **/
  public String getPostcode() {
    return postcode;
  }

  public void setPostcode(String postcode) {
    this.postcode = postcode;
  }

  public ResponseGeocodingProperties features(ResponseMapInfoFeatures features) {
    this.features = features;
    return this;
  }

   /**
   * Get features
   * @return features
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

