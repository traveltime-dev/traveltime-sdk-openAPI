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
import org.openapitools.client.model.RequestLocation;
import org.openapitools.client.model.RequestRoutesArrivalSearch;
import org.openapitools.client.model.RequestRoutesDepartureSearch;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RequestRoutes {
  
  @SerializedName("locations")
  private List<RequestLocation> locations = null;
  @SerializedName("departure_searches")
  private List<RequestRoutesDepartureSearch> departureSearches = null;
  @SerializedName("arrival_searches")
  private List<RequestRoutesArrivalSearch> arrivalSearches = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRoutes requestRoutes = (RequestRoutes) o;
    return (this.locations == null ? requestRoutes.locations == null : this.locations.equals(requestRoutes.locations)) &&
        (this.departureSearches == null ? requestRoutes.departureSearches == null : this.departureSearches.equals(requestRoutes.departureSearches)) &&
        (this.arrivalSearches == null ? requestRoutes.arrivalSearches == null : this.arrivalSearches.equals(requestRoutes.arrivalSearches));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.locations == null ? 0: this.locations.hashCode());
    result = 31 * result + (this.departureSearches == null ? 0: this.departureSearches.hashCode());
    result = 31 * result + (this.arrivalSearches == null ? 0: this.arrivalSearches.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutes {\n");
    
    sb.append("  locations: ").append(locations).append("\n");
    sb.append("  departureSearches: ").append(departureSearches).append("\n");
    sb.append("  arrivalSearches: ").append(arrivalSearches).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
