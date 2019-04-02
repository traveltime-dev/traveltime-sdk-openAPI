/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.ResponseTimeFilterLocation;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseTimeFilterResult {
  
  @SerializedName("search_id")
  private String searchId = null;
  @SerializedName("locations")
  private List<ResponseTimeFilterLocation> locations = null;
  @SerializedName("unreachable")
  private List<String> unreachable = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
  }

  /**
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
    ResponseTimeFilterResult responseTimeFilterResult = (ResponseTimeFilterResult) o;
    return (this.searchId == null ? responseTimeFilterResult.searchId == null : this.searchId.equals(responseTimeFilterResult.searchId)) &&
        (this.locations == null ? responseTimeFilterResult.locations == null : this.locations.equals(responseTimeFilterResult.locations)) &&
        (this.unreachable == null ? responseTimeFilterResult.unreachable == null : this.unreachable.equals(responseTimeFilterResult.unreachable));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.searchId == null ? 0: this.searchId.hashCode());
    result = 31 * result + (this.locations == null ? 0: this.locations.hashCode());
    result = 31 * result + (this.unreachable == null ? 0: this.unreachable.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterResult {\n");
    
    sb.append("  searchId: ").append(searchId).append("\n");
    sb.append("  locations: ").append(locations).append("\n");
    sb.append("  unreachable: ").append(unreachable).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}