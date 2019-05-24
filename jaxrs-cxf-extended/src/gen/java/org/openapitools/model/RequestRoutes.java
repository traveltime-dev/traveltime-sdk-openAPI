package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestRoutesArrivalSearch;
import org.openapitools.model.RequestRoutesDepartureSearch;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestRoutes  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestRoutesDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestRoutesArrivalSearch> arrivalSearches = null;
 /**
  * Get locations
  * @return locations
  */
  @JsonProperty("locations")
  @NotNull
 @Size(min=1)  public List<RequestLocation> getLocations() {
    return locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public RequestRoutes locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  /**
   * Adds a new item to the <code>locations</code> list.
   */
  public RequestRoutes addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
  * Get departureSearches
  * @return departureSearches
  */
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  /**
   * Sets the <code>departureSearches</code> property.
   */
  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   * Sets the <code>departureSearches</code> property.
   */
  public RequestRoutes departureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  /**
   * Adds a new item to the <code>departureSearches</code> list.
   */
  public RequestRoutes addDepartureSearchesItem(RequestRoutesDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
  * Get arrivalSearches
  * @return arrivalSearches
  */
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public RequestRoutes arrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  /**
   * Adds a new item to the <code>arrivalSearches</code> list.
   */
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

