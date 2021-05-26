package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseRoutesLocation;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseRoutesResult
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class ResponseRoutesResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("locations")
  
  private List<ResponseRoutesLocation> locations = new ArrayList<>();

  @JsonProperty("unreachable")
  
  private List<String> unreachable = new ArrayList<>();

  public ResponseRoutesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  @ApiModelProperty(required = true, value = "")
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
    this.locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @ApiModelProperty(required = true, value = "")
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
    this.unreachable.add(unreachableItem);
    return this;
  }

   /**
   * Get unreachable
   * @return unreachable
  **/
  @ApiModelProperty(required = true, value = "")
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
    return Objects.equals(this.searchId, responseRoutesResult.searchId) &&
        Objects.equals(this.locations, responseRoutesResult.locations) &&
        Objects.equals(this.unreachable, responseRoutesResult.unreachable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, locations, unreachable);
  }

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

