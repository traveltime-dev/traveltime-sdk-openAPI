/**
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

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.RequestLocation;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RequestSupportedLocations {
  
  @SerializedName("locations")
  private List<RequestLocation> locations = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestSupportedLocations requestSupportedLocations = (RequestSupportedLocations) o;
    return (this.locations == null ? requestSupportedLocations.locations == null : this.locations.equals(requestSupportedLocations.locations));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.locations == null ? 0: this.locations.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestSupportedLocations {\n");
    
    sb.append("  locations: ").append(locations).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
