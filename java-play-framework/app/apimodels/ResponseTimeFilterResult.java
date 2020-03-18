package apimodels;

import apimodels.ResponseTimeFilterLocation;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T07:53:58.336Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("locations")
  private List<ResponseTimeFilterLocation> locations = new ArrayList<>();

  @JsonProperty("unreachable")
  private List<String> unreachable = new ArrayList<>();

  public ResponseTimeFilterResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterResult locations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseTimeFilterResult addLocationsItem(ResponseTimeFilterLocation locationsItem) {
    locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @NotNull
@Valid
  public List<ResponseTimeFilterLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
  }

  public ResponseTimeFilterResult unreachable(List<String> unreachable) {
    this.unreachable = unreachable;
    return this;
  }

  public ResponseTimeFilterResult addUnreachableItem(String unreachableItem) {
    unreachable.add(unreachableItem);
    return this;
  }

   /**
   * Get unreachable
   * @return unreachable
  **/
  @NotNull
  public List<String> getUnreachable() {
    return unreachable;
  }

  public void setUnreachable(List<String> unreachable) {
    this.unreachable = unreachable;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterResult responseTimeFilterResult = (ResponseTimeFilterResult) o;
    return Objects.equals(searchId, responseTimeFilterResult.searchId) &&
        Objects.equals(locations, responseTimeFilterResult.locations) &&
        Objects.equals(unreachable, responseTimeFilterResult.unreachable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, locations, unreachable);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterResult {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

