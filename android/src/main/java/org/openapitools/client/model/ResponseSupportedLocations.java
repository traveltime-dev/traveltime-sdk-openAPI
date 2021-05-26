/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.ResponseSupportedLocation;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseSupportedLocations {
  
  @SerializedName("locations")
  private List<ResponseSupportedLocation> locations = null;
  @SerializedName("unsupported_locations")
  private List<String> unsupportedLocations = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseSupportedLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
  }

  /**
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
    return (this.locations == null ? responseSupportedLocations.locations == null : this.locations.equals(responseSupportedLocations.locations)) &&
        (this.unsupportedLocations == null ? responseSupportedLocations.unsupportedLocations == null : this.unsupportedLocations.equals(responseSupportedLocations.unsupportedLocations));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.locations == null ? 0: this.locations.hashCode());
    result = 31 * result + (this.unsupportedLocations == null ? 0: this.unsupportedLocations.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseSupportedLocations {\n");
    
    sb.append("  locations: ").append(locations).append("\n");
    sb.append("  unsupportedLocations: ").append(unsupportedLocations).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
