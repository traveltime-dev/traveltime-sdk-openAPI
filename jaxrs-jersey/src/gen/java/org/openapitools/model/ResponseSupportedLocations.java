/*
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


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseSupportedLocation;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ResponseSupportedLocations
 */
@JsonPropertyOrder({
  ResponseSupportedLocations.JSON_PROPERTY_LOCATIONS,
  ResponseSupportedLocations.JSON_PROPERTY_UNSUPPORTED_LOCATIONS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-11T08:38:13.963Z[Etc/UTC]")
public class ResponseSupportedLocations   {
  public static final String JSON_PROPERTY_LOCATIONS = "locations";
  @JsonProperty(JSON_PROPERTY_LOCATIONS)
  private List<ResponseSupportedLocation> locations = new ArrayList<ResponseSupportedLocation>();

  public static final String JSON_PROPERTY_UNSUPPORTED_LOCATIONS = "unsupported_locations";
  @JsonProperty(JSON_PROPERTY_UNSUPPORTED_LOCATIONS)
  private List<String> unsupportedLocations = new ArrayList<String>();

  public ResponseSupportedLocations locations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseSupportedLocations addLocationsItem(ResponseSupportedLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

  /**
   * Get locations
   * @return locations
   **/
  @JsonProperty(value = "locations")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public List<ResponseSupportedLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
  }

  public ResponseSupportedLocations unsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
    return this;
  }

  public ResponseSupportedLocations addUnsupportedLocationsItem(String unsupportedLocationsItem) {
    this.unsupportedLocations.add(unsupportedLocationsItem);
    return this;
  }

  /**
   * Get unsupportedLocations
   * @return unsupportedLocations
   **/
  @JsonProperty(value = "unsupported_locations")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public List<String> getUnsupportedLocations() {
    return unsupportedLocations;
  }

  public void setUnsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseSupportedLocations responseSupportedLocations = (ResponseSupportedLocations) o;
    return Objects.equals(this.locations, responseSupportedLocations.locations) &&
        Objects.equals(this.unsupportedLocations, responseSupportedLocations.unsupportedLocations);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, unsupportedLocations);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseSupportedLocations {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    unsupportedLocations: ").append(toIndentedString(unsupportedLocations)).append("\n");
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

