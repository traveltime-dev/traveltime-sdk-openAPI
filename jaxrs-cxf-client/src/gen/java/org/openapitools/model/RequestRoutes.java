package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestRoutesArrivalSearch;
import org.openapitools.model.RequestRoutesDepartureSearch;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestRoutes  {
  
  @ApiModelProperty(required = true, value = "")
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @ApiModelProperty(value = "")
  private List<RequestRoutesDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  private List<RequestRoutesArrivalSearch> arrivalSearches = null;
 /**
   * Get locations
   * @return locations
  **/
  @JsonProperty("locations")
  public List<RequestLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  public RequestRoutes locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestRoutes addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
   * Get departureSearches
   * @return departureSearches
  **/
  @JsonProperty("departure_searches")
  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestRoutes departureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestRoutes addDepartureSearchesItem(RequestRoutesDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @JsonProperty("arrival_searches")
  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestRoutes arrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestRoutes addArrivalSearchesItem(RequestRoutesArrivalSearch arrivalSearchesItem) {
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutes {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

