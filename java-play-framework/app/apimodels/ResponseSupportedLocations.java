package apimodels;

import apimodels.ResponseSupportedLocation;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseSupportedLocations
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseSupportedLocations   {
  @JsonProperty("locations")
  @NotNull
@Valid

  private List<ResponseSupportedLocation> locations = new ArrayList<>();

  @JsonProperty("unsupported_locations")
  @NotNull

  private List<String> unsupportedLocations = new ArrayList<>();

  public ResponseSupportedLocations locations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseSupportedLocations addLocationsItem(ResponseSupportedLocation locationsItem) {
    locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
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
    unsupportedLocations.add(unsupportedLocationsItem);
    return this;
  }

   /**
   * Get unsupportedLocations
   * @return unsupportedLocations
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

