package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseSupportedLocation;

/**
 * ResponseSupportedLocations
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-26T18:50:02.407Z[Etc/UTC]")
public class ResponseSupportedLocations   {
  @JsonProperty("locations")
  private List<ResponseSupportedLocation> locations = new ArrayList<ResponseSupportedLocation>();

  @JsonProperty("unsupported_locations")
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
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
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

