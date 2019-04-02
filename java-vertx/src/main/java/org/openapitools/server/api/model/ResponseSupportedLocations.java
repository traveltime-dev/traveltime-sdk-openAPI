package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseSupportedLocation;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseSupportedLocations   {
  
  private List<ResponseSupportedLocation> locations = new ArrayList<>();
  private List<String> unsupportedLocations = new ArrayList<>();

  public ResponseSupportedLocations () {

  }

  public ResponseSupportedLocations (List<ResponseSupportedLocation> locations, List<String> unsupportedLocations) {
    this.locations = locations;
    this.unsupportedLocations = unsupportedLocations;
  }

    
  @JsonProperty("locations")
  public List<ResponseSupportedLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
  }

    
  @JsonProperty("unsupported_locations")
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
    return Objects.equals(locations, responseSupportedLocations.locations) &&
        Objects.equals(unsupportedLocations, responseSupportedLocations.unsupportedLocations);
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
