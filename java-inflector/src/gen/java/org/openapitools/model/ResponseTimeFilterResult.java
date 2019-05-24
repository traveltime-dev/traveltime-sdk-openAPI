package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterLocation;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2019-05-24T09:06:45.077Z[Etc/UTC]")
public class ResponseTimeFilterResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("locations")
  private List<ResponseTimeFilterLocation> locations = new ArrayList<ResponseTimeFilterLocation>();

  @JsonProperty("unreachable")
  private List<String> unreachable = new ArrayList<String>();

  /**
   **/
  public ResponseTimeFilterResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   **/
  public ResponseTimeFilterResult locations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("locations")
  public List<ResponseTimeFilterLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
  }

  /**
   **/
  public ResponseTimeFilterResult unreachable(List<String> unreachable) {
    this.unreachable = unreachable;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("unreachable")
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

