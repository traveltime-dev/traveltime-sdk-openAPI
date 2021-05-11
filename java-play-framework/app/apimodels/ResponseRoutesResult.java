package apimodels;

import apimodels.ResponseRoutesLocation;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseRoutesResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseRoutesResult   {
  @JsonProperty("search_id")
  @NotNull

  private String searchId;

  @JsonProperty("locations")
  @NotNull
@Valid

  private List<ResponseRoutesLocation> locations = new ArrayList<>();

  @JsonProperty("unreachable")
  @NotNull

  private List<String> unreachable = new ArrayList<>();

  public ResponseRoutesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseRoutesResult locations(List<ResponseRoutesLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseRoutesResult addLocationsItem(ResponseRoutesLocation locationsItem) {
    locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  public List<ResponseRoutesLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<ResponseRoutesLocation> locations) {
    this.locations = locations;
  }

  public ResponseRoutesResult unreachable(List<String> unreachable) {
    this.unreachable = unreachable;
    return this;
  }

  public ResponseRoutesResult addUnreachableItem(String unreachableItem) {
    unreachable.add(unreachableItem);
    return this;
  }

   /**
   * Get unreachable
   * @return unreachable
  **/
  public List<String> getUnreachable() {
    return unreachable;
  }

  public void setUnreachable(List<String> unreachable) {
    this.unreachable = unreachable;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoutesResult responseRoutesResult = (ResponseRoutesResult) o;
    return Objects.equals(searchId, responseRoutesResult.searchId) &&
        Objects.equals(locations, responseRoutesResult.locations) &&
        Objects.equals(unreachable, responseRoutesResult.unreachable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, locations, unreachable);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    unreachable: ").append(toIndentedString(unreachable)).append("\n");
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

